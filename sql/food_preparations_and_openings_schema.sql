create table food_preparations_and_openings(
  `preparation_or_opening_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(8,4),
  `meal_index` integer,
  `completion_date` date,
  `completion_meal_index` integer,
  check(preparation_or_opening_date <= completion_date),
  check((preparation_or_opening_date, meal_index) <= (completion_date, completion_meal_index))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
