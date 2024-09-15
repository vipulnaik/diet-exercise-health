import shared, connection

queries = [
    "select * from food_preparations_and_openings where preparation_or_opening_date > curdate();",

    "select * from food_preparations_and_openings where preparation_or_opening_date < '2024-05-30';",

    # I should always open 1 bottle at a time
    "select * from food_preparations_and_openings where food_type in ('TJ Almond Milk','TJ Sauerkraut','TJ Walnuts','TJ Miso Ginger Broth','Trader Giotto''s Olive Oil') and quantity != 1;",

    # I should generally do 1 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type in ('Eggplant','TJ Kale','TJ Carrots','TJ Broccoli Florets 12 oz') and quantity != 1;",

    # I should generally do 2 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'Red bell pepper' and quantity != 2 and not (preparation_or_opening_date = '2024-09-08');",

    # I should generally do 3 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'TJ English Shelled Peas' and not (quantity in (2,3)) and not (preparation_or_opening_date in ('2024-09-07'));",

    # I should generally do 4 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'Green bell pepper' and quantity != 4;",

    # I should do less than 1 at a time
    "select * from food_preparations_and_openings where food_type in ('Lundberg Sustainable California White Basmati Rice','Gold potatoes 3 lb','Gold potatoes 5 lb') and quantity >= 1;",

    """
    drop temporary table if exists food_preparations_and_openings_lower_bounds_eval_pre;

    create temporary table food_preparations_and_openings_lower_bounds_eval_pre as
    select food_preparations_and_openings_lower_bounds.*,
    preparation_or_opening_date, quantity from food_preparations_and_openings_lower_bounds left join food_preparations_and_openings
    on food_preparations_and_openings_lower_bounds.food_type = food_preparations_and_openings.food_type
    and food_preparations_and_openings.preparation_or_opening_date <= curdate()
    and datediff(curdate(), food_preparations_and_openings.preparation_or_opening_date) < food_preparations_and_openings_lower_bounds.num_days;

    drop table if exists food_preparations_and_openings_lower_bounds_eval;

    create table food_preparations_and_openings_lower_bounds_eval as
    select food_type, num_days, quantity_lower_bound,
    coalesce(sum(quantity), 0) as actual_quantity
    from food_preparations_and_openings_lower_bounds_eval_pre
    group by food_type, num_days, quantity_lower_bound;""",

    "select * from food_preparations_and_openings_lower_bounds_eval where actual_quantity < quantity_lower_bound;",

    """
    drop temporary table if exists food_preparations_and_openings_upper_bounds_eval_pre;

    create temporary table food_preparations_and_openings_upper_bounds_eval_pre as
    select food_preparations_and_openings_upper_bounds.*,
    preparation_or_opening_date, quantity from food_preparations_and_openings_upper_bounds left join food_preparations_and_openings
    on food_preparations_and_openings_upper_bounds.food_type = food_preparations_and_openings.food_type
    and food_preparations_and_openings.preparation_or_opening_date <= curdate()
    and datediff(curdate(), food_preparations_and_openings.preparation_or_opening_date) < food_preparations_and_openings_upper_bounds.num_days;

    drop table if exists food_preparations_and_openings_upper_bounds_eval;

    create table food_preparations_and_openings_upper_bounds_eval as
    select food_type, num_days, quantity_upper_bound,
    coalesce(sum(quantity), 0) as actual_quantity
    from food_preparations_and_openings_upper_bounds_eval_pre
    group by food_type, num_days, quantity_upper_bound;""",

    "select * from food_preparations_and_openings_upper_bounds_eval where actual_quantity > quantity_upper_bound;",

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
    greatest(0, prepared_and_opened_items_with_frequencies.total_quantity - coalesce(post_opening_wasted_items_with_frequencies.total_quantity, 0)) as total_quantity_net
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
    ) <= 30
    group by food_type;

    drop table if exists recently_post_opening_wasted_items_with_frequencies;

    create table recently_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 */
    ) <= 30
    group by food_type;

    drop table if exists recently_powed_items_with_frequencies;

    create table recently_powed_items_with_frequencies as
    select food_type,
    recently_prepared_and_opened_items_with_frequencies.total_quantity as total_quantity_prepared_and_opened,
    coalesce(recently_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    greatest(0, recently_prepared_and_opened_items_with_frequencies.total_quantity - coalesce(recently_post_opening_wasted_items_with_frequencies.total_quantity, 0)) as total_quantity_net
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
    ) between 31 and 61
    group by food_type;

    drop table if exists previously_post_opening_wasted_items_with_frequencies;

    create table previously_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 (both ends inclusive) */
    ) between 31 and 61
    group by food_type;

    drop table if exists previously_powed_items_with_frequencies;

    create table previously_powed_items_with_frequencies as
    select food_type,
    previously_prepared_and_opened_items_with_frequencies.total_quantity as total_quantity_prepared_and_opened,
    coalesce(previously_post_opening_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    greatest(0, previously_prepared_and_opened_items_with_frequencies.total_quantity - coalesce(previously_post_opening_wasted_items_with_frequencies.total_quantity, 0)) as total_quantity_net
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
    sum(calories * total_quantity_net) / 30 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 30 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 30 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 30 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 30 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 30 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 30 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 30 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 30 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 30 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 30 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 30 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 30 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 30 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 30 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 30 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 30 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 30 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 30 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 30 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 30 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 30 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 30 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 30 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 30 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 30 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 30 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 30 as daily_oxalate_in_mg
    from recently_powed_items_with_frequencies_and_nutrition;""",

    """
    drop temporary table if exists previous_daily_pow_amounts;

    create temporary table previous_daily_pow_amounts as select
    sum(calories * total_quantity_net) / 30 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 30 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 30 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 30 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 30 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 30 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 30 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 30 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 30 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 30 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 30 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 30 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 30 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 30 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 30 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 30 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 30 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 30 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 30 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 30 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 30 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 30 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 30 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 30 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 30 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 30 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 30 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 30 as daily_oxalate_in_mg
    from previously_powed_items_with_frequencies_and_nutrition;""",

    """
    drop table if exists daily_pow_amounts_by_epoch;

    create table daily_pow_amounts_by_epoch as
      select *, 'recent' as epoch from recent_daily_pow_amounts
    union
      select *, 'previous' as epoch from previous_daily_pow_amounts;""",

    "select epoch, daily_total_carb_in_grams from daily_pow_amounts_by_epoch where daily_total_carb_in_grams < 225 or daily_total_carb_in_grams > 335;",

    "select epoch, daily_total_fat_in_grams from daily_pow_amounts_by_epoch where daily_total_fat_in_grams < 50 or daily_total_fat_in_grams > 110;",

    "select epoch, daily_sugars_in_grams from daily_pow_amounts_by_epoch where daily_sugars_in_grams > 45;",

    "select epoch, daily_protein_in_grams from daily_pow_amounts_by_epoch where daily_protein_in_grams < 45;",

    "select epoch, daily_oxalate_in_mg from daily_pow_amounts_by_epoch where daily_oxalate_in_mg > 300;",

    "select epoch, daily_calcium_in_mg from daily_pow_amounts_by_epoch where daily_calcium_in_mg < 650 or daily_calcium_in_mg > 2500;",

    "select epoch, daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg as effective_daily_sodium_in_mg from daily_pow_amounts_by_epoch where daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg < 1200 or daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg > 2700;",

    "select epoch, daily_potassium_in_mg from daily_pow_amounts_by_epoch where daily_potassium_in_mg < 3400 or daily_potassium_in_mg > 4700;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
