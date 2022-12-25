create table food_waste(
  `waste_date` date not null,
  `food_type` varchar(200),
  `quantity` float(11,2),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- I started keeping track of food waste on 2021-10-31!

insert into food_waste(waste_date, food_type, quantity, notes) values
  ('2021-10-31','Eggplant',1,'The eggplant had spoiled, so I threw it away.'),
  ('2021-11-06','Green bell pepper',1,'The bell pepper had spoiled, so I threw it away.'),
  ('2021-12-09','TJ Baby Spinach',0.3,'Some left-over spinach had spoiled, so I threw it away.');
