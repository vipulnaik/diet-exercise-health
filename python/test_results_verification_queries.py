import shared, connection

queries = [
    "select * from test_results where diagnosis = 'Normal' and (reference_interval_low_end > measured_value);",

    "select * from test_results where diagnosis = 'Normal' and (reference_interval_high_end < measured_value);",

    "select * from test_results where (reference_interval_low_end is null or reference_interval_low_end < measured_value) and (reference_interval_high_end is null or reference_interval_high_end > measured_value) and not (diagnosis in ('Normal','Sufficient','Negative'));",

    "select test, count(distinct units) as num_distinct_units, group_concat(distinct units) from test_results group by test having num_distinct_units > 1 and not (test = 'D3' and num_distinct_units = 2);",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
