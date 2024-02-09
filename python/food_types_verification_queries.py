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
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
