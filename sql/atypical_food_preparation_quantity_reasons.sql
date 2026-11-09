create table atypical_food_preparation_quantity_reasons(
  food_type varchar(200),
  atypical_quantity_reason varchar(200),
  primary key (food_type, atypical_quantity_reason)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into atypical_food_preparation_quantity_reasons(food_type, atypical_quantity_reason) values
  ('Red bell pepper','compensation for no eggplant'),
  ('Red bell pepper','compensation for tomato shortfall');

