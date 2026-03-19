drop procedure if exists estimate_stocks_using_checkpoint;

DELIMITER ;;
create procedure estimate_stocks_using_checkpoint(measurement_date date, number_of_meals_consumed_by_measurement_time integer, estimation_date date, number_of_meals_consumed_by_estimation_time integer)
begin

drop temporary table if exists checkpointed_stocks_at_measurement;

create temporary table checkpointed_stocks_at_measurement as
select food_type,
unopened_stock as unopened_stock_at_measurement_time,
partially_opened_stock as partially_opened_stock_at_measurement_time from checkpointed_food_stocks
where checkpointed_food_stocks.measurement_date = measurement_date
and checkpointed_food_stocks.number_of_meals_consumed_by_measurement_time = number_of_meals_consumed_by_measurement_time;

drop temporary table if exists purchased_stocks_in_between;

create temporary table purchased_stocks_in_between as
select food_type, sum(quantity) as quantity_purchased from food_purchases
where (purchase_date, number_of_meals_consumed_so_far) > (measurement_date, number_of_meals_consumed_by_measurement_time)
and (purchase_date, number_of_meals_consumed_so_far) <= (estimation_date, number_of_meals_consumed_by_estimation_time)
group by food_type;

drop temporary table if exists prepared_or_opened_stocks_in_between;

create temporary table prepared_or_opened_stocks_in_between as
select food_type, sum(quantity) as quantity_prepared_or_opened from food_preparations_and_openings
where (preparation_or_opening_date, meal_index) > (measurement_date, number_of_meals_consumed_by_measurement_time)
and (preparation_or_opening_date, meal_index) <= (estimation_date, number_of_meals_consumed_by_estimation_time)
group by food_type;

drop temporary table if exists completed_stocks_in_between;

create temporary table completed_stocks_in_between as
select food_type, sum(quantity) as quantity_completed from food_preparations_and_openings
where (completion_date, meal_index) > (measurement_date, number_of_meals_consumed_by_measurement_time)
and (completion_date, meal_index) <= (estimation_date, number_of_meals_consumed_by_estimation_time)
group by food_type;

drop temporary table if exists wasted_stocks_before_preparation_or_opening_in_between;

create temporary table wasted_stocks_before_preparation_or_opening_in_between as
select food_type, sum(quantity) as quantity_wasted_before_preparation_or_opening from food_waste
-- food waste does not yet support meal index
where waste_date between measurement_date and estimation_date
and not after_preparation_or_opening
group by food_type;

drop temporary table if exists wasted_stocks_after_preparation_or_opening_in_between;

create temporary table wasted_stocks_after_preparation_or_opening_in_between as
select food_type, sum(quantity) as quantity_wasted_after_preparation_or_opening from food_waste
-- food waste does not yet support meal index
where waste_date between measurement_date and estimation_date
and after_preparation_or_opening
group by food_type;

drop table if exists grand_stocks_join;

create table grand_stocks_join as
select *,
coalesce(unopened_stock_at_measurement_time, 0) + coalesce(quantity_purchased, 0) - coalesce(quantity_prepared_or_opened, 0) - coalesce(quantity_wasted_before_preparation_or_opening, 0) as unopened_stock_at_estimation_time,
/* NOTE: There's a bug where if something got wasted after preparation
   or opening, and *then* got completed, we overcount the completion
   as being waste as well. This bug leads to negative values for
   kimchi. Therefore, we have commented out the subtraction of
   quantity_wasted_after_preparation_or_opening */
coalesce(partially_opened_stock_at_measurement_time, 0) + coalesce(quantity_prepared_or_opened, 0) - coalesce(quantity_completed, 0) /* - coalesce(quantity_wasted_after_preparation_or_opening, 0) */ as partially_opened_stock_at_estimation_time
from prepared_or_opened_stocks_in_between left join completed_stocks_in_between using (food_type) left join purchased_stocks_in_between using (food_type) left join checkpointed_stocks_at_measurement using (food_type) left join wasted_stocks_before_preparation_or_opening_in_between using (food_type) left join wasted_stocks_after_preparation_or_opening_in_between using (food_type);

end;;
DELIMITER ;

call estimate_stocks_using_checkpoint('2025-06-07',1,curdate(),3);

drop table if exists current_stocks;

create table current_stocks as select * from grand_stocks_join;
