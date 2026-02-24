import shared, connection

queries = [
    """
    drop table if exists food_and_nutrient_consumption_in_recent_week;

    create table food_and_nutrient_consumption_in_recent_week as
    select food_type, sum(interpolated_quantity) / 7 as daily_quantity_avg,
    sum(calories) / 7 as daily_calories_avg,
    sum(total_carb_in_grams) / 7 as daily_total_carb_in_grams_avg,
    sum(total_fat_in_grams) / 7 as daily_total_fat_in_grams_avg,
    sum(saturated_fat_in_grams) / 7 as daily_saturated_fat_in_grams_avg,
    sum(protein_in_grams) / 7 as daily_protein_in_grams_avg,
    sum(oxalate_in_mg) / 7 as daily_oxalate_in_mg_avg,
    sum(calcium_in_mg) / 7 as daily_calcium_in_mg_avg,
    sum(sodium_in_mg) / 7 as daily_sodium_in_mg_avg,
    sum(potassium_in_mg) / 7 as daily_potassium_in_mg_avg,
    sum(vitamin_a_in_mcg) / 7 as daily_vitamin_a_in_mcg_avg
    from interpolated_food_and_nutrient_consumption
    where datediff(curdate(), consumption_date) between 3 and 9 -- 1 week ending 3 days ago so there should be mostly complete / accurate data until then
    group by food_type;""",

    """
    drop table if exists nutrient_consumption_in_recent_week;

    create table nutrient_consumption_in_recent_week as
    select min(calories) as daily_calories_min, max(calories) as daily_calories_max,
    sum(calories) / 7 as daily_calories_avg,
    sum(total_carb_in_grams) / 7 as daily_total_carb_in_grams_avg,
    sum(total_fat_in_grams) / 7 as daily_total_fat_in_grams_avg,
    sum(saturated_fat_in_grams) / 7 as daily_saturated_fat_in_grams_avg,
    sum(protein_in_grams) / 7 as daily_protein_in_grams_avg,
    sum(oxalate_in_mg) / 7 as daily_oxalate_in_mg_avg,
    sum(calcium_in_mg) / 7 as daily_calcium_in_mg_avg,
    sum(sodium_in_mg) / 7 as daily_sodium_in_mg_avg,
    sum(potassium_in_mg) / 7 as daily_potassium_in_mg_avg,
    sum(vitamin_a_in_mcg) / 7 as daily_vitamin_a_in_mcg_avg
    from interpolated_nutrient_consumption
    where datediff(curdate(), consumption_date) between 3 and 9; -- 1 week ending 3 days ago so there should be mostly complete / accurate data until then""",

    "select daily_calories_min from nutrient_consumption_in_recent_week where daily_calories_min < 1500;",

    "select daily_calories_max from nutrient_consumption_in_recent_week where daily_calories_max > 3000;",

    "select daily_calories_avg from nutrient_consumption_in_recent_week where not (daily_calories_avg between 1750 and 2750);",

    # carbs have about 4 grams per calorie, so 0.1 to 0.17 means about 0.4 to 0.68 of calories from carbs
    """
    select daily_calories_avg, daily_total_carb_in_grams_avg,
    round(daily_total_carb_in_grams_avg / daily_calories_avg, 3) as carb_to_calories_ratio,
    round((4 * daily_total_carb_in_grams_avg) / daily_calories_avg, 3) as carb_energy_fraction
    from nutrient_consumption_in_recent_week
    where (daily_total_carb_in_grams_avg < 0.1 * daily_calories_avg or daily_total_carb_in_grams_avg > 0.17 * daily_calories_avg);""",

    # fats have about 9 grams per calorie, so 0.025 to 0.05 means about 0.225 to 0.45 of calories from fats
    """
    select daily_calories_avg, daily_total_fat_in_grams_avg,
    round(daily_total_fat_in_grams_avg / daily_calories_avg, 3) as fat_to_calories_ratio,
    round((9 * daily_total_fat_in_grams_avg) / daily_calories_avg, 3) as fat_energy_fraction
    from nutrient_consumption_in_recent_week
    where (daily_total_fat_in_grams_avg < 0.025 * daily_calories_avg or daily_total_fat_in_grams_avg > 0.05 * daily_calories_avg);""",

    # saturated fat I bound above in absolute amount (by 15 grams per day)
    "select daily_saturated_fat_in_grams_avg from nutrient_consumption_in_recent_week where daily_saturated_fat_in_grams_avg > 15;",

    # protein I bound from below and above in grams based on an upper estimate of my body weight
    "select daily_protein_in_grams_avg from nutrient_consumption_in_recent_week where daily_protein_in_grams_avg < 0.9 * 58 or daily_protein_in_grams_avg > 2.1 * 58;",

    "select daily_oxalate_in_mg_avg from nutrient_consumption_in_recent_week where daily_oxalate_in_mg_avg > 150; -- dig deeper: select food_type, daily_quantity_avg, daily_oxalate_in_mg_avg from food_and_nutrient_consumption_in_recent_week order by daily_oxalate_in_mg_avg desc;",

    "select daily_calcium_in_mg_avg from nutrient_consumption_in_recent_week where daily_calcium_in_mg_avg < 650 or daily_calcium_in_mg_avg > 2500; -- dig deeper: select food_type, daily_quantity_avg, daily_calcium_in_mg_avg from food_and_nutrient_consumption_in_recent_week order by daily_calcium_in_mg_avg desc;",

    "select daily_sodium_in_mg_avg from nutrient_consumption_in_recent_week where daily_sodium_in_mg_avg > 4500; -- dig deeper: select food_type, daily_quantity_avg, daily_sodium_in_mg_avg from food_and_nutrient_consumption_in_recent_week order by daily_sodium_in_mg_avg desc;",

    "select daily_potassium_in_mg_avg from nutrient_consumption_in_recent_week where daily_potassium_in_mg_avg < 3000 or daily_potassium_in_mg_avg > 5400; -- dig deeper: select food_type, daily_quantity_avg, daily_potassium_in_mg_avg from food_and_nutrient_consumption_in_recent_week order by daily_potassium_in_mg_avg desc;",

    "select daily_vitamin_a_in_mcg_avg from nutrient_consumption_in_recent_week where daily_vitamin_a_in_mcg_avg < 900 or daily_vitamin_a_in_mcg_avg > 4100; -- dig deeper: select food_type, daily_quantity_avg, daily_vitamin_a_in_mcg_avg from food_and_nutrient_consumption_in_recent_week order by daily_vitamin_a_in_mcg_avg desc;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
