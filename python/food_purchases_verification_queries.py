import shared, connection

queries = [
    """
    select * from food_purchases where purchase_date > curdate();

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
    select * from food_purchases where purchase_date < '2021-03-10';

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
    from food_purchases where not (purchase_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), purchase_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', purchase_date)) /* this case represents the gap in comprehensive recording of food purchases during my India trip */
    ) <= 91
    group by food_type;

    drop table if exists recently_wasted_items_with_frequencies;

    create table recently_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where not (waste_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-04', waste_date)) /* this case represents the gap in comprehensive recording of food purchases during my India trip */
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
    from food_purchases where not (purchase_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), purchase_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-02', purchase_date)) /* this case represents the gap in comprehensive recording of food purchases during my India trip */
    ) between 92 and 183
    group by food_type;

    drop table if exists previously_wasted_items_with_frequencies;

    create table previously_wasted_items_with_frequencies as
    select food_type, sum(quantity) as total_quantity, count(1) as freq
    from food_waste where not (waste_date between '2025-05-04' and '2025-06-06') and least(
      datediff(curdate(), waste_date),
      datediff(curdate(), '2025-06-07') + greatest(0, datediff('2025-05-04', waste_date)) /* this case represents the gap in comprehensive recording of food purchases during my India trip */
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

    """
    select * from recently_pwed_items_with_frequencies_and_nutrition where short_name is null;

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

    "select * from previously_pwed_items_with_frequencies_and_nutrition where short_name is null;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
