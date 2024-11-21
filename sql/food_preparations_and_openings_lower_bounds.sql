create table food_preparations_and_openings_lower_bounds(
  `food_type` varchar(200),
  `num_days` integer,
  `quantity_lower_bound` decimal(11,2),
  primary key (food_type, num_days),
  constraint food_type_exists_for_lower_bound foreign key (food_type) references food_types (short_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_preparations_and_openings_lower_bounds(food_type, num_days, quantity_lower_bound) values
  ('Lundberg Sustainable California White Basmati Rice',12,1.95),
  ('TJ Kale',10,2),
  ('TJ English Shelled Peas',14,3),
  ('Beefsteak tomato',14,8),
  ('TJ Almond Milk',10,1),
  ('TJ Miso Ginger Broth',10,1),
  ('TJ Sauerkraut',21,1),
  ('TJ Walnuts',14,1),
  ('Kite Hill Greek Style Plant-Based Yogurt',45,1),
  ('Udupi Palace spinach masala dosa',45,1);
