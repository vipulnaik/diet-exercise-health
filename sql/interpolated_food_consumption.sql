drop temporary table if exists food_consumption_dates;

create temporary table food_consumption_dates as
with recursive t as (
    select '2024-05-30' as consumption_date
  union
    select date_add(t.consumption_date, interval 1 day) from t where date_add(t.consumption_date, interval 1 day) <= curdate()
)
select * from t;

drop temporary table if exists interpolated_food_consumption_pre;

create temporary table interpolated_food_consumption_pre as
select
food_consumption_dates.consumption_date,
food_preparations_and_openings.food_type,
food_preparations_and_openings.quantity as quantity_across_days,
-- numerator
case when consumption_date = completion_date and consumption_date = preparation_or_opening_date then (completion_meal_index - meal_index + 1) / 2
     when consumption_date = completion_date then coalesce(completion_meal_index / 2, 0.5)
     when consumption_date = preparation_or_opening_date then coalesce((3 - meal_index) / 2, 0.5)
     else 1 end as interpolated_fraction_of_day_consumed,
-- denominator
datediff(completion_date, preparation_or_opening_date) + (completion_meal_index - meal_index + 1) / 2 as num_days_for_consumption
from food_consumption_dates inner join food_preparations_and_openings
on food_consumption_dates.consumption_date >= food_preparations_and_openings.preparation_or_opening_date
and food_consumption_dates.consumption_date <= food_preparations_and_openings.completion_date
order by consumption_date;

drop table if exists interpolated_food_consumption;

create table interpolated_food_consumption(
  `consumption_date` date not null,
  `food_type` varchar(200),
  `interpolated_quantity` decimal(8,4),
  primary key (consumption_date, food_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into interpolated_food_consumption
select consumption_date, food_type,
sum((quantity_across_days * interpolated_fraction_of_day_consumed) / num_days_for_consumption) as interpolated_quantity
from interpolated_food_consumption_pre
where interpolated_fraction_of_day_consumed > 0
group by consumption_date, food_type;
