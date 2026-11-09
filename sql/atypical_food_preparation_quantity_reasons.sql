create table atypical_food_preparation_quantity_reasons(
  food_type varchar(200),
  atypical_quantity_reason varchar(200),
  absent_food_type varchar(200),
  primary key (food_type, atypical_quantity_reason)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into atypical_food_preparation_quantity_reasons(food_type, atypical_quantity_reason, absent_food_type) values
  ('Red bell pepper','compensation for no eggplant','Eggplant'),
  ('Red bell pepper','compensation for tomato shortfall','Beefsteak tomato'),
  ('Red bell pepper','compensation for no green bell peppers','Green bell pepper'),
  ('Red bell pepper','compensation for no carrots','TJ Carrots'),
  ('Red bell pepper','partial spoilage',null),
  ('Red bell pepper','unusual purchased quantities',null);
