import shared, connection

queries = [
    "select * from food_purchases where purchase_date > curdate();",

    "select * from food_purchases where purchase_date < '2021-03-10';",

    """
    drop table if exists purchased_items_with_frequencies;

    create table purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases group by food_type;

    drop table if exists wasted_items_with_frequencies;

    create table wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste group by food_type;

    drop table if exists pwed_items_with_frequencies;

    create table pwed_items_with_frequencies as
    select food_type,
    purchased_items_with_frequencies.total_quantity as total_quantity_purchased,
    coalesce(wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    purchased_items_with_frequencies.total_quantity - coalesce(wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from purchased_items_with_frequencies left join wasted_items_with_frequencies
    using (food_type);

    drop table if exists pwed_items_with_frequencies_and_nutrition;

    create table pwed_items_with_frequencies_and_nutrition as
    select pwed_items_with_frequencies.*, food_types.*
    from pwed_items_with_frequencies left join food_types
    on pwed_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists recently_purchased_items_with_frequencies;

    create table recently_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where least(
      datediff(curdate(), purchase_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', purchase_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 */
    ) <= 91
    group by food_type;

    drop table if exists recently_wasted_items_with_frequencies;

    create table recently_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 */
    ) <= 91
    group by food_type;

    drop table if exists recently_pwed_items_with_frequencies;

    create table recently_pwed_items_with_frequencies as
    select food_type,
    recently_purchased_items_with_frequencies.total_quantity as total_quantity_purchased,
    coalesce(recently_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    recently_purchased_items_with_frequencies.total_quantity - coalesce(recently_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from recently_purchased_items_with_frequencies left join recently_wasted_items_with_frequencies
    using (food_type);

    drop table if exists recently_pwed_items_with_frequencies_and_nutrition;

    create table recently_pwed_items_with_frequencies_and_nutrition as
    select recently_pwed_items_with_frequencies.*, food_types.*
    from recently_pwed_items_with_frequencies left join food_types
    on recently_pwed_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists previously_purchased_items_with_frequencies;

    create table previously_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where least(
      datediff(curdate(), purchase_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', purchase_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 (both ends inclusive) */
    ) between 92 and 183
    group by food_type;

    drop table if exists previously_wasted_items_with_frequencies;

    create table previously_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2024-03-15') + greatest(0, datediff('2024-02-16', waste_date)) /* this case represents the gap in recording of food purchases during my India trip 2024-02-17 to 2024-03-15 (both ends inclusive) */
    ) between 92 and 183
    group by food_type;

    drop table if exists previously_pwed_items_with_frequencies;

    create table previously_pwed_items_with_frequencies as
    select food_type,
    previously_purchased_items_with_frequencies.total_quantity as total_quantity_purchased,
    coalesce(previously_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_wasted,
    previously_purchased_items_with_frequencies.total_quantity - coalesce(previously_wasted_items_with_frequencies.total_quantity, 0) as total_quantity_net
    from previously_purchased_items_with_frequencies left join previously_wasted_items_with_frequencies
    using (food_type);

    drop table if exists previously_pwed_items_with_frequencies_and_nutrition;

    create table previously_pwed_items_with_frequencies_and_nutrition as
    select previously_pwed_items_with_frequencies.*, food_types.*
    from previously_pwed_items_with_frequencies left join food_types
    on previously_pwed_items_with_frequencies.food_type = food_types.short_name;""",

    "select * from recently_pwed_items_with_frequencies_and_nutrition where short_name is null;",

    "select * from previously_pwed_items_with_frequencies_and_nutrition where short_name is null;",

    """
    drop temporary table if exists recent_daily_pw_amounts;

    create temporary table recent_daily_pw_amounts as select
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
    from recently_pwed_items_with_frequencies_and_nutrition;""",

    """
    drop temporary table if exists previous_daily_pw_amounts;

    create temporary table previous_daily_pw_amounts as select
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
    from previously_pwed_items_with_frequencies_and_nutrition;""",

    """
    drop table if exists daily_pw_amounts_by_epoch;

    create table daily_pw_amounts_by_epoch as
      select *, 'recent' as epoch from recent_daily_pw_amounts
    union
      select *, 'previous' as epoch from previous_daily_pw_amounts;""",

    # The wide range for daily calories reflects significant seasonal fluctuation
    "select epoch, daily_calories from daily_pw_amounts_by_epoch where daily_calories < 1750 or daily_calories > 3000;",

    # For the next two queries, I bound carbs and fats based on total calorie consumption as the calorie consumption can vary a lot by season
    "select epoch, daily_total_carb_in_grams, daily_calories from daily_pw_amounts_by_epoch where daily_total_carb_in_grams < 0.1 * daily_calories or daily_total_carb_in_grams > 0.16 * daily_calories;",

    "select epoch, daily_total_fat_in_grams, daily_calories from daily_pw_amounts_by_epoch where daily_total_fat_in_grams < 0.025 * daily_calories or daily_total_fat_in_grams > 0.05 * daily_calories;",

    # For saturated fat I use an absolute bound
    "select epoch, daily_saturated_fat_in_grams from daily_pw_amounts_by_epoch where daily_saturated_fat_in_grams > 15;",

    # For protein I bound between 0.9 and 2.1 times an upper estimate of my body weight
    "select epoch, daily_protein_in_grams from daily_pw_amounts_by_epoch where daily_protein_in_grams < 0.9 * 58 or daily_protein_in_grams > 2.1 * 58;",

    "select epoch, daily_oxalate_in_mg from daily_pw_amounts_by_epoch where daily_oxalate_in_mg > 150;",

    "select epoch, daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg as effective_daily_sodium_in_mg from daily_pw_amounts_by_epoch where daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg < 1200 or daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg > 2700;",

    "select epoch, daily_potassium_in_mg from daily_pw_amounts_by_epoch where daily_potassium_in_mg < 3200 or daily_potassium_in_mg > 5100;",

    "select epoch, daily_vitamin_a_in_mcg from daily_pw_amounts_by_epoch where daily_vitamin_a_in_mcg < 900 or daily_vitamin_a_in_mcg > 3000;",

]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
