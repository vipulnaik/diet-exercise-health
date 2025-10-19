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

    """
    select * from food_types where
    total_carb_in_grams < 0.9 * (coalesce(fiber_in_grams, 0) + coalesce(sugars_in_grams, 0));""",

    """
    select * from food_types where
    total_carb_in_grams = 0 and not (
      fiber_in_grams = 0 and sugars_in_grams = 0
    );""",

    # The only food (among foods I consume) that has fat but no carbs is olive oil
    "select * from food_types where total_carb_in_grams = 0 and total_fat_in_grams > 0 and not (short_name regexp 'Olive Oil');",

    # The only food (among foods I consume) that has fat but no proteins is olive oil
    "select * from food_types where protein_in_grams = 0 and total_fat_in_grams > 0 and not (short_name regexp 'Olive oil');",

    # The amount of zinc should be small
    "select short_name, calories, zinc_in_mg, zinc_in_mg / calories from food_types where zinc_in_mg / calories > 0.02;",

    # Only a handful of foods have added Vitamin D, and these should have much more (added) calcium
    "select * from food_types where vitamin_d_in_mcg > 0.02 * calcium_in_mg;",

    """
    select * from food_types where
    vitamin_d_in_mcg > 0 and not (
      short_name in ('TJ Almond Milk','TJ Indian Style Flatbread','TJ Madras Lentils','TJ Roasted Seaweed')
    );""",

    # None of the vegan foods has natural or added Vitamin B12 as far as the recorded nutritional information
    "select * from food_types where vitamin_b12_in_mcg > 0;",

    """
    select broad_food_type,
    coalesce(min(total_carb_in_grams / calories), 0) as carb_calorie_ratio_min,
    coalesce(max(total_carb_in_grams / calories), 0) as carb_calorie_ratio_max
    from food_types where broad_food_type is not null group by broad_food_type
    having carb_calorie_ratio_max > 2 * carb_calorie_ratio_min + 0.005
    and not (broad_food_type in ('Sauerkraut / Kimchi','Vegan probiotic yogurt'));""",

    """
    select broad_food_type,
    coalesce(min(total_fat_in_grams / calories), 0) as fat_calorie_ratio_min,
    coalesce(max(total_fat_in_grams / calories), 0) as fat_calorie_ratio_max from food_types
    where broad_food_type is not null
    group by broad_food_type
    having fat_calorie_ratio_max > 2 * fat_calorie_ratio_min + 0.01
    and not (broad_food_type in ('Sauerkraut / Kimchi','Whole wheat tortilla'));""",

    """
    select broad_food_type,
    coalesce(min(protein_in_grams / calories), 0) as protein_calorie_ratio_min,
    coalesce(max(protein_in_grams / calories), 0) as protein_calorie_ratio_max from food_types
    where broad_food_type is not null
    group by broad_food_type
    having protein_calorie_ratio_max > 2 * protein_calorie_ratio_min + 0.005
    and not (broad_food_type in ('Sauerkraut / Kimchi','Whole wheat tortilla','Vegan probiotic yogurt'));""",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
