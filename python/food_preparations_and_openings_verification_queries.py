import shared, connection

queries = [
    "select * from food_preparations_and_openings where preparation_or_opening_date > curdate();",

    "select * from food_preparations_and_openings where preparation_or_opening_date < '2024-05-30';",

    """
    drop table if exists prepared_and_opened_items_with_frequencies;

    create table prepared_and_opened_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_preparations_and_openings group by food_type;

    drop table if exists post_opening_wasted_items_with_frequencies;

    create table post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste
    where after_preparation_or_opening
    group by food_type;

    drop table if exists powed_items_with_frequencies;

    create table powed_items_with_frequencies as
    select food_type,
    prepared_and_opened_items_with_frequencies.total_quantity as total_quantity_prepared_and_opened,
    coalesce(post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    prepared_and_opened_items_with_frequencies.total_quantity - coalesce(post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from prepared_and_opened_items_with_frequencies left join post_opening_wasted_items_with_frequencies
    using (food_type);

    drop table if exists powed_items_with_frequencies_and_nutrition;

    create table powed_items_with_frequencies_and_nutrition as
    select powed_items_with_frequencies.*, food_types.*
    from powed_items_with_frequencies left join food_types
    on powed_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists recently_prepared_and_opened_items_with_frequencies;

    create table recently_prepared_and_opened_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_preparations_and_openings where least(
      datediff(curdate(), preparation_or_opening_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', preparation_or_opening_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 */
    ) <= 91
    group by food_type;

    drop table if exists recently_post_opening_wasted_items_with_frequencies;

    create table recently_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 */
    ) <= 91
    group by food_type;

    drop table if exists recently_powed_items_with_frequencies;

    create table recently_powed_items_with_frequencies as
    select food_type,
    recently_prepared_and_opened_items_with_frequencies.total_quantity as total_quantity_prepared_and_opened,
    coalesce(recently_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    recently_prepared_and_opened_items_with_frequencies.total_quantity - coalesce(recently_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from recently_prepared_and_opened_items_with_frequencies left join recently_post_opening_wasted_items_with_frequencies
    using (food_type);

    drop table if exists recently_powed_items_with_frequencies_and_nutrition;

    create table recently_powed_items_with_frequencies_and_nutrition as
    select recently_powed_items_with_frequencies.*, food_types.*
    from recently_powed_items_with_frequencies left join food_types
    on recently_powed_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists previously_prepared_and_opened_items_with_frequencies;

    create table previously_prepared_and_opened_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_preparations_and_openings where least(
      datediff(curdate(), preparation_or_opening_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', preparation_or_opening_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 (both ends inclusive) */
    ) between 92 and 183
    group by food_type;

    drop table if exists previously_post_opening_wasted_items_with_frequencies;

    create table previously_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 (both ends inclusive) */
    ) between 92 and 183
    group by food_type;

    drop table if exists previously_powed_items_with_frequencies;

    create table previously_powed_items_with_frequencies as
    select food_type,
    previously_prepared_and_opened_items_with_frequencies.total_quantity as total_quantity_prepared_and_opened,
    coalesce(previously_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    previously_prepared_and_opened_items_with_frequencies.total_quantity - coalesce(previously_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from previously_prepared_and_opened_items_with_frequencies left join previously_post_opening_wasted_items_with_frequencies
    using (food_type);

    drop table if exists previously_powed_items_with_frequencies_and_nutrition;

    create table previously_powed_items_with_frequencies_and_nutrition as
    select previously_powed_items_with_frequencies.*, food_types.*
    from previously_powed_items_with_frequencies left join food_types
    on previously_powed_items_with_frequencies.food_type = food_types.short_name;""",

    "select * from recently_powed_items_with_frequencies_and_nutrition where short_name is null;",

    "select * from previously_powed_items_with_frequencies_and_nutrition where short_name is null;",

    """
    drop temporary table if exists recent_daily_pow_amounts;

    create temporary table recent_daily_pow_amounts as select
    sum(calories * total_quantity_net) / 91 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 91 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 91 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 91 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 91 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 91 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 91 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 91 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 91 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 91 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 91 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 91 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 91 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 91 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 91 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 91 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 91 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 91 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 91 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 91 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 91 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 91 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 91 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 91 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 91 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 91 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 91 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 91 as daily_oxalate_in_mg
    from recently_powed_items_with_frequencies_and_nutrition;""",

    """
    drop temporary table if exists previous_daily_pow_amounts;

    create temporary table previous_daily_pow_amounts as select
    sum(calories * total_quantity_net) / 91 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 91 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 91 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 91 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 91 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 91 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 91 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 91 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 91 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 91 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 91 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 91 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 91 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 91 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 91 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 91 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 91 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 91 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 91 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 91 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 91 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 91 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 91 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 91 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 91 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 91 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 91 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 91 as daily_oxalate_in_mg
    from previously_powed_items_with_frequencies_and_nutrition;""",

    """
    drop table if exists daily_pow_amounts_by_epoch;

    create table daily_pow_amounts_by_epoch as
      select *, 'recent' as epoch from recent_daily_pow_amounts
    union
      select *, 'previous' as epoch from previous_daily_pow_amounts;""",

    # "select epoch, daily_total_carb_in_grams from daily_pow_amounts_by_epoch where daily_total_carb_in_grams < 225 or daily_total_carb_in_grams > 335;",

    # "select epoch, daily_total_fat_in_grams from daily_pow_amounts_by_epoch where daily_total_fat_in_grams < 50 or daily_total_fat_in_grams > 110;",

    # "select epoch, daily_sugars_in_grams from daily_pow_amounts_by_epoch where daily_sugars_in_grams > 45;",

    # "select epoch, daily_protein_in_grams from daily_pow_amounts_by_epoch where daily_protein_in_grams < 45;",

    # "select epoch, daily_oxalate_in_mg from daily_pow_amounts_by_epoch where daily_oxalate_in_mg > 300;",

    # "select epoch, daily_calcium_in_mg from daily_pow_amounts_by_epoch where daily_calcium_in_mg < 650 or daily_calcium_in_mg > 2500;",

    # "select epoch, daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg as effective_daily_sodium_in_mg from daily_pow_amounts_by_epoch where daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg < 1500 or daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg > 2700;",

    # "select epoch, daily_potassium_in_mg from daily_pow_amounts_by_epoch where daily_potassium_in_mg < 3400 or daily_potassium_in_mg > 4700;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
