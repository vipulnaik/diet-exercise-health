MYSQL_ARGS=
DATABASE=diet_exercise_health

.PHONY: init
init:
	mysql $(MYSQL_ARGS) -e "create database $(DATABASE);"

.PHONY: reset
reset: reset_medical reset_food

.PHONY: read
read: read_medical read_food

.PHONY: verify
verify: verify_medical_data verify_food_data

.PHONY: reset_medical
reset_medical: reset_medical_data reset_medical_metadata

.PHONY: read_medical
read_medical: read_medical_metadata read_medical_data verify_medical_data

.PHONY: reset_medical_metadata
reset_medical_metadata:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists tests;"

.PHONY: read_medical_metadata
read_medical_metadata:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/tests.sql

.PHONY: reset_medical_data
reset_medical_data:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists accidents;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists blood_pressure_readings;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists doctor_visits;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists foodmarble_aire_2_breath_tests;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists frequency_hearing_test_results;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists heinrich_incidents;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists pulse_oximeter_readings;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists test_results;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists test_sample_collections;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists supplements;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists vaccine_administrations;"

.PHONY: read_medical_data
read_medical_data:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/accidents.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/blood_pressure_readings.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/doctor_visits.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/foodmarble_aire_2_breath_tests.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/frequency_hearing_test_results.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/heinrich_incidents.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/pulse_oximeter_readings.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_sample_collections.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_results.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/supplements.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/vaccine_administrations.sql

.PHONY: verify_medical_data
verify_medical_data:
	python3 python/test_results_verification_queries.py
	python3 python/readings_verification_queries.py

.PHONY: reset_food
reset_food: reset_interpolated_food_data reset_food_data reset_food_metadata

.PHONY: read_food
read_food: read_food_metadata read_food_data interpolate_food_data verify_food_data

.PHONY: reset_food_metadata
reset_food_metadata:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_types;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists broad_food_types;"

.PHONY: read_food_metadata
read_food_metadata:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/broad_food_types.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_types.sql

.PHONY: reset_food_data
reset_food_data:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_preparations_and_openings;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_preparations_and_openings_lower_bounds;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_preparations_and_openings_upper_bounds;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_purchases;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_pauses;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_waste;"

.PHONY: read_food_data
read_food_data:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_preparations_and_openings_lower_bounds.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_preparations_and_openings_upper_bounds.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_preparations_and_openings_schema.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_preparations_and_openings_2024.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_preparations_and_openings_2025.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_schema.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_2021.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_2022.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_2023.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_2024.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases_2025.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_pauses.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_waste.sql

.PHONY: reset_interpolated_food_data
reset_interpolated_food_data:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists interpolated_food_consumption;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists interpolated_food_and_nutrient_consumption;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists interpolated_broad_food_type_and_nutrient_consumption;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists interpolated_nutrient_consumption;"

.PHONY: interpolate_food_data
interpolate_food_data:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/interpolated_food_consumption.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/interpolated_food_and_nutrient_consumption.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/interpolated_broad_food_type_and_nutrient_consumption.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/interpolated_nutrient_consumption.sql

.PHONY: verify_food_data
verify_food_data:
	grep 20 sql/food_purchases_2021.sql | grep -v 2021; :
	grep 20 sql/food_purchases_2022.sql | grep -v 2022; :
	grep 20 sql/food_purchases_2023.sql | grep -v 2023; :
	grep 20 sql/food_purchases_2024.sql | grep -v 2024; :
	grep 20 sql/food_purchases_2025.sql | grep -v 2025; :
	grep 20 sql/food_preparations_and_openings_2024.sql | grep -v 2024; :
	grep 20 sql/food_preparations_and_openings_2025.sql | grep -v 2025; :
	python3 python/food_types_verification_queries.py
	python3 python/food_purchases_verification_queries.py
	python3 python/food_preparations_and_openings_verification_queries.py
