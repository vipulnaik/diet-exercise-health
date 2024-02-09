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
    on recently_purchased_items_with_frequencies.food_type = food_types.short_name;""",

    "select * from recently_purchased_items_with_frequencies_and_nutrition where short_name is null;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
