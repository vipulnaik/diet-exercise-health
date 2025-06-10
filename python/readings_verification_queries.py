import shared, connection

queries = [
    # Blood pressure
    "select * from blood_pressure_readings where measurer = 'self' and not unusual_circumstances and not (systolic_bp_mm_hg between 90 and 120);",

    "select * from blood_pressure_readings where measurer = 'self' and not unusual_circumstances and not (diastolic_bp_mm_hg between 55 and 85);",

    "select * from blood_pressure_readings where measurer = 'self' and not unusual_circumstances and not (systolic_bp_mm_hg - diastolic_bp_mm_hg between 25 and 50) and not (reading_date in ('2024-12-15'));",

    "select * from blood_pressure_readings where measurer = 'self' and not unusual_circumstances and not (heart_rate_bpm between 40 and 75);",

    # Pulse oximeter
    "select * from pulse_oximeter_readings where not (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_min_bpm between 40 and 65) and not (reading_date = '2024-08-27');",

    "select * from pulse_oximeter_readings where not (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_max_bpm between 45 and 70) and not (reading_date in ('2024-08-27','2024-12-14'));",

    "select * from pulse_oximeter_readings where (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_min_bpm between 50 and 100);",

    "select * from pulse_oximeter_readings where (within_an_hour_after_exercise or within_two_hours_after_eating) and not (heart_rate_max_bpm between 55 and 105);",

    "select * from pulse_oximeter_readings where not (spo2_min between 92 and 100) and not (reading_date in ('2025-06-10'));",

    "select * from pulse_oximeter_readings where not (spo2_max between 96 and 100) and not (reading_date in ('2025-06-10'));",
]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)

