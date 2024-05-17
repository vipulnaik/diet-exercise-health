MYSQL_ARGS=
DATABASE=diet_exercise_health

.PHONY: init
init:
	mysql $(MYSQL_ARGS) -e "create database $(DATABASE);"

.PHONY: reset
reset:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists accidents;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists blood_pressure_readings;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists doctor_visits;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_waste;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_purchases;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists food_types;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists broad_food_types;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists heinrich_incidents;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists test_results;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists test_sample_collections;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists tests;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists supplements;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists vaccine_administrations;"

.PHONY: read
read:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/accidents.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/blood_pressure_readings.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/doctor_visits.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/broad_food_types.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_types.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_waste.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/heinrich_incidents.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/tests.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_sample_collections.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_results.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/supplements.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/vaccine_administrations.sql
	python3 python/food_types_verification_queries.py
	python3 python/food_purchases_verification_queries.py
	python3 python/test_results_verification_queries.py
