import shared, connection

queries = [
    "select * from test_results where diagnosis = 'Normal' and (reference_interval_low_end > measured_value);",

    "select * from test_results where diagnosis = 'Normal' and (reference_interval_high_end < measured_value);",

    "select * from test_results where (reference_interval_low_end is null or reference_interval_low_end < measured_value) and (reference_interval_high_end is null or reference_interval_high_end > measured_value) and not (diagnosis in ('Normal','Sufficient','Negative'));",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
