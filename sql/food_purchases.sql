create table food_purchases(
  `purchase_date` date not null,
  `food_type` varchar(200),
  `quantity` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into food_purchases(purchase_date, food_type, quantity) values
  /* 2021-03-10 Trader Joe's (verified with receipt) */
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
  /* 2021-03-17 Trader Joe's (verified with receipt) */
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
  /* 2021-03-29 Trader Joe's (verified with receipt) */
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
  /* 2021-04-03 Trader Joe's (verified with receipt) */
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
  /* 2021-04-16 Trader Joe's (verified with receipt) */
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
  /* 2021-04-24 Trader Joe's (verified with receipt) */
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
  /* 2021-04-28 Trader Joe's (verified with receipt) */
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
  ('2021-04-13','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-04-13','Bangkok Thai Cuisine white rice',1),
  /* 2021-05-05 Trader Joe's (verified with receipt) */
  ('2021-05-05','TJ Carrots',1),
  ('2021-05-05','TJ Whole Wheat Wraps',2),
  ('2021-05-05','Beefsteak tomato',8),
  ('2021-05-05','TJ Baby Spinach',1),
  ('2021-05-05','Eggplant',2),
  ('2021-05-05','Green bell pepper',2),
  ('2021-05-05','Red bell pepper',2),
  ('2021-05-05','TJ Misal Curry',2),
  ('2021-05-05','TJ Veg Biryani',6),
  /* 2021-05-05 Udupi Palace */
  ('2021-05-05','Udupi Palace spinach masala dosa',1),
  /* 2021-05-09 Mehak Indian Cuisine */
  ('2021-05-09','Mehak Indian Cuisine standard set',1),
  /* 2021-05-13 Trader Joe's */
  ('2021-05-13','TJ Veg Biryani',6),
  ('2021-05-13','TJ Misal Curry',2),
  ('2021-05-13','TJ Almond Milk',1),
  ('2021-05-13','TJ Baby Spinach',1),
  ('2021-05-13','TJ Whole Wheat Wraps',3),
  ('2021-05-13','Eggplant',2),
  ('2021-05-13','TJ Carrots',1),
  ('2021-05-13','Red bell pepper',2),
  ('2021-05-13','Green bell pepper',2),
  ('2021-05-13','Beefsteak tomato',8),
  /* 2021-05-16 Udupi Palace */
  ('2021-05-16','Udupi Palace spring dosa',1),
  /* 2021-05-16 Trader Joe's (verified with receipt) */
  ('2021-05-16','Red bell pepper',2),
  ('2021-05-16','Orange bell pepper',2),
  ('2021-05-16','TJ Whole Wheat Wraps',2),
  ('2021-05-16','Beefsteak tomato',8),
  ('2021-05-16','Eggplant',2),
  /* 2021-05-19 Udupi Palace */
  ('2021-05-05','Udupi Palace spinach masala dosa',1),
  /* 2021-05-19 Trader Joe's (verified with receipt) */
  ('2021-05-19','TJ Misal Curry',4),
  ('2021-05-19','TJ Veg Biryani',6),
  ('2021-05-19','TJ Sauerkraut',3),
  /* 2021-05-22 Udupi Palace */
  ('2021-05-22','Udupi Palace spinach masala dosa',1),
  /* 2021-05-22 Trader Joe's (verified with receipt) */
  ('2021-05-22','TJ Almond Milk',1),
  ('2021-05-22','TJ Baby Spinach',1),
  ('2021-05-22','Eggplant',2),
  ('2021-05-22','Beefsteak tomato',9),
  ('2021-05-22','Green bell pepper',2),
  ('2021-05-22','TJ Carrots',1),
  ('2021-05-22','TJ Whole Wheat Wraps',1),
  ('2021-05-22','Red bell pepper',2),
  ('2021-05-22','TJ Misal Curry',4),
  ('2021-05-22','TJ Veg Biryani',2),
  /* 2021-05-27 Udupi Palace */
  ('2021-05-27','Udupi Palace spinach masala dosa',1),
  /* 2021-05-27 Trader Joe's (verified with receipt) */
  ('2021-05-27','TJ Misal Curry',4),
  ('2021-05-27','TJ Veg Biryani',2),
  ('2021-05-27','TJ Whole Wheat Wraps',2),
  /* 2021-05-29 Pakwan */
  ('2021-05-29','Pakwan meal set (2 basmati rices; dal, chana aloo, aloo sag, mixed veg curry)',1),
  /* 2021-06-02 Trader Joe's (verified with receipt) */
  ('2021-06-02','TJ Almond Milk',1),
  ('2021-06-02','TJ Sauerkraut',2),
  ('2021-06-02','TJ Carrots',1),
  ('2021-06-02','TJ Whole Wheap Wraps',3),
  ('2021-06-02','TJ Baby Spinach',1),
  ('2021-06-02','Trader Joe''s 500ml Olive Oil',2),
  ('2021-06-02','Green bell pepper',2),
  ('2021-06-02','Eggplant',2),
  ('2021-06-02','Beefsteak tomato',9),
  ('2021-06-02','Red bell pepper',2),
  ('2021-06-02','TJ Misal Curry',5),
  ('2021-06-02','TJ Veg Birani',5),
  /* 2021-06-02 Udupi Palace */
  ('2021-06-02','Udupi Palace spinach masala dosa',1),
  /* 2021-06-05 Trader Joe's (verified with receipt) */
  ('2021-06-05','TJ Misal Curry',4),
  ('2021-06-05','TJ Veg Biryani',2),
  ('2021-06-05','TJ Almond Milk',1),
  ('2021-06-05','TJ Carrots',1),
  ('2021-06-05','Beefsteak tomato',7),
  ('2021-06-05','Yellow bell pepper',2),
  ('2021-06-05','Orange bell pepper',2),
  ('2021-06-05','Eggplant',2),
  /* 2021-06-05 Udupi Palace */
  ('2021-06-05','Udupi Palace spinach masala dosa',1),
  /* 2021-06-09 Trader Joe's (verified with receipt) */
  ('2021-06-09','TJ Baby Spinach',1),
  ('2021-06-09','TJ Whole Wheap Wraps',3),
  ('2021-06-09','TJ Kalamata Olive Oil',1),
  ('2021-06-09','TJ Sauerkraut',2),
  ('2021-06-09','TJ Veg Biryani',3),
  ('2021-06-09','TJ Misal Curry',4),
  /* 2021-06-09 Udupi Palace */
  ('2021-06-09','Udupi Palace spinach masala dosa',1),
  /* 2021-06-12 Trader Joe's (verified witth receipt) */
  ('2021-06-12','TJ Almond Milk',1),
  ('2021-06-12','TJ Carrots',1),
  ('2021-06-12','Green bell pepper',2),
  ('2021-06-12','TJ Whole Wheat Wraps',2),
  ('2021-06-12','Eggplant',2),
  ('2021-06-12','Red bell pepper',2),
  ('2021-06-12','Beefsteak tomato',9),
  ('2021-06-12','TJ Misal Curry',3),
  ('2021-06-12','TJ Veg Biryani',3),
  /* 2021-06-12 Udupi Palace */
  ('2021-06-12','Udupi Palace spinach masala dosa',1),
  /* 2021-06-15 Mehak Indian Cuisine */
  ('2021-06-15','Mehak Indian Cuisine standard set',1);
