create table food_preparations_and_openings_upper_bounds(
  `food_type` varchar(200),
  `num_days` integer,
  `quantity_upper_bound` decimal(8,4),
  primary key (food_type, num_days),
  constraint food_type_exists_for_upper_bound foreign key (food_type) references food_types (short_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_preparations_and_openings_upper_bounds(food_type, num_days, quantity_upper_bound) values
  ('Lundberg Sustainable California White Basmati Rice',7,2.5),
  ('TJ Kale',7,4),
  ('TJ English Shelled Peas',6,9),
  ('Beefsteak tomato',10,30),
  ('TJ Almond Milk',4,1),
  ('TJ Miso Ginger Broth',4,1),
  ('TJ Sauerkraut',6,1),
  ('Whole Foods Walnuts',4,1),
  ('Kite Hill Greek Style Plant-Based Yogurt',10,7),
  ('Udupi Palace spinach masala dosa',7,2);
