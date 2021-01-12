create table food_types(
  `short_name` varchar(200) primary key not null,
  `long_name` varchar(200),
  `url` varchar(200),
  `calories` int(11),
  `trans_fat` int(11),
  `sodium` int(11),
  `total_carb` int(11),
  `fiber` int(11),
  `sugar` int(11),
  `vitamin_a` int(11),
  `vitamin_c` int(11),
  `calcium` int(11),
  `notes` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
