create table food_purchases(
  purchase_date date not null,
  food_type varchar(200),
  quantity decimal(8,4),
  number_of_meals_consumed_so_far integer
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
