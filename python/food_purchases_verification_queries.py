import shared, connection

queries = [
    """
    drop table if exists purchased_items_with_frequencies;

    create table purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases group by food_type;

    drop table if exists purchased_items_with_frequencies_and_nutrition;

    create table purchased_items_with_frequencies_and_nutrition as
    select purchased_items_with_frequencies.*, food_types.*
    from purchased_items_with_frequencies left join food_types
    on purchased_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists recently_purchased_items_with_frequencies;

    create table recently_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where datediff(curdate(), purchase_date) <= 91
    group by food_type;

    drop table if exists recently_purchased_items_with_frequencies_and_nutrition;

    create table recently_purchased_items_with_frequencies_and_nutrition as
    select recently_purchased_items_with_frequencies.*, food_types.*
    from recently_purchased_items_with_frequencies left join food_types
    on recently_purchased_items_with_frequencies.food_type = food_types.short_name;

    drop table if exists previously_purchased_items_with_frequencies;

    create table previously_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where datediff(curdate(), purchase_date) >= 92
    and datediff(curdate(), purchase_date) <= 183
    group by food_type;

    drop table if exists previously_purchased_items_with_frequencies_and_nutrition;

    create table previously_purchased_items_with_frequencies_and_nutrition as
    select previously_purchased_items_with_frequencies.*, food_types.*
    from previously_purchased_items_with_frequencies left join food_types
    on previously_purchased_items_with_frequencies.food_type = food_types.short_name;""",

    "select * from recently_purchased_items_with_frequencies_and_nutrition where short_name is null;",

    "select * from previously_purchased_items_with_frequencies_and_nutrition where short_name is null;",

    """
    drop temporary table if exists recent_daily_amounts;

    create temporary table recent_daily_amounts as select
    sum(calories * total_quantity) / 91 as daily_calories,
    sum(total_fat_in_grams * total_quantity) / 91 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity) / 91 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity) / 91 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity) / 91 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity) / 91 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity) / 91 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity) / 91 as daily_sodium_in_mg,
    sum(potassium_in_mg * total_quantity) / 91 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity) / 91 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity) / 91 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity) / 91 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity) / 91 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity) / 91 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity) / 91 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity) / 91 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity) / 91 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity) / 91 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity) / 91 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity) / 91 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity) / 91 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity) / 91 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity) / 91 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity) / 91 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity) as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity) as daily_copper_in_mg
    from recently_purchased_items_with_frequencies_and_nutrition;""",

    """
    drop temporary table if exists previous_daily_amounts;

    create temporary table previous_daily_amounts as select
    sum(calories * total_quantity) / 91 as daily_calories,
    sum(total_fat_in_grams * total_quantity) / 91 as daily_total_fat_in_grams,
    sum(saturated_fat_in_grams * total_quantity) / 91 as daily_saturated_fat_in_grams,
    sum(trans_fat_in_grams * total_quantity) / 91 as daily_trans_fat_in_grams,
    sum(monounsaturated_fat_in_grams * total_quantity) / 91 as daily_monounsaturated_fat_in_grams,
    sum(polyunsaturated_fat_in_grams * total_quantity) / 91 as daily_polyunsaturated_fat_in_grams,
    sum(cholesterol_in_mg * total_quantity) / 91 as daily_cholesterol_in_mg,
    sum(sodium_in_mg * total_quantity) / 91 as daily_sodium_in_mg,
    sum(potassium_in_mg * total_quantity) / 91 as daily_potassium_in_mg,
    sum(total_carb_in_grams * total_quantity) / 91 as daily_total_carb_in_grams,
    sum(fiber_in_grams * total_quantity) / 91 as daily_fiber_in_grams,
    sum(sugars_in_grams * total_quantity) / 91 as daily_sugars_in_grams,
    sum(protein_in_grams * total_quantity) / 91 as daily_protein_in_grams,
    sum(vitamin_a_in_mcg * total_quantity) / 91 as daily_vitamin_a_in_mcg,
    sum(vitamin_c_in_mg * total_quantity) / 91 as daily_vitamin_c_in_mg,
    sum(vitamin_d_in_mcg * total_quantity) / 91 as daily_vitamin_d_in_mcg,
    sum(calcium_in_mg * total_quantity) / 91 as daily_calcium_in_mg,
    sum(iron_in_mg * total_quantity) / 91 as daily_iron_in_mg,
    sum(vitamin_b6_in_mg * total_quantity) / 91 as daily_vitamin_b6_in_mg,
    sum(vitamin_b12_in_mcg * total_quantity) / 91 as daily_vitamin_b12_in_mcg,
    sum(vitamin_e_in_mg * total_quantity) / 91 as daily_vitamin_e_in_mg,
    sum(vitamin_k_in_mcg * total_quantity) / 91 as daily_vitamin_k_in_mcg,
    sum(magnesium_in_mg * total_quantity) / 91 as daily_magnesium_in_mg,
    sum(phosphorus_in_mg * total_quantity) / 91 as daily_phosphorus_in_mg,
    sum(zinc_in_mg * total_quantity) as daily_zinc_in_mg,
    sum(copper_in_mg * total_quantity) as daily_copper_in_mg
    from previously_purchased_items_with_frequencies_and_nutrition;""",

    """
    drop table if exists daily_amounts_by_epoch;

    create table daily_amounts_by_epoch as
      select *, 'recent' as epoch from recent_daily_amounts
    union
      select *, 'previous' as epoch from previous_daily_amounts;""",

    "select * from daily_amounts_by_epoch where daily_total_carb_in_grams < 225 or daily_total_carb_in_grams > 325;",

    "select * from daily_amounts_by_epoch where daily_total_fat_in_grams < 50 or daily_total_fat_in_grams > 100;",

    "select * from daily_amounts_by_epoch where daily_sugars_in_grams > 45;",

    "select * from daily_amounts_by_epoch where daily_protein_in_grams < 45;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
