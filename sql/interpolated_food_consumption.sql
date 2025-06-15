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
food_preparations_and_openings.preparation_or_opening_date,
food_preparations_and_openings.quantity as quantity_across_days,
-- numerator
case when consumption_date between '2025-05-03' and '2025-06-06' and preparation_or_opening_date <= '2025-05-02' then 0 -- in Bengaluru so can't consume anything prepared or opened in Berkeley
     when consumption_date = completion_date and consumption_date = preparation_or_opening_date then (completion_meal_index - meal_index + 1) / 2
     when consumption_date = completion_date then coalesce(completion_meal_index / 2, 0.5)
     when consumption_date = preparation_or_opening_date then coalesce((3 - meal_index) / 2, 0.5)
     else 1 end as interpolated_fraction_of_day_consumed,
-- denominator
datediff(completion_date, preparation_or_opening_date) + (completion_meal_index - meal_index + 1) / 2 - (case when completion_date >= '2025-06-07' and preparation_or_opening_date <= '2025-05-02' then datediff('2025-06-07','2025-05-02') - 1 else 0 end) as num_days_for_consumption
from food_consumption_dates inner join food_preparations_and_openings
on food_consumption_dates.consumption_date >= food_preparations_and_openings.preparation_or_opening_date
and (food_consumption_dates.consumption_date <= food_preparations_and_openings.completion_date or food_preparations_and_openings.completion_date is null)
order by consumption_date;

drop table if exists average_num_days_for_consumption_by_food_type;

create table average_num_days_for_consumption_by_food_type as
select food_type,
avg(num_days_for_consumption / quantity_across_days) as average_num_days_for_consumption_per_unit_quantity
from interpolated_food_consumption_pre
group by food_type;

drop temporary table if exists interpolated_food_consumption_pre_fallback_to_avg;

create temporary table interpolated_food_consumption_pre_fallback_to_avg as
select consumption_date, food_type, quantity_across_days, preparation_or_opening_date,
interpolated_fraction_of_day_consumed,
coalesce(
  num_days_for_consumption,
  least(
    3 * coalesce(average_num_days_for_consumption_per_unit_quantity * quantity_across_days, 21),
    greatest(
      datediff(curdate(), preparation_or_opening_date) - (case when curdate() >= '2025-06-07' and preparation_or_opening_date <= '2025-05-02' then datediff('2025-06-07','2025-05-02') - 1 else 0 end),
      coalesce(average_num_days_for_consumption_per_unit_quantity * quantity_across_days, 21)
    )
  ),
  datediff(curdate(), preparation_or_opening_date)
) as num_days_for_consumption_fallback_to_avg
from interpolated_food_consumption_pre left join average_num_days_for_consumption_by_food_type
using (food_type);

drop table if exists interpolated_food_consumption;

create table interpolated_food_consumption(
  `consumption_date` date not null,
  `food_type` varchar(200),
  `interpolated_quantity` decimal(8,4),
  primary key (consumption_date, food_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into interpolated_food_consumption
select consumption_date, food_type,
sum((quantity_across_days * interpolated_fraction_of_day_consumed) / num_days_for_consumption_fallback_to_avg) as interpolated_quantity
from interpolated_food_consumption_pre_fallback_to_avg
where interpolated_fraction_of_day_consumed > 0
and datediff(consumption_date, preparation_or_opening_date) - (case when consumption_date >= '2025-06-07' and preparation_or_opening_date <= '2025-05-02' then datediff('2025-06-07','2025-05-02') - 1 else 0 end) <= floor(num_days_for_consumption_fallback_to_avg)
group by consumption_date, food_type;
