import shared, connection

queries = [
    """
    drop temporary table if exists purchased_items_with_frequencies;

    create temporary table purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases group by food_type;

    drop temporary table if exists purchased_items_with_frequencies_and_nutrition;

    create temporary table purchased_items_with_frequencies_and_nutrition as
    select purchased_items_with_frequencies.*, food_types.*
    from purchased_items_with_frequencies left join food_types
    on purchased_items_with_frequencies.food_type = food_types.short_name;

    drop temporary table if exists recently_purchased_items_with_frequencies;

    create temporary table recently_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where datediff(curdate(), purchase_date) <= 91
    group by food_type;

    drop temporary table if exists recently_purchased_items_with_frequencies_and_nutrition;

    create temporary table recently_purchased_items_with_frequencies_and_nutrition as
    select recently_purchased_items_with_frequencies.*, food_types.*
    from recently_purchased_items_with_frequencies left join food_types
    on recently_purchased_items_with_frequencies.food_type = food_types.short_name;

    drop temporary table if exists previously_purchased_items_with_frequencies;

    create temporary table previously_purchased_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_purchases where datediff(curdate(), purchase_date) >= 92
    and datediff(curdate(), purchase_date) <= 183
    group by food_type;

    drop temporary table if exists previously_purchased_items_with_frequencies_and_nutrition;

    create temporary table previously_purchased_items_with_frequencies_and_nutrition as
    select previously_purchased_items_with_frequencies.*, food_types.*
    from previously_purchased_items_with_frequencies left join food_types
    on previously_purchased_items_with_frequencies.food_type = food_types.short_name;""",

    "select * from recently_purchased_items_with_frequencies_and_nutrition where short_name is null;",

    "select * from previously_purchased_items_with_frequencies_and_nutrition where short_name is null;",

    "select sum(calories * total_quantity) as summed_calories from previously_purchased_items_with_frequencies_and_nutrition having summed_calories < 91 * 1800 or summed_calories > 91 * 2500;",

    "select sum(total_carb_in_grams * total_quantity) as summed_carbs_in_grams from recently_purchased_items_with_frequencies_and_nutrition having summed_carbs_in_grams < 91 * 225 or summed_carbs_in_grams > 91 * 325;",

    "select sum(total_fat_in_grams * total_quantity) as summed_fat_in_grams from recently_purchased_items_with_frequencies_and_nutrition having summed_fat_in_grams < 91 * 50 or summed_fat_in_grams > 91 * 100;",

    "select sum(sugars_in_grams * total_quantity) as summed_sugar_in_grams from recently_purchased_items_with_frequencies_and_nutrition having summed_sugar_in_grams > 91 * 45;",

    "select sum(protein_in_grams * total_quantity) as summed_protein_in_grams from recently_purchased_items_with_frequencies_and_nutrition having summed_protein_in_grams < 91 * 45;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
