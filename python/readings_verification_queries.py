import shared, connection

queries = [
    # Blood pressure
    "select * from blood_pressure_readings where measurer = 'self' and not (systolic_bp_mm_hg between 90 and 120);",

    "select * from blood_pressure_readings where measurer = 'self' and not (diastolic_bp_mm_hg between 55 and 85);",

    "select * from blood_pressure_readings where measurer = 'self' and not (systolic_bp_mm_hg - diastolic_bp_mm_hg between 27 and 50);",

    "select * from blood_pressure_readings where measurer = 'self' and not (heart_rate_bpm between 40 and 75);",

    # Pulse oximeter
    "select * from pulse_oximeter_readings where not (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_min_bpm between 40 and 65);",

    "select * from pulse_oximeter_readings where not (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_max_bpm between 45 and 70) and not (reading_date = '2024-08-27' and index_within_reading_date = 1);",

    "select * from pulse_oximeter_readings where (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_min_bpm between 60 and 100);",

    "select * from pulse_oximeter_readings where (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_max_bpm between 65 and 105);",

    "select * from pulse_oximeter_readings where not (spo2_min between 93 and 100);",

    "select * from pulse_oximeter_readings where not (spo2_max between 96 and 100);",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

