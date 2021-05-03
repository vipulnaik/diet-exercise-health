create table food_purchases(
  `purchase_date` date not null,
  `food_type` varchar(200),
  `quantity` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into food_purchases(purchase_date, food_type, quantity) values
  /* 2021-03-10 (verified with receipt) */
  ('2021-03-10','Beefsteak tomato',8),
  ('2021-03-10','TJ Baby Spinach',1),
  ('2021-03-10','TJ Whole Wheat Wraps',3),
  ('2021-03-10','TJ Almond Milk',1),
  ('2021-03-10','Eggplant',2),
  ('2021-03-10','Red bell pepper',2),
  ('2021-03-10','Green bell pepper',2),
  ('2021-03-10','TJ Veg Biryani',4),
  ('2021-03-10','TJ Misal Curry',2),
  /* 2021-03-10 Udupi Palace */
  ('2021-03-10','Udupi Palace spinach masala dosa',1),
  /* 2021-03-17 (verified with receipt) */
  ('2021-03-17','TJ Veg Biryani',5),
  ('2021-03-17','TJ Misal Curry',2),
  ('2021-03-17','TJ Whole Wheat Wraps',3),
  ('2021-03-17','TJ Carrots',1),
  ('2021-03-17','TJ Almond Milk',1),
  ('2021-03-17','Red bell pepper',2),
  ('2021-03-17','Beefsteak tomato',8),
  ('2021-03-17','Eggplant',2),
  ('2021-03-17','Green bell pepper',2),
  /* 2021-03-17 Udupi Palace */
  ('2021-03-17','Udupi Palace spinach masala dosa',1),
  /* 2021-03-22 -- missing receipt and reconstruction from memory may be sloppy */
  ('2021-03-22','Beefsteak tomato',8),
  ('2021-03-22','TJ Baby Spinach',1),
  ('2021-03-22','TJ Whole Wheat Wraps',2),
  ('2021-03-22','Eggplant',2),
  ('2021-03-22','Red bell pepper',2),
  ('2021-03-22','Green bell pepper',2),
  ('2021-03-22','TJ Veg Biryani',4),
  ('2021-03-22','TJ Misal Curry',2),
  /* 2021-03-22 Udupi Palace */
  ('2021-03-22','Udupi Palace spinach masala dosa',1),
  /* 2021-03-25 Mehak Indian Cuisine */
  ('2021-03-25','Mehak Indian Cuisine standard set',1),
  /* 2021-03-29 (verified with receipt) */
  ('2021-03-29','TJ Veg Biryani',5),
  ('2021-03-29','TJ Misal Curry',2),
  ('2021-03-29','TJ Almond Milk',1),
  ('2021-03-29','TJ Sauerkraut',2),
  ('2021-03-29','TJ Whole Wheat Wraps',3),
  ('2021-03-29','TJ Carrots',1),
  ('2021-03-29','TJ Baby Spinach',1),
  ('2021-03-29','Eggplant',2),
  ('2021-03-29','Beefsteak tomato',7),
  ('2021-03-29','Green bell pepper',2),
  ('2021-03-29','Orange bell pepper',2),
  /* 2021-03-29 Udupi Palace */
  ('2021-03-29','Udupi Palace spinach masala dosa',1),
  /* 2021-04-03 (verified with receipt) */
  ('2021-04-03','TJ Almond Milk',1),
  ('2021-04-03','Trader Giotto''s Olive Oil',2),
  ('2021-04-03','TJ Sauerkraut',1),
  ('2021-04-03','TJ Whole Wheat Wraps',2),
  ('2021-04-03','TJ Veg Biryani',3),
  ('2021-04-03','TJ Misal Curry',2),
  /* 2021-04-03 Udupi Palace */
  ('2021-04-03','Udupi Palace spinach masala dosa',1),
  /* 2021-04-06 Bangkok Thai Cuisine */
  ('2021-04-06','Bangkok Thai Cuisine yellow curry tofu',1),
  /* 2021-04-09 (reconstructed from memory) */
  ('2021-04-09','TJ Veg Biryani',5),
  ('2021-04-09','TJ Misal Curry',2),
  ('2021-04-09','TJ Almond Milk',1),
  ('2021-04-03','TJ Whole Wheat Wraps',2),
  ('2021-04-09','TJ Baby Spinach',1),
  ('2021-04-09','Eggplant',2),
  ('2021-04-09','Beefsteak tomato',8), /* Could be anywhere 7 to 9 */
  ('2021-04-09','Green bell pepper',2),
  ('2021-04-09','Red bell pepper',2),
  ('2021-04-09','TJ Sauerkraut',2),
  /* 2021-04-09 Udupi Palace */
  ('2021-04-09','Udupi Palace spinach masala dosa',1),
  /* 2021-04-13 Bangkok Thai Cuisine */
  ('2021-04-13','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-04-13','Bangkok Thai Cuisine white rice',1),
  /* 2021-04-16 (verified with receipt) */
  ('2021-04-16','Beefsteak tomato',10),
  ('2021-04-16','TJ Misal Curry',2),
  ('2021-04-16','TJ Veg Biryani',6),
  ('2021-04-16','Green bell pepper',2),
  ('2021-04-16','Eggplant',2),
  ('2021-04-16','TJ Carrots',1),
  ('2021-04-16','Red bell pepper',2),
  ('2021-04-16','TJ Baby Spinach',1),
  ('2021-04-16','TJ Whole Wheat Wraps',3),
  /* 2021-04-16 Udupi Palace */
  ('2021-04-16','Udupi Palace spinach masala dosa',1),
  /* 2021-04-20 Mehak Indian Cuisine */
  ('2021-04-20','Mehak Indian Cuisine standard set',1),
  /* 2021-04-24 (verified with receipt) */
  ('2021-04-24','TJ Almond Milk',1),
  ('2021-04-24','TJ Veg Biryani',6),
  ('2021-04-24','TJ Misal Curry',2),
  ('2021-04-24','TJ Whole Wheat Wraps',3),
  ('2021-04-24','Red bell pepper',2),
  ('2021-04-24','Green bell pepper',2),
  ('2021-04-24','TJ Sauerkraut',2),
  ('2021-04-24','Beefsteak tomato',7),
  ('2021-04-24','Eggplant',2),
  ('2021-04-24','TJ Carrots',1),
  ('2021-04-24','TJ Baby Spinach',1),
  /* 2021-04-24 Udupi Palace */
  ('2021-04-24','Udupi Palace spinach masala dosa',1),
  /* 2021-04-28 (verified with receipt) */
  ('2021-04-28','TJ Almond Milk',1),
  ('2021-04-28','TJ Whole Wheat Wraps',2),
  ('2021-04-28','Red bell pepper',2),
  ('2021-04-28','Beefsteak tomato',7),
  ('2021-04-28','Green bell pepper',2),
  ('2021-04-28','Eggplant',2),
  ('2021-04-28','TJ Veg Biryani',5),
  ('2021-04-28','TJ Misal Curry',2),
  /* 2021-04-28 Udupi Palace */
  ('2021-04-28','Udupi Palace spinach masala dosa',1),
  /* 2021-05-02 Bangkok Thai Cuisine */
    /* 2021-04-13 Bangkok Thai Cuisine */
  ('2021-04-13','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-04-13','Bangkok Thai Cuisine white rice',1);
