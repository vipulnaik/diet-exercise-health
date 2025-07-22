import shared, connection

queries = [
    """
    select * from food_preparations_and_openings where preparation_or_opening_date > curdate();

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o""",

    """
    select * from food_preparations_and_openings where completion_date > curdate();

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o""",

    """
    select * from food_preparations_and_openings where preparation_or_opening_date < '2024-05-30';

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o""",

    """
    drop temporary table if exists food_preparations_and_openings_copy;

    create temporary table food_preparations_and_openings_copy as select * from food_preparations_and_openings;

    drop table if exists food_preparations_and_openings_self_join;

    create table food_preparations_and_openings_self_join as
    select
    food_preparations_and_openings.food_type,
    food_preparations_and_openings.preparation_or_opening_date as preparation_or_opening_date_1,
    food_preparations_and_openings.meal_index as meal_index_1,
    food_preparations_and_openings.completion_date as completion_date_1,
    food_preparations_and_openings.completion_meal_index as completion_meal_index_1,
    food_preparations_and_openings_copy.preparation_or_opening_date as preparation_or_opening_date_2,
    food_preparations_and_openings_copy.meal_index as meal_index_2,
    food_preparations_and_openings_copy.completion_date as completion_date_2,
    food_preparations_and_openings_copy.completion_meal_index as completion_meal_index_2
    from food_preparations_and_openings left join food_preparations_and_openings_copy
    on food_preparations_and_openings.food_type = food_preparations_and_openings_copy.food_type
    and (food_preparations_and_openings.preparation_or_opening_date, food_preparations_and_openings.meal_index) < (food_preparations_and_openings_copy.preparation_or_opening_date, food_preparations_and_openings_copy.meal_index);""",

    # I should not have more than one of a given food type open at overlapping times, with the exception of kale and tomato that I use across two different kinds of meal preps
    "select * from food_preparations_and_openings_self_join where (preparation_or_opening_date_2, meal_index_2) < (completion_date_1, completion_meal_index_1) and not (food_type in ('TJ Kale','Beefsteak tomato')) and not ((completion_date_1 , completion_meal_index_1) = ('2025-07-07',2) and (preparation_or_opening_date_2, meal_index_2) = ('2025-07-07',1));",

    # This variant needs a cutoff date of 2025-02-24 because I didn't record completion dates prior. Once I backfill estimated completion dates, the cutoff date can be adjusted or removed
    "select * from food_preparations_and_openings_self_join where completion_date_1 is null and datediff(curdate(), preparation_or_opening_date_2) >= 1 and preparation_or_opening_date_1 >= '2025-02-24' and not (food_type in ('TJ Kale','Beefsteak tomato'));",

    # I generally have sauerkraut and kimchi only with the first meal, so both the meal index and the completion meal index should be 1
    "select * from food_preparations_and_openings where food_type in ('TJ Sauerkraut','TJ Kimchi') and meal_index != 1;",

    "select * from food_preparations_and_openings where food_type in ('TJ Sauerkraut','TJ Kimchi') and completion_meal_index != 1 and not (preparation_or_opening_date = '2024-12-22');",

    # I generally have seaweed only with the second meal, so both the meal index and the completion meal index should be 2 -- the exceptions should be during periods of sauerkraut pause, or very early on before I developed the habit
    """
    with t1 as (
      select preparation_or_opening_date from food_preparations_and_openings where food_type in ('TJ Roasted Seaweed') and meal_index != 2
    ),
    t2 as (
      select preparation_or_opening_date, pause_date, resume_date from t1 left join food_pauses on t1.preparation_or_opening_date between food_pauses.pause_date and food_pauses.resume_date and food_pauses.broad_food_type = 'Sauerkraut / Kimchi'
    )
    select * from t2 where preparation_or_opening_date >= '2024-10-01' and pause_date is null;""",

    """
    with t1 as (
      select completion_date from food_preparations_and_openings where food_type in ('TJ Roasted Seaweed') and meal_index != 2
    ),
    t2 as (
      select completion_date, pause_date, resume_date from t1 left join food_pauses on t1.completion_date between food_pauses.pause_date and food_pauses.resume_date
    )
    select * from t2 where completion_date >= '2024-10-01' and pause_date is null;""",

    # If I completed something more than 1 day ago, there should be a new preparation or opening, except for foods that I consume one-off */
    "select * from food_preparations_and_openings_self_join where preparation_or_opening_date_2 is null and not (completion_date_1 between '2025-05-03' and '2025-06-06') and datediff(curdate(), completion_date_1) > 1 and not (food_type in ('Whole Foods Mexican Whole Wheat Tortillas','Udupi Palace spinach masala dosa','Udupi Palace spinach masala dosa free red chutney','Lundberg Sustainable California White Basmati Rice','Whole Foods Walnuts','TJ Green Lentils','TJ Kimchi','TJ Carrots (Organic)','Orange bell pepper','Kite Hill Unsweetened Plain Almond Milk Yogurt'));",

    # I should always open 1 bottle at a time
    "select * from food_preparations_and_openings where food_type in ('TJ Almond Milk','TJ Sauerkraut','TJ Walnuts','TJ Miso Ginger Broth','Trader Giotto''s Olive Oil') and quantity != 1;",

    # I should generally do 1 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type in ('Eggplant','TJ Kale','TJ Carrots','TJ Broccoli Florets 12 oz') and not (quantity between 0.85 and 1);",

    # I should generally do 2 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'Red bell pepper' and quantity != 2 and not (preparation_or_opening_date in ('2024-09-08','2024-11-20','2025-01-01','2025-01-07','2025-06-22') or preparation_or_opening_date between '2025-04-10' and '2025-05-02');",

    # I should generally do 2 or 3 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'TJ English Shelled Peas' and not (quantity in (2,3)) and not (preparation_or_opening_date in ('2024-09-07','2024-09-19','2024-09-30','2024-11-25'));",

    # I should generally do 4 at a time, though exceptions are possible
    "select * from food_preparations_and_openings where food_type = 'Green bell pepper' and quantity != 4 and not (preparation_or_opening_date = '2025-06-30' and meal_index = 1);",

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
    from food_preparations_and_openings where not (preparation_or_opening_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), preparation_or_opening_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', preparation_or_opening_date)) /* this case represents the gap in comprehensive recording of food preparations and openings during my India trip */
    ) <= 42
    group by food_type;

    drop table if exists recently_post_opening_wasted_items_with_frequencies;

    create table recently_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where after_preparation_or_opening
    and not (waste_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', waste_date)) /* this case represents the gap in comprehensive recording of food preparations and openings during my India trip */
    ) <= 42
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
    from food_preparations_and_openings where not (preparation_or_opening_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), preparation_or_opening_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', preparation_or_opening_date)) /* this case represents the gap in comprehensive recording of food preprations and openings during my India trip */
    ) between 43 and 85
    group by food_type;

    drop table if exists previously_post_opening_wasted_items_with_frequencies;

    create table previously_post_opening_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where after_preparation_or_opening
    and not (waste_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', waste_date)) /* this case represents the gap in comprehensive recording of food preparations and openings during my India trip */
    ) between 43 and 85
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

    """
    select * from recently_powed_items_with_frequencies_and_nutrition where short_name is null;

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o

    -- :o

    -- :o :o

    -- :o :o :o

    -- :o :o :o :o

    -- :o :o :o :o :o""",

    "select * from previously_powed_items_with_frequencies_and_nutrition where short_name is null;",

    """
    drop temporary table if exists recent_daily_pow_amounts;

    create temporary table recent_daily_pow_amounts as select
    sum(calories * total_quantity_net) / 43 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 43 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 43 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 43 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 43 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 43 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 43 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 43 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 43 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 43 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 43 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 43 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 43 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 43 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 43 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 43 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 43 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 43 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 43 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 43 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 43 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 43 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 43 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 43 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 43 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 43 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 43 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 43 as daily_oxalate_in_mg
    from recently_powed_items_with_frequencies_and_nutrition;""",

    """
    drop temporary table if exists previous_daily_pow_amounts;

    create temporary table previous_daily_pow_amounts as select
    sum(calories * total_quantity_net) / 43 as daily_calories,
    sum(total_fat_in_grams * total_quantity_net) / 43 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity_net) / 43 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity_net) / 43 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity_net) / 43 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity_net) / 43 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity_net) / 43 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity_net) / 43 as daily_sodium_in_mg,
    sum(case when food_type in ('Morton Iodized Sea Salt','Morton Iodized Salt') then sodium_in_mg * total_quantity_net else 0 end) / 43 as daily_sodium_from_table_salt_in_mg,
    sum(potassium_in_mg * total_quantity_net) / 43 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity_net) / 43 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity_net) / 43 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity_net) / 43 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity_net) / 43 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity_net) / 43 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity_net) / 43 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity_net) / 43 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity_net) / 43 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity_net) / 43 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity_net) / 43 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity_net) / 43 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity_net) / 43 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity_net) / 43 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity_net) / 43 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity_net) / 43 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity_net) / 43 as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity_net) / 43 as daily_copper_in_mg,
    sum(oxalate_in_mg * total_quantity_net) / 43 as daily_oxalate_in_mg
    from previously_powed_items_with_frequencies_and_nutrition;""",

    """
    drop table if exists daily_pow_amounts_by_epoch;

    create table daily_pow_amounts_by_epoch as
      select *, 'recent' as epoch from recent_daily_pow_amounts
    union
      select *, 'previous' as epoch from previous_daily_pow_amounts;""",

    # The wide range for daily calories reflects significant seasonal fluctuation
    "select epoch, daily_calories from daily_pow_amounts_by_epoch where daily_calories < 1750 or daily_calories > 3000;",

    # For the next two queries, I bound carbs and fats based on total calorie consumption as the calorie consumption can vary a lot by season
    "select epoch, daily_total_carb_in_grams, daily_calories from daily_pow_amounts_by_epoch where daily_total_carb_in_grams < 0.1 * daily_calories or daily_total_carb_in_grams > 0.17 * daily_calories;",

    "select epoch, daily_total_fat_in_grams, daily_calories from daily_pow_amounts_by_epoch where daily_total_fat_in_grams < 0.025 * daily_calories or daily_total_fat_in_grams > 0.05 * daily_calories;",

    # For saturated fat I use an absolute bound
    "select epoch, daily_saturated_fat_in_grams from daily_pow_amounts_by_epoch where daily_saturated_fat_in_grams > 15;",

    # For protein I bound between 0.9 and 2.1 times an upper estimate of my body weight
    "select epoch, daily_protein_in_grams from daily_pow_amounts_by_epoch where daily_protein_in_grams < 0.9 * 58 or daily_protein_in_grams > 2.1 * 58;",

    "select epoch, daily_oxalate_in_mg from daily_pow_amounts_by_epoch where daily_oxalate_in_mg > 150;",

    "select epoch, daily_calcium_in_mg from daily_pow_amounts_by_epoch where daily_calcium_in_mg < 650 or daily_calcium_in_mg > 2500;",

    "select epoch, daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg as effective_daily_sodium_in_mg from daily_pow_amounts_by_epoch where daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg < 1200 or daily_sodium_in_mg - daily_sodium_from_table_salt_in_mg > 2700;",

    "select epoch, daily_potassium_in_mg from daily_pow_amounts_by_epoch where daily_potassium_in_mg < 3100 or daily_potassium_in_mg > 5400;",

    "select epoch, daily_vitamin_a_in_mcg from daily_pow_amounts_by_epoch where daily_vitamin_a_in_mcg < 900 or daily_vitamin_a_in_mcg > 4100;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
