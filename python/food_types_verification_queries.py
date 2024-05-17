import shared, connection

queries = [
    """
    select * from food_types where
    total_fat_in_grams < coalesce(saturated_fat_in_grams, 0) + coalesce(trans_fat_in_grams, 0) + coalesce(monounsaturated_fat_in_grams, 0) + coalesce(polyunsaturated_fat_in_grams, 0);""",

    """
    select * from food_types where
    total_fat_in_grams = 0 and not (
      saturated_fat_in_grams = 0 and trans_fat_in_grams = 0 and monounsaturated_fat_in_grams = 0  and polyunsaturated_fat_in_grams = 0
    );""",

    "select * from food_types where trans_fat_in_grams > 0;",

    # """
    # select * from food_types where
    # total_carb_in_grams < coalesce(fiber_in_grams, 0) + coalesce(sugars_in_grams, 0);""",

    """
    select * from food_types where
    total_carb_in_grams = 0 and not (
      fiber_in_grams = 0 and sugars_in_grams = 0
    );""",

    """
    select broad_food_type,
    coalesce(min(total_carb_in_grams / calories), 0) as carb_calorie_ratio_min,
    coalesce(max(total_carb_in_grams / calories), 0) as carb_calorie_ratio_max
    from food_types where broad_food_type is not null group by broad_food_type
    having carb_calorie_ratio_max > 2 * carb_calorie_ratio_min + 0.005
    and not (broad_food_type in ('Sauerkraut'));""",

    """
    select broad_food_type,
    coalesce(min(total_fat_in_grams / calories), 0) as fat_calorie_ratio_min,
    coalesce(max(total_fat_in_grams / calories), 0) as fat_calorie_ratio_max from food_types
    where broad_food_type is not null
    group by broad_food_type
    having fat_calorie_ratio_max > 2 * fat_calorie_ratio_min + 0.01
    and not (broad_food_type in ('Sauerkraut','Whole wheat tortilla'));""",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
