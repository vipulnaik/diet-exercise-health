MYSQL_ARGS=
DATABASE=diet_exercise_health

.PHONY: init
init:
	mysql $(MYSQL_ARGS) -e "create database $(DATABASE);"

.PHONY: reset
reset:
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists food_waste;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists food_purchases;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists food_types;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists test_results;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists test_sample_collections;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists tests;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists supplements;"
	mysql $(MYSQL_ARGS) -e "use $(DATABASE); drop table if exists vaccine_administrations;"

.PHONY: read
read:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_types.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_purchases.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/food_waste.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/tests.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_sample_collections.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/test_results.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/supplements.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/vaccine_administrations.sql
