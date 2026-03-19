import shared, connection

queries = [
    "select * from current_stocks where unopened_stock_at_estimation_time < 0;",

    "select * from current_stocks where partially_opened_stock_at_estimation_time < 0;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
