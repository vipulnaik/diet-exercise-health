create table food_waste(
  `waste_date` date not null,
  `food_type` varchar(200),
  `quantity` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- I started keeping track of food waste on 2021-10-31!

insert into food_waste(waste_date, food_type, quantity) values
  ('2021-10-31','Eggplant',1);
