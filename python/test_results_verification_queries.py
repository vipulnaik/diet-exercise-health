import shared, connection

queries = [
    "select * from test_results where diagnosis = 'Normal' and (reference_interval_low_end > measured_value);",

    "select * from test_results where diagnosis = 'Normal' and (reference_interval_high_end < measured_value);",

    "select * from test_results where diagnosis = 'Low' and (reference_interval_low_end <= measured_value);",

    "select * from test_results where diagnosis = 'High' and (reference_interval_high_end >= measured_value);",

    """
    select * from test_results where
    (reference_interval_low_end is null or reference_interval_low_end < measured_value)
    and (reference_interval_high_end is null or reference_interval_high_end > measured_value)
    and not (diagnosis in ('Normal','Sufficient','Negative'));""",

    """
    select test,
    count(distinct units) as num_distinct_units,
    group_concat(distinct units)
    from test_results
    group by test
    having num_distinct_units > 1
    and not (test = 'D3' and num_distinct_units = 2);""",

    # The serum creatinine exception is a case where one of the reference ranges was male-specific and the other combined both males and females
    """
    select test, units,
    min(reference_interval_low_end) as lowest_low_end,
    max(reference_interval_low_end) as highest_low_end
    from test_results group by test, units
    having lowest_low_end > 0
    and highest_low_end  > 1.5 * lowest_low_end
    and not (test in ('Serum creatinine','Bilirubin total'));""",

    # The lymphocytes maximum varies between LabCorp 2016 (3.1), Quest Diagnostics 2021 (3.9) and Sutter Health 2024 (5.1)
    """
    select test, units,
    min(reference_interval_high_end) as lowest_high_end,
    max(reference_interval_high_end) as highest_high_end
    from test_results group by test, units
    having lowest_high_end > 0
    and highest_high_end  > 1.5 * lowest_high_end
    and not (test = 'Lymphocytes (absolute)');""",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
