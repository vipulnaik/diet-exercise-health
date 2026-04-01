import shared, connection

queries = [
    """
    drop temporary table if exists length_measurements_join_types;
    
    create temporary table length_measurements_join_types as
    select * from length_measurements left join length_measurement_types
    on length_measurements.measurement_type = length_measurement_types.type_name;""",

    "select * from length_measurements_join_types where not sided and side in ('left','right');",

    "select * from length_measurements_join_types where sided and side = 'N/A';",

    """
    drop temporary table if exists length_measurements_side_by_side_same_date;

    create temporary table length_measurements_side_by_side_same_date as
    select measurement_date, measurement_type,
    max(case when side = 'left' then measurement_value_in_cm end) as left_measurement,
    max(case when side = 'right' then measurement_value_in_cm end) as right_measurement
    from length_measurements
    where side in ('left','right')
    group by measurement_date, measurement_type;""",

    "select * from length_measurements_side_by_side_same_date where left_measurement is null or right_measurement is null;",

    "select * from length_measurements_side_by_side_same_date where left_measurement < 0.9 * right_measurement or right_measurement < 0.9 * left_measurement;",

    """
    drop temporary table if exists length_measurements_min_and_max;

    create temporary table length_measurements_min_and_max as
    select measurement_type, side,
    min(measurement_value_in_cm) as smallest_measurement,
    max(measurement_value_in_cm) as largest_measurement
    from length_measurements
    group by measurement_type, side;""",

    "select * from length_measurements_min_and_max where largest_measurement > 1.25 * smallest_measurement;",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
