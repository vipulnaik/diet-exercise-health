create table food_purchases(
  `purchase_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(11,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ('2021-05-02','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-05-02','Bangkok Thai Cuisine white rice',1),
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
  /* 2021-05-13 Udupi Palace */
  ('2021-05-13','Udupi Palace spring dosa',1),
  /* 2021-05-16 Trader Joe's (verified with receipt) */
  ('2021-05-16','Red bell pepper',2),
  ('2021-05-16','Orange bell pepper',2),
  ('2021-05-16','TJ Whole Wheat Wraps',2),
  ('2021-05-16','Beefsteak tomato',8),
  ('2021-05-16','Eggplant',2),
  /* 2021-05-16 Udupi Palace */
  ('2021-05-16','Udupi Palace spring dosa',1),
  /* 2021-05-19 Trader Joe's (verified with receipt) */
  ('2021-05-19','TJ Misal Curry',4),
  ('2021-05-19','TJ Veg Biryani',6),
  ('2021-05-19','TJ Sauerkraut',3),
  /* 2021-05-19 Udupi Palace */
  ('2021-05-19','Udupi Palace spinach masala dosa',1),
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
  /* 2021-05-22 Udupi Palace */
  ('2021-05-22','Udupi Palace spinach masala dosa',1),
  /* 2021-05-27 Trader Joe's (verified with receipt) */
  ('2021-05-27','TJ Misal Curry',4),
  ('2021-05-27','TJ Veg Biryani',2),
  ('2021-05-27','TJ Whole Wheat Wraps',2),
  /* 2021-05-27 Udupi Palace */
  ('2021-05-27','Udupi Palace spinach masala dosa',1),
  /* 2021-05-29 Pakwan */
  ('2021-05-29','Pakwan meal set',1),
  ('2021-05-29','Pakwan basmati rice',2),
  /* 2021-06-02 Trader Joe's (verified with receipt) */
  ('2021-06-02','TJ Almond Milk',1),
  ('2021-06-02','TJ Sauerkraut',2),
  ('2021-06-02','TJ Carrots',1),
  ('2021-06-02','TJ Whole Wheat Wraps',3),
  ('2021-06-02','TJ Baby Spinach',1),
  ('2021-06-02','Trader Giotto''s 500ml Olive Oil',2),
  ('2021-06-02','Green bell pepper',2),
  ('2021-06-02','Eggplant',2),
  ('2021-06-02','Beefsteak tomato',9),
  ('2021-06-02','Red bell pepper',2),
  ('2021-06-02','TJ Misal Curry',5),
  ('2021-06-02','TJ Veg Biryani',5),
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
  ('2021-06-09','TJ Whole Wheat Wraps',3),
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
  ('2021-06-15','Mehak Indian Cuisine standard set',1),
  /* 2021-06-19 Trader Joe's (verified with receipt) */
  ('2021-06-19','TJ Misal Curry',4),
  ('2021-06-19','TJ Veg Biryani',3),
  ('2021-06-19','TJ Carrots',1),
  ('2021-06-19','TJ Baby Spinach',1),
  ('2021-06-19','TJ Whole Wheat Wraps',2),
  ('2021-06-19','Red bell pepper',2),
  ('2021-06-19','Beefsteak tomato',7),
  ('2021-06-19','Eggplant',2),
  ('2021-06-19','Green bell pepper',2),
  /* 2021-06-19 Udupi Palace */
  ('2021-06-19','Udupi Palace spinach masala dosa',1),
  /* 2021-06-23 Trader Joe's (verified with receipt) */
  ('2021-06-23','TJ Misal Curry',3),
  ('2021-06-23','TJ Veg Biryani',2),
  ('2021-06-23','TJ Carrots',1),
  ('2021-06-23','TJ Whole Wheat Wraps',1),
  ('2021-06-23','Red bell pepper',2),
  ('2021-06-23','Green bell pepper',2),
  ('2021-06-23','Eggplant',2),
  ('2021-06-23','Beefsteak tomato',7),
  ('2021-06-23','TJ Sauerkraut',2),
  ('2021-06-23','Trader Giotto''s Olive Oil',2),
  /* 2021-06-23 Udupi Palace */
  ('2021-06-23','Udupi Palace spinach masala dosa',1),
  /* 2021-06-27 Trader Joe's (verified with receipt 2:41 PM) */
  ('2021-06-27','TJ Whole Wheat Wraps',2),
  ('2021-06-27','TJ Almond Milk',1),
  ('2021-06-27','TJ Misal Curry',3),
  ('2021-06-27','TJ Veg Biryani',2),
  /* 2021-06-27 Udupi Palace */
  ('2021-06-27','Udupi Palace spinach masala dosa',1),
  /* 2021-07-01 Trader Joe's (verified with receipt 6:06 PM) */
  ('2021-07-01','TJ Misal Curry',4),
  ('2021-07-01','TJ Veg Biryani',3),
  ('2021-07-01','TJ Carrots',1),
  ('2021-07-01','Green bell pepper',2),
  ('2021-07-01','Red bell pepper',2),
  ('2021-07-01','Eggplant',2),
  ('2021-07-01','TJ Baby Spinach',1),
  ('2021-07-01','Beefsteak tomato',8),
  ('2021-07-01','TJ Whole Wheat Wraps',1),
  /* 2021-07-01 Udupi Palace */
  ('2021-07-01','Udupi Palace spinach masala dosa',1),
  /* 2021-07-02 Mehak Indian Cuisine */
  ('2021-07-02','Mehak Indian Cuisine standard set',1),
  /* 2021-07-05 Bangkok Thai Cuisine: order at 1 PM, total cost $15.82 */
  ('2021-07-05','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-07-05','Bangkok Thai Cuisine white rice',1),
  /* 2021-07-09 Trader Joe's; checkout at 5:21 PM; total cost $45.64 (paid by cash) */
  ('2021-07-09','TJ Misal Curry',5),
  ('2021-07-09','TJ Veg Biryani',3),
  ('2021-07-09','Eggplant',2),
  ('2021-07-09','TJ Carrots',1),
  ('2021-07-09','Beefsteak tomato',7),
  ('2021-07-09','TJ Baby Spinach',1),
  ('2021-07-09','TJ Whole Wheat Wraps',3),
  ('2021-07-09','Green bell pepper',4),
  /* 2021-07-09 Udupi Palace; order at 5:27 PM; total cost 13.06 */
  ('2021-07-09','Udupi Palace spinach masala dosa',1),
  /* 2021-07-14 Trader Joe's; checkout at 7:02 PM; total cost $44.68 (paid by cash) */
  ('2021-07-14','TJ Carrots',1),
  ('2021-07-14','Trader Giotto''s Olive Oil',2),
  ('2021-07-14','Eggplant',2),
  ('2021-07-14','TJ Whole Wheat Wraps',2),
  ('2021-07-14','TJ Misal Curry',3),
  ('2021-07-14','TJ Veg Biryani',1),
  ('2021-07-14','Red bell pepper',2),
  ('2021-07-14','Beefsteak tomato',7),
  ('2021-07-14','Orange bell pepper',2),
  /* 2021-07-14 Udupi Palace; total cost $13.06 */
  ('2021-07-14','Udupi Palace spinach masala dosa',1),
  /* 2021-07-19 Mehak Indian Cuisine */
  ('2021-07-19','Mehak Indian Cuisine standard set',1),
  /* 2021-07-23 Trader Joe's; checkout at 4:06 PM; total cost $44.35 (paid by cash) */
  ('2021-07-23','TJ Misal Curry',4),
  ('2021-07-23','TJ Veg Biryani',2),
  ('2021-07-23','TJ Almond Milk',1),
  ('2021-07-23','TJ Carrots',1),
  ('2021-07-23','Red bell pepper',2),
  ('2021-07-23','Eggplant',1), /* 1 less than the 2 I intnded */
  ('2021-07-23','Green bell pepper',2),
  ('2021-07-23','Beefsteak tomato',8),
  ('2021-07-23','TJ Baby Spinach',1),
  ('2021-07-23','TJ Whole Wheat Wraps',3),
  /* 2021-07-23 Udupi Palace; total cost $13.06 */
  ('2021-07-23','Udupi Palace spinach masala dosa',1),
  /* 2021-07-28 Trader Joe's; checkout at 3:51 PM 
     (previous trip to Ace Hardware checkout at 3:37 PM); total cost $50.74 (paid by cash) */
  ('2021-07-28','TJ Almond Milk',1),
  ('2021-07-28','TJ Sauerkraut',2),
  ('2021-07-28','TJ Baby Spinach',1),
  ('2021-07-28','TJ Carrots',1),
  ('2021-07-28','TJ Misal Curry',3),
  ('2021-07-28','TJ Veg Biryani',1),
  ('2021-07-28','Beefsteak tomato',7),
  ('2021-07-28','Green bell pepper',2),
  ('2021-07-28','Eggplant',2),
  ('2021-07-28','TJ Whole Wheat Wraps',4),
  ('2021-07-28','Red bell pepper',2),
  /* 2021-07-28 Udupi Palace; total cost $13.06 */
  ('2021-07-28','Udupi Palace spinach masala dosa',1),
  /* 2021-08-02 Trader Joe's; checkout at 4:02 PM; total cost $47.67 (paid by cash) */
  ('2021-08-02','TJ Misal Curry',5),
  ('2021-08-02','TJ Veg Biryani',2),
  ('2021-08-02','TJ Baby Spinach',1),
  ('2021-08-02','TJ Carrots',1),
  ('2021-08-02','TJ Walnuts',1),
  ('2021-08-02','Beefsteak tomato',5),
  ('2021-08-02','TJ Whole Wheat Wraps',2),
  ('2021-08-02','Red bell pepper',2),
  ('2021-08-02','Green bell pepper',2),
  ('2021-08-02','Eggplant',2),
  /* 2021-08-02 Udupi Palace; total cost $13.06 */
  ('2021-08-02','Udupi Palace spinach masala dosa',1),
  /* 2021-08-05 Bangkok Thai Cuisine; total cost $15.82; trip around 2:05 PM to 2:10 PM */
  ('2021-08-05','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-08-05','Bangkok Thai Cuisine white rice',1),
  /* 2021-08-09 Trader Joe's; checkout at 3:42 PM; total cost $43.05 (paid by cash) */
  ('2021-08-09','TJ Misal Curry',4),
  ('2021-08-09','TJ Veg Biryani',2),
  ('2021-08-09','TJ Carrots',1),
  ('2021-08-09','TJ Whole Wheat Wraps',3),
  ('2021-08-09','TJ Baby Spinach',1),
  ('2021-08-09','Beefsteak tomato',8),
  ('2021-08-09','Eggplant',2),
  ('2021-08-09','Red bell pepper',2),
  ('2021-08-09','Green bell pepper',2),
  /* 2021-08-09 Udupi Palace; order at 3:31 PM, pickup around 3:45 PM; total cost $13.06 */
  ('2021-08-09','Udupi Palace spinach masala dosa',1),
  /* 2021-08-11 Mehak Indian Cuisine; online order at 6:02 PM, departure around 6:12 PM, pickup around 6:30 PM */
  ('2021-08-11','Mehak Indian Cuisine standard set',1),
  /* 2021-08-16 Trader Joe's; checkout at 3:25 PM; total cost $49.44 (paid by cash) */
  ('2021-08-16','TJ Almond Milk',1),
  ('2021-08-16','TJ Sauerkraut',2),
  ('2021-08-16','TJ Baby Spinach',1),
  ('2021-08-16','TJ Carrots',1),
  ('2021-08-16','Eggplant',2),
  ('2021-08-16','TJ Whole Wheat Wraps',2),
  ('2021-08-16','Beefsteak tomato',7),
  ('2021-08-16','Red bell pepper',2),
  ('2021-08-16','Green bell pepper',2),
  ('2021-08-16','TJ Misal Curry',4),
  ('2021-08-16','TJ Veg Biryani',2),
  /* 2021-08-16 Udupi Palace; order around 3:15 PM; pickup around 3:28 PM */
  ('2021-08-16','Udupi Palace spinach masala dosa',1),
  /* 2021-08-18 Trader Joe's; checkout at 6:37 PM; total cost $20.97 (paid by cash) */
  ('2021-08-18','Trader Giotto''s Olive Oil',2),
  ('2021-08-18','TJ Walnuts',1),
  /* 2021-08-18 Udupi Palace; order around 6:30 PM; pickup around 6:40 PM */
  ('2021-08-18','Udupi Palace spinach masala dosa',1),
  /* 2021-08-23 Trader Joe's; checkout at 5:33 PM; total cost $22.42 (paid by cash) */
  ('2021-08-23','TJ Misal Curry',3),
  ('2021-08-23','TJ Veg Biryani',1),
  ('2021-08-23','TJ Almond Milk',1),
  ('2021-08-23','TJ Whole Wheat Wraps',3),
  /* 2021-08-23 Udupi Palace; order around 5:22 PM; pickup around 5:35 PM; total cost $13.06 */
  ('2021-08-23','Udupi Palace spinach masala dosa',1),
  /* 2021-08-26 Trader Joe's; checkout at 4:23 PM; total cost $23.63 (paid by cash) */
  ('2021-08-26','TJ Carrots',1),
  ('2021-08-26','TJ Baby Spinach',1),
  ('2021-08-26','TJ Whole Wheat Wraps',2),
  ('2021-08-26','Beefsteak tomato',7),
  ('2021-08-26','Red bell pepper',2),
  ('2021-08-26','Green bell pepper',2),
  ('2021-08-26','Eggplant',2),
  /* 2021-08-26 Udupi Palace; order around 4:19 PM; pickup around 4:35 PM; total cost $13.06 */
  ('2021-08-26','Udupi Palace spinach masala dosa',1),
  /* 2021-09-01 Trader Joe's; checkout at 3:51 PM; total cost $34.19 (paid by card) */
  ('2021-09-01','TJ Almond Milk',1),
  ('2021-09-01','TJ Misal Curry',2),
  ('2021-09-01','TJ Baby Spinach',1),
  ('2021-09-01','Beefsteak tomato',7),
  ('2021-09-01','Eggplant',2),
  ('2021-09-01','Red bell pepper',2),
  ('2021-09-01','TJ Whole Wheat Wraps',3),
  ('2021-09-01','TJ Carrots',1),
  ('2021-09-01','Green bell pepper',2),
  /* 2021-09-01 Udupi Palace; order around 3:35 PM; pickup around 3:55 PM; total cost $13.17 */
  ('2021-09-01','Udupi Palace spinach masala dosa',1),
  /* 2021-09-03 Bangkok Thai Cuisine; total cost $18 ($16 + $2 tip) */
  ('2021-09-03','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-09-03','Bangkok Thai Cuisine white rice',1),
  /* 2021-09-07 Bangkok Thai Cuisine; total cost $3.31 */
  ('2021-09-07','Bangkok Thai Cuisine white rice',2),
  /* 2021-09-08 Trader Joe's; checkout at 3:22 PM; total cost $41.47 (paid by card) */
  ('2021-09-08','TJ Misal Curry',3),
  ('2021-09-08','TJ Almond Milk',1),
  ('2021-09-08','TJ Carrots',1),
  ('2021-09-08','Beefsteak tomato',7),
  ('2021-09-08','TJ Baby Spinach',1),
  ('2021-09-08','Eggplant',2),
  ('2021-09-08','Red bell pepper',2),
  ('2021-09-08','Green bell pepper',2),
  ('2021-09-08','TJ Walnuts',1),
  ('2021-09-08','TJ Whole Wheat Wraps',3),
  /* 2021-09-08 Udupi Palace; order around 3:13 PM; pickup around 3:25 PM; total cost $13.17 (paid by cash) */
  ('2021-09-08','Udupi Palace spinach masala dosa',1),
  /* 2021-09-11 Mehak Indian Cuisine; online order at 1:27 PM; pickup around 2 PM */
  ('2021-09-11','Mehak Indian Cuisine standard set',1),
  /* 2021-09-12 Bangkak Thai Cuisine; total cost $1.65 */
  ('2021-09-12','Bangkok Thai Cuisine white rice',1),
  /* 2021-09-13 Bangkak Thai Cuisine; total cost $1.65 */
  ('2021-09-13','Bangkok Thai Cuisine white rice',1),
  /* 2021-09-15 Trader Joe's; checkout at 4:16 PM; total cost $32.90 (paid by card);
     I did not go to Udupi Palace on this day as I wanted to keep spicy food
     consumption low given anal issues + upcoming periodontal therapy */
  ('2021-09-15','TJ Almond Milk',1),
  ('2021-09-15','Beefsteak tomato',7),
  ('2021-09-15','TJ Carrots',1),
  ('2021-09-15','Eggplant',2),
  ('2021-09-15','TJ Baby Spinach',1),
  ('2021-09-15','Green bell pepper',2),
  ('2021-09-15','Red bell pepper',2),
  ('2021-09-15','TJ Whole Wheat Wraps',4),
  /* 2021-09-20 Trader Joe's; checkout at 3:02 PM; total cost $27.91 (paid by cash);
     I did not go to Udupi Palace on this day as I wanted to keep spicy food
     consumption low given anal issues + upcoming periodontal therapy */
  ('2021-09-20','TJ Carrots',1),
  ('2021-09-20','TJ Baby Spinach',1),
  ('2021-09-20','Beefsteak tomato',8),
  ('2021-09-20','Red bell pepper',2),
  ('2021-09-20','Eggplant',2),
  ('2021-09-20','Green bell pepper',2),
  ('2021-09-20','TJ Whole Wheat Wraps',3),
  /* 2021-09-23 Trader Joe's; checkout at 5:12 PM; total cost $45.48 (paid by card) */
  ('2021-09-23','TJ Misal Curry',2),
  ('2021-09-23','Trader Giotto''s Olive Oil',2),
  ('2021-09-23','Eggplant',2),
  ('2021-09-23','TJ Baby Spinach',1),
  ('2021-09-23','TJ Carrots',1),
  ('2021-09-23','Orange bell pepper',2),
  ('2021-09-23','Red bell pepper',2),
  ('2021-09-23','Beefsteak tomato',7),
  ('2021-09-23','TJ Whole Wheat Wraps',3),
  /* 2021-09-23 Udupi Palace; total cost $13.17 */
  ('2021-09-23','Udupi Palace spinach masala dosa',1),
  /* 2021-09-28 Trader Joe's; total cost $26.57 paid by card;
     no Udupi Palace in this trip */
  ('2021-09-28','TJ Almond Milk',1), /* vanilla */
  ('2021-09-28','TJ Carrots',1),
  ('2021-09-28','Eggplant',2),
  ('2021-09-28','Beefsteak tomato',4),
  ('2021-09-28','TJ Baby Spinach',1),
  ('2021-09-28','TJ Whole Wheat Wraps',4),
  /* 2021-09-29 Bangkok Thai Cuisine; total cost $3.31*/
  ('2021-09-29','Bangkok Thai Cuisine white rice',2),
  /* 2021-10-01 Udupi Palace; total cost $13.17;
     I went to Trader Joe's and didn't buy anything */
  ('2021-10-01','Udupi Palace spinach masala dosa',1),
  /* 2021-10-03 Trader Joe's; total cost $18.84 (paid by card) */
  ('2021-10-03','TJ Veg Biryani',1),
  ('2021-10-03','TJ Almond Milk',1),
  ('2021-10-03','TJ Whole Wheat Wraps',4),
  /* 2021-10-03 Udupi Palace; total cost $13.17 */
  ('2021-10-03','Udupi Palace spinach masala dosa',1),
  /* 2021-10-06 Bangkok Thai Cuisine; total cost $3.31*/
  ('2021-10-06','Bangkok Thai Cuisine white rice',2),
  /* 2021-10-08 Udupi Palace; order at 5:14 PM; total cost $13.17 */
  ('2021-10-08','Udupi Palace spinach masala dosa',1),
  /* 2021-10-08 Trader Joe's; checkout at 5:25 PM; total cost $32.98 (paid by cash) */
  ('2021-10-08','TJ Misal Curry',3),
  ('2021-10-08','TJ Carrots',1),
  ('2021-10-08','Green bell pepper',1),
  ('2021-10-08','Eggplant',2),
  ('2021-10-08','TJ Baby Spinach',1),
  ('2021-10-08','TJ Whole Wheat Wraps',2),
  ('2021-10-08','Red bell pepper',2),
  ('2021-10-08','Orange bell pepper',1),
  ('2021-10-08','Beefsteak tomato',9),
  /* 2021-10-13 Udupi Palace; order at 4:13 PM; pickup at 4:29 PM; total cost $13.17 */
  ('2021-10-13','Udupi Palace spinach masala dosa',1),
  /* 2021-10-13 Trader Joe's; checkout at 4:22 PM; total cost $40.76 (paid by card) */
  ('2021-10-13','TJ Misal Curry',3),
  ('2021-10-13','TJ Almond Milk',1),
  ('2021-10-13','TJ Carrots',1),
  ('2021-10-13','TJ Baby Spinach',1),
  ('2021-10-13','Beefsteak tomato',8),
  ('2021-10-13','Eggplant',2),
  ('2021-10-13','Red bell pepper',2),
  ('2021-10-13','Green bell pepper',2),
  ('2021-10-13','TJ Whole Wheat Wraps',4),
  /* 2021-10-16 Mehak Indian Cuisine (order ~1:30 PM, pickup ~2:10 PM) */
  ('2021-10-16','Mehak Indian Cuisine standard set',1),
  /* 2021-10-20 Trader Joe's; checkout at 3:32 PM; total cost $40.76 (paid by card);
     remarkably identical to the previous purchase! */
  ('2021-10-20','TJ Almond Milk',1),
  ('2021-10-20','Beefsteak tomato',8),
  ('2021-10-20','TJ Carrots',1),
  ('2021-10-20','TJ Baby Spinach',1),
  ('2021-10-20','Red bell pepper',2),
  ('2021-10-20','Eggplant',2),
  ('2021-10-20','TJ Whole Wheat Wraps',4),
  ('2021-10-20','TJ Misal Curry',3),
  ('2021-10-20','Green bell pepper',2),
  /* 2021-10-20 Udupi Palace; checkout at 3:22 PM */
  ('2021-10-20','Udupi Palace spinach masala dosa',1),
  /* 2021-10-25 Trader Joe's; checkout at 4:43 PM; total cost $43.11 (paid by card) */
  /* I bought two bottles of vinegar, but these are *not* intended for human consumption */
  ('2021-10-25','Trader Giotto''s Olive Oil',2),
  ('2021-10-25','TJ Carrots',1),
  ('2021-10-25','TJ Baby Spinach',1),
  ('2021-10-25','TJ Whole Wheat Tortillas',3),
  ('2021-10-25','Beefsteak tomato',8),
  ('2021-10-25','Eggplant',2),
  /* 2021-10-25 Udupi Palace */
  ('2021-10-25','Udupi Palace spinach masala dosa',1),
  /* 2021-10-30 Trader Joe's; checkout at 4:06 PM; total cost $30.73 (paid by card) */
  ('2021-10-30','TJ Misal Curry',5),
  ('2021-10-30','TJ Carrots',1),
  ('2021-10-30','Beefsteak tomato',8),
  ('2021-10-30','TJ Whole Wheat Tortillas',3),
  /* 2021-10-30 Udupi Palace, order placed 3:55 PM, pickup around 4:10 PM */
  ('2021-10-30','Udupi Palace spinach masala dosa',1),
  /* 2021-11-03 Trader Joe's; checkout at 4:38 PM; total cost $34.28 (paid by card) */
  ('2021-11-03','TJ Misal Curry',1),
  ('2021-11-03','TJ Almond Milk',1),
  ('2021-11-03','TJ Carrots',1),
  ('2021-11-03','TJ Baby Spinach',1),
  ('2021-11-03','Beefsteak tomato',9),
  ('2021-11-03','Orange bell pepper',2),
  ('2021-11-03','Green bell pepper',2),
  ('2021-11-03','Eggplant',2),
  ('2021-11-03','TJ Whole Wheat Tortillas',3),
  /* 2021-11-03 Udupi Palace */
  ('2021-11-03','Udupi Palace spinach masala dosa',1),
  /* 2021-11-08 Trader Joe's; checkout at 3:22 PM; total cost $35.10 (paid by card) */
  ('2021-11-08','TJ Carrots',1),
  ('2021-11-08','TJ Misal Curry',3),
  ('2021-11-08','Green bell pepper',2),
  ('2021-11-08','TJ Baby Spinach',1),
  ('2021-11-08','TJ Whole Wheat Tortillas',4),
  ('2021-11-08','Beefsteak tomato',7),
  ('2021-11-08','Eggplant',2),
  /* 2021-11-08 Udupi Palace */
  ('2021-11-08','Udupi Palace spinach masala dosa',1),
  /* 2021-11-12 Trader Joe'; checkout at 4:29 PM; total cost $28.66 (paid by card) */
  ('2021-11-12','TJ Almond Milk',1),
  ('2021-11-12','TJ Baby Spinach',1),
  ('2021-11-12','TJ Carrots',1),
  ('2021-11-12','Red bell pepper',2),
  ('2021-11-12','Green bell pepper',2),
  ('2021-11-12','Eggplant',2),
  ('2021-11-12','TJ Whole Wheat Tortillas',4),
  ('2021-11-12','TJ Misal Curry',1),
  /* 2021-11-12 Udupi Palace */
  ('2021-11-12','Udupi Palace spinach masala dosa',1),
  /* 2021-11-14 Pakwan */
  ('2021-11-14','Pakwan meal set',1),
  /* 2021-11-18 Trader Joe's; checkout at 4:28 PM; total cost $49.26 (paid by card) */
  ('2021-11-18','TJ Almond Milk',1),
  ('2021-11-18','TJ Carrots',1),
  ('2021-11-18','Eggplant',2),
  ('2021-11-18','Red bell pepper',2),
  ('2021-11-18','Green bell pepper',2),
  ('2021-11-18','TJ Walnuts',1),
  ('2021-11-18','TJ Baby Spinach',1),
  ('2021-11-18','TJ Whole Wheat Tortillas',5),
  ('2021-11-18','Beefsteak tomato',9),
  /* 2021-11-18 Udupi Palace; order at 5:32 PM, pickup around 5:55 PM */
  ('2021-11-18','Udupi Palace spinach masala dosa',1),
  /* 2021-11-23 (probably) Bangkok Thai Cuisine around 2:15 PM, total cost ~$3.41 (paid by cash) */
  ('2021-11-23','Bangkok Thai Cuisine white rice',2),
  /* 2021-11-24 Trader Joe's; checkout at 4:38 PM; total cost $52.77 (paid by card) */
  ('2021-11-24','Trader Giotto''s Olive Oil',2),
  ('2021-11-24','TJ Sauerkraut',1),
  ('2021-11-24','TJ Carrots',1),
  ('2021-11-24','Beefsteak tomato',8),
  ('2021-11-24','Eggplant',2),
  ('2021-11-24','Green bell pepper',2),
  ('2021-11-24','Red bell pepper',2),
  ('2021-11-24','TJ Whole Wheat Tortillas',5),
  /* 2021-11-24 Udupi Place; order at 4:29 PM, pickup around 4:41 PM */
  ('2021-11-24','Udupi Palace spinach masala dosa',1),
  /* 2021-11-29 Trader Joe's; checkout 4:58 PM; total cost $27.04 (paid by card);
     in general stocks were running low, so my purchases were a little different than usual */
  ('2021-11-29','TJ Almond Milk',1),
  ('2021-11-29','TJ Carrots',1),
  ('2021-11-29','TJ Baby Spinach',1),
  ('2021-11-29','Yellow squash',2),
  ('2021-11-29','Alvarado Sprouted Wheat Tortillas',2),
  ('2021-11-29','Eggplant',2),
  ('2021-11-29','Beefsteak tomato',6),
  ('2021-11-29','Green bell pepper',2),
  /* 2021-11-29 Udupi Place; pickup around 5 PM */
  ('2021-11-29','Udupi Palace spinach masala dosa',1),
  /* 2021-12-01 Bangkok Thai Cuisine around 2:30 PM to 2:45 PM */
  ('2021-12-01','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2021-12-01','Bangkok Thai Cuisine white rice',1),
  /* 2021-12-03 Trader Joe's; checkout at 4:36 PM; total cost $31.31 (paid by card) */
  ('2021-12-03','Eggplant',2),
  ('2021-12-03','TJ Madras Lentils',2),
  ('2021-12-03','TJ Carrots',1),
  ('2021-12-03','Red bell pepper',2),
  ('2021-12-03','TJ Baby Spinach',1),
  ('2021-12-03','Beefsteak tomato',9),
  ('2021-12-03','Alvarado Sprouted Wheat Tortillas',2),
  /* 2021-12-03 Udupi Place; pickup around 4:40 PM */
  ('2021-12-03','Udupi Palace spinach masala dosa',1),
  /* 2021-12-07 Mehak Indian Cuisine order at 1:25 PM; pickup around 2:15 PM */
  ('2021-12-07','Mehak Indian Cuisine standard set',1),
  /* 2012-12-09 Trader Joe's; checkout at 6:03 PM; total cost $48.52 (paid by card) */
  ('2021-12-09','TJ Almond Milk',1),
  ('2021-12-09','Trader Giotto''s Olive Oil',2),
  ('2021-12-09','Eggplant',2),
  ('2021-12-09','TJ Baby Spinach',1),
  ('2021-12-09','TJ English Shelled Peas',1),
  ('2021-12-09','TJ Carrots',1),
  ('2021-12-09','Alvarado Sprouted Wheat Tortillas',5),
  ('2021-12-09','Beefsteak tomato',5),
  /* 2021-12-09 Udupi Palace */
  ('2021-12-09','Udupi Palace spinach masala dosa',1),
  /* 2021-12-14 Trader Joe's; checkout at 7:10 PM; total cost $45.08 (paid by card);
     there was no Udupi Palace visit as it was closed (Tuesday) and I had
     already eaten. The reason for a Tuesday trip was the rainy weather in the
     previous days and the forecast of rainy weather in the coming days. */
  ('2021-12-14','TJ Almond Milk',1),
  ('2021-12-14','TJ Sauerkraut',2),
  ('2021-12-14','TJ Carrots',1),
  ('2021-12-14','Eggplant',2),
  ('2021-12-14','Red bell pepper',2),
  ('2021-12-14','Green bell pepper',2),
  ('2021-12-14','TJ English Shelled Peas',1),
  ('2021-12-14','Beefsteak tomato',6),
  ('2021-12-14','Alvarado Sprouted Wheat Tortillas',5),
  /* 2021-12-18 Trader Joe's; checkout at 5:20 PM; total cost $30.13 (paid by card) */
  ('2021-12-18','TJ Carrots',1),
  ('2021-12-18','TJ Baby Spinach',1),
  ('2021-12-18','Eggplant',2),
  ('2021-12-18','Beefsteak tomato',5),
  ('2021-12-18','Green bell pepper',2),
  ('2021-12-18','Red bell pepper',2),
  ('2021-12-18','TJ Whole Wheat Tortillas',4),
  /* 2021-12-18 Udupi Palace; order at 5:09 PM; paid by cash; pickup around 5:25 PM */
  ('2021-12-18','Udupi Palace spinach masala dosa',1),
  /* 2021-12-22 Trader Joe's; checkout at 2:23 PM; total cost $19.17 (paid by card) */
  ('2021-12-22','TJ Carrots',1),
  ('2021-12-22','Green bell pepper',2),
  ('2021-12-22','Red bell pepper',2),
  ('2021-12-22','Eggplant',2),
  ('2021-12-22','Beefsteak tomato',4),
  ('2021-12-22','Alvarado Sprouted Wheat Tortillas',2),
  /* 2021-12-22 Udupi Palace; order at 2:13 PM; paid by cash; pickup around 2:26 PM */
  ('2021-12-22','Udupi Palace spinach masala dosa',1),
  /* 2021-12-27 Trader Joe's; checkout at 4:24 PM; total cost $45.57 (paid by card) */
  ('2021-12-27','TJ Almond Milk',1),
  ('2021-12-27','TJ Carrots',1),
  ('2021-12-27','TJ Turmeric',1),
  ('2021-12-27','TJ Baby Spinach',1),
  ('2021-12-27','TJ Cumin',1),
  ('2021-12-27','TJ English Shelled Peas',1),
  ('2021-12-27','Beefsteak tomato',6),
  ('2021-12-27','Eggplant',2),
  ('2021-12-27','Red bell pepper',2),
  ('2021-12-27','Green bell pepper',2),
  ('2021-12-27','TJ Walnuts',1),
  ('2021-12-27','Alvarado Sprouted Wheat Tortillas',4),
  /* 2021-12-27 Udupi Palace */
  ('2021-12-27','Udupi Palace spinach masala dosa',1),
  /* 2021-12-29 Mehak Indian Cuisine; order at 6:04 PM */
  ('2021-12-29','Mehak Indian Cuisine standard set',1),
  /* 2022-01-05 Trader Joe'; checkout at 5:58 PM; total cost $34.80 (paid by card) */
  ('2022-01-05','TJ Almond Milk',1),
  ('2022-01-05','TJ Carrots',1),
  ('2022-01-05','Alvarado Sprouted Wheat Tortillas',2),
  ('2022-01-05','TJ Whole Wheat Tortillas',2),
  ('2022-01-05','TJ Baby Spinach',1),
  ('2022-01-05','Beefsteak tomato',7),
  ('2022-01-05','Green bell pepper',2),
  ('2022-01-05','Red bell pepper',2),
  ('2022-01-05','Eggplant',2),
  /* 2022-01-05 Udupi Palace */
  ('2022-01-05','Udupi Palace spinach masala dosa',1),
  /* 2022-01-10 Trader Joe's; checkout at 5:08 PM, total cost $37.49 (paid by card) */
  ('2022-01-10','TJ Carrots',1),
  ('2022-01-10','TJ English Shelled Peas',1),
  ('2022-01-10','Alvarado Sprouted Wheat Tortillas',5),
  ('2022-01-10','Beefsteak tomato',8),
  ('2022-01-10','Red bell pepper',2),
  ('2022-01-10','Eggplant',2),
  ('2022-01-10','Green bell pepper',2),
  /* 2022-01-10 Udupi Palace */
  ('2022-01-10','Udupi Palace spinach masala dosa',1),
  /* 2022-01-13 Bangkok Thai Cuisine; cash payment of $17.47 around 8 PM*/
  ('2022-01-13','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-01-13','Bangkok Thai Cuisine white rice',1),
  /* 2022-01-16 Trader Joe's; checkout at 3:43 PM; total cost $47.16 (paid by card) */
  ('2022-01-16','TJ Sauerkraut',2),
  ('2022-01-16','TJ Carrots',1),
  ('2022-01-16','TJ Baby Spinach 6 oz',1),
  ('2022-01-16','TJ English Shelled Peas',1),
  ('2022-01-16','Red bell pepper',2),
  ('2022-01-16','Green bell pepper',2),
  ('2022-01-16','Alvarado Sprouted Wheat Tortillas',5),
  ('2022-01-16','Eggplant',2),
  ('2022-01-16','Beefsteak tomato',8),
  /* 2022-01-16 Udupi Palace */
  ('2022-01-16','Udupi Palace spinach masala dosa',1),
  /* 2022-01-20 Mehak Indian Cuisine */
  ('2022-01-20','Mehak Indian Cuisine standard set',1),
  /* 2022-01-24 Trader Joe's; checkout at 2:14 PM; total cost $45.66 (paid by card) */
  ('2022-01-24','TJ Almond Milk',1),
  ('2022-01-24','TJ Carrots',1),
  ('2022-01-24','TJ Baby Spinach',1),
  ('2022-01-24','Beefsteak tomato',8),
  ('2022-01-24','Green bell pepper',2),
  ('2022-01-24','Red bell pepper',2),
  ('2022-01-24','TJ English Shelled Peas',1),
  ('2022-01-24','Eggplant',2),
  ('2022-01-24','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-01-24 Udupi Palace */
  ('2022-01-24','Udupi Palace spinach masala dosa',1),
  /* 2022-01-27 Bangkok Thai Cuisine; cost 1.66 */
  ('2022-01-27','Bangkok Thai Cuisine white rice',1),
  /* 2022-01-28 Mehak Indian Cuisine */
  ('2022-01-28','Mehak Indian Cuisine standard set',1),
  /* 2022-02-02 Trader Joe's; checkout at 5:14 PM; total cost $58.34 (paid by card) */
  ('2022-02-02','TJ Almond Milk',1),
  ('2022-02-02','TJ Sauerkraut',2),
  ('2022-02-02','TJ Carrots',1),
  ('2022-02-02','TJ Baby Spinach',1),
  ('2022-02-02','TJ English Shelled Peas',1),
  ('2022-02-02','Yellow squash',2),
  ('2022-02-02','TJ Walnuts',1),
  ('2022-02-02','Beefsteak tomato',8),
  ('2022-02-02','Green bell pepper',2),
  ('2022-02-02','Red bell pepper',2),
  ('2022-02-02','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-02-02 Udupi Palace */
  ('2022-02-02','Udupi Palace spinach masala dosa',1),
  /* 2022-02-05 Trader Joe's; checkout at 5:44 PM; total cost $23.75 (paid by card) */
  ('2022-02-05','TJ English Shelled Peas',2),
  ('2022-02-05','TJ Carrots (Organic)',1),
  ('2022-02-05','Red bell pepper',2),
  ('2022-02-05','Green bell pepper',2),
  ('2022-02-05','Beefsteak tomato',6),
  ('2022-02-05','Eggplant',2),
  /* 2022-02-05 Udupi Palace */
  ('2022-02-05','Udupi Palace spinach masala dosa',1),
  /* 2022-02-07 Bangkok Thai Cuisine 1.66 */
  ('2022-02-07','Bangkok Thai Cuisine white rice',1),
  /* 2022-02-10 Trader Joe's; checkout at 6:03 PM; total cost $48.16 (paid by card) */
  ('2022-02-10','TJ Whole Wheat Tortillas',5),
  ('2022-02-10','Eggplant',2),
  ('2022-02-10','Red bell pepper',2),
  ('2022-02-10','Green bell pepper',2),
  ('2022-02-10','Beefsteak tomato',8),
  ('2022-02-10','TJ Baby Spinach',1),
  ('2022-02-10','TJ Carrots',1),
  ('2022-02-10','TJ English Shelled Peas',2),
  ('2022-02-10','TJ Almond Milk',1),
  /* 2022-02-10 Udupi Palace */
  ('2022-02-10','Udupi Palace spinach masala dosa',1),
  /* 2022-02-14 Bangkok Thai Cuisine ($17.47 cash, around 1:30 PM) */
  ('2022-02-14','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-02-14','Bangkok Thai Cuisine white rice',2),
  /* 2022-02-17 Trader Joe's; checkout at 4:52 PM; coost $63.33 (paid by card) */
  ('2022-02-17','TJ Almond Milk',1),
  ('2022-02-17','TJ Sauerkraut',2),
  ('2022-02-17','TJ Baby Spinach',1),
  ('2022-02-17','TJ English Shelled Peas',2),
  ('2022-02-17','TJ Carrots',1),
  ('2022-02-17','Red bell pepper',2),
  ('2022-02-17','Beefsteak tomato',8),
  ('2022-02-17','Eggplant',2),
  ('2022-02-17','Green bell pepper',2),
  ('2022-02-17','TJ Whole Wheat Tortillas',5),
  ('2022-02-17','TJ Walnuts',1),
  /* 2022-02-17 Udupi Palace */
  ('2022-02-17','Udupi Palace spinach masala dosa',1),
  /* 2022-02-20 Mehak Indian Cuisine */
  ('2022-02-20','Mehak Indian Cuisine standard set',1),
  /* 2022-02-24 Bangkok Thai Cuisine $3.31 */
  ('2022-02-24','Bangkok Thai Cuisine white rice',2),
  /* 2022-02-25 Trader Joe's; checkout at 3:18 PM */
  ('2022-02-25','Trader Giotto''s Olive Oil',1),
  ('2022-02-25','TJ English Shelled Peas',2),
  ('2022-02-25','TJ Carrots',1),
  ('2022-02-25','TJ Baby Spinach',1),
  ('2022-02-25','Beefsteak tomato',8),
  ('2022-02-25','Eggplant',2),
  ('2022-02-25','TJ Whole Wheat Wraps',5),
  ('2022-02-25','Green bell pepper',2),
  ('2022-02-25','Orange bell pepper',2),
  /* 2022-02-25 Udupi Palace */
  ('2022-02-25','Udupi Palace spinach masala dosa',1),
  /* 2022-02-28 Udupi Palace */
  ('2022-02-28','Udupi Palace spinach masala dosa',1),
  /* 2022-03-02 Bangkok Thai Cuisine ($20 cash, around 7:30 PM) */
  ('2022-03-02','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-03-02','Bangkok Thai Cuisine white rice',3),
  /* 2022-03-04 Trader Joe's; checkout at 2:51 PM */
  ('2022-03-04','TJ English Shelled Peas',2),
  ('2022-03-04','TJ Almond Milk',1),
  ('2022-03-04','TJ Carrots',1),
  ('2022-03-04','Beefsteak tomato',6),
  ('2022-03-04','Eggplant',2),
  ('2022-03-04','Red bell pepper',2),
  ('2022-03-04','Green bell pepper',2),
  ('2022-03-04','TJ Baby Spinach',1),
  ('2022-03-04','TJ Whole Wheat Wraps',6),
  /* 2022-03-04 Udupi Palace */
  ('2022-03-04','Udupi Palace spinach masala dosa',1),
  /* 2022-03-07 Mehak Indian Cuisine; pickup around 2 PM */
  ('2022-03-07','Mehak Indian Cuisine standard set',1),
  /* 2022-03-09 Tender Greens, around 1:30 PM */
  ('2022-03-09','Tender Greens happy vegan salad',1),
  /* 2022-03-11 Trader Joe's; checkout at 5:52 PM; total cost $66.47 (paid by cash) */
  ('2022-03-11','Trader Giotto''s Olive Oil',3),
  ('2022-03-11','TJ Sauerkraut',2),
  ('2022-03-11','TJ Baby Spinach',1),
  ('2022-03-11','TJ Carrots',1),
  ('2022-03-11','Beefsteak tomato',5),
  ('2022-03-11','Red bell pepper',2),
  ('2022-03-11','Green bell pepper',2),
  ('2022-03-11','Eggplant',2),
  ('2022-03-11','TJ Walnuts',1),
  ('2022-03-11','TJ Whole Wheat Wraps',5), /* looks like they billed for 4 instead of 5? */
  /* 2022-03-11 Udupi Palace */
  ('2022-03-11','Udupi Palace spinach masala dosa',1),
  /* 2022-03-16 Trader Joe's; checkout at 4:34 PM; total cost $48.36 (paid by card) */
  ('2022-03-16','TJ Carrots',1),
  ('2022-03-16','TJ Almond Milk',1),
  ('2022-03-16','TJ English Shelled Peas',2),
  ('2022-03-16','TJ Baby Spinach',1),
  ('2022-03-16','Beefsteak tomato',8),
  ('2022-03-16','Red bell pepper',2),
  ('2022-03-16','Eggplant',2),
  ('2022-03-16','Green bell pepper',2),
  ('2022-03-16','TJ Whole Wheat Wraps',5),
  /* 2022-03-16 Udupi Palace; order at 4:24 PM */
  ('2022-03-16','Udupi Palace spinach masala dosa',1),
  /* 2022-03-21 Udupi Palace */
  ('2022-03-21','Udupi Palace spinach masala dosa',1),
  /* 2022-03-24 Asha Tea House */
  ('2022-03-24','Asha Tea House ginger honey tea',1),
  /* 2022-03-24 Traader Joe's'; checkout at 6:32 PM; total cost $41.79 (paid by card) */
  ('2022-03-24','TJ English Shelled Peas',1),
  ('2022-03-24','TJ Baby Spinach',1),
  ('2022-03-24','TJ Carrots',1),
  ('2022-03-24','Beefsteak tomato',7),
  ('2022-03-24','Eggplant',2),
  ('2022-03-24','Red bell pepper',2),
  ('2022-03-24','Green bell pepper',2),
  ('2022-03-24','TJ Whole Wheat Wraps',5),
  /* 2022-03-24 Udupi Palace */
  ('2022-03-24','Udupi Palace spinach masala dosa',1),
  /* 2022-03-27 Udupi Palace */
  ('2022-03-27','Udupi Palace spinach masala dosa',1),
  /* 2022-03-29 Mehak Indian Cuisine */
  ('2022-03-29','Mehak Indian Cuisine standard set',1),
  /* 2022-04-02 Trader Joe's; checkout at 5:19 PM; total cost $49.97 (paid by card) */
  ('2022-04-02','TJ Almond Milk',1),
  ('2022-04-02','TJ Baby Spinach',1),
  ('2022-04-02','TJ English Shelled Peas',1),
  ('2022-04-02','TJ Carrots',1),
  ('2022-04-02','Green bell pepper',2),
  ('2022-04-02','Beefsteak tomato',7),
  ('2022-04-02','TJ Walnuts',1),
  ('2022-04-02','Red bell pepper',2),
  ('2022-04-02','Eggplant',2),
  ('2022-04-02','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-04-02 Udupi Palace; checkout at 5:09 PM; total cost $13.17 (paid by cash) */
  ('2022-04-02','Udupi Palace spinach masala dosa',1),
  /* 2022-04-05 Trader Joe's; checkout at 3:48 PM; total cost $11.54 (paid by card) */
  ('2022-04-05','Alvarado Sprouted Wheat Tortillas',2),
  ('2022-04-05','TJ Carrots',1),
  ('2022-04-05','Beefsteak tomato',3),
  /* 2022-04-05 Bangkok Thai Cuisine; total cost $18.58 (paid by cash) */
  ('2022-04-05','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-04-05','Bangkok Thai Cuisine white rice',2),
  /* 2022-04-07 Trader Joe's; checkout at 4:14 PM; total cost $7.98 (paid by card) */
  ('2022-04-07','TJ English Shelled Peas',1),
  ('2022-04-07','Alvarado Sprouted Wheat Tortillas',1),
  /* 2022-04-07 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-04-07','Udupi Palace spinach masala dosa',1),
  /* 2022-04-11 Trader Joe's; checkout at 4:59 PM; total cost $18.95 (paid by card) */
  ('2022-04-11','TJ English Shelled Peas',2),
  ('2022-04-11','Alvarado Sprouted Wheat Tortillas',3),
  /* 2022-04-11 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-04-11','Udupi Palace spinach masala dosa',1),
  /* 2022-04-15 Trader Joe's; checkout at 2:40 PM; total cost $14.61 (paid by card) */
  ('2022-04-15','Beefsteak tomato',3),
  ('2022-04-15','Red bell pepper',1),
  ('2022-04-15','Eggplant',1),
  ('2022-04-15','TJ Carrots',1),
  ('2022-04-15','Green bell pepper',1),
  ('2022-04-15','Alvarado Sprouted Wheat Tortillas',1),
  ('2022-04-15','TJ Baby Spinach',1),
  /* 2022-04-15 Udupi Palace; checkout at 2:40 PM; total cost $13.17 (paid by cash) */
  ('2022-04-15','Udupi Palace spinach masala dosa',1),
  /* 2022-04-18 Bangkok Thai Cuisine; checkout at 2:40 PM; total cost $18.58 (paid by cash) */
  ('2022-04-18','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-04-18','Bangkok Thai Cuisine white rice',2),
  /* 2022-04-19 Bangkok Thai Cuisine; checkout at 2:40 PM; total cost $16.81 (paid by cash) */
  ('2022-04-19','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-04-19','Bangkok Thai Cuisine white rice',1),
  /* 2022-04-20 Mehak Indian Cuisine */
  ('2022-04-20','Mehak Indian Cuisine standard set',1),
  /* 2022-04-21 Trader Joe's; checkout at 9:23 AM; paid by card */
  ('2022-04-21','TJ Almond Milk',1),
  ('2022-04-21','TJ Sauerkraut',2),
  ('2022-04-21','Lemon',1),
  ('2022-04-21','TJ Carrots',1),
  ('2022-04-21','TJ Baby Spinach',1),
  ('2022-04-21','Beefsteak tomato',9),
  ('2022-04-21','TJ English Shelled Peas',2),
  ('2022-04-21','Red bell pepper',2),
  ('2022-04-21','Green bell pepper',2),
  ('2022-04-21','Eggplant',2),
  ('2022-04-21','TJ Walnuts',1),
  ('2022-04-21','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-04-25 Trader Joe's; checkout at 5:18 PM; paid by card */
  ('2022-04-25','TJ Baby Spinach',1),
  ('2022-04-25','TJ Carrots',1),
  ('2022-04-25','TJ English Shelled Peas',1),
  ('2022-04-25','Green bell pepper',2),
  ('2022-04-25','Red bell pepper',2),
  ('2022-04-25','Eggplant',2),
  ('2022-04-25','Beefsteak tomato',5),
  ('2022-04-25','Alvarado Sprouted Wheat Tortillas',3),
  /* 2022-04-25 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-04-25','Udupi Palace spinach masala dosa',1),
  /* 2022-04-27 Tender Greens */
  ('2022-04-27','Tender Greens happy vegan salad',1),
  /* 2022-04-30 Trader Joe's; checkout at 5:20 PM; paid by card) */
  ('2022-04-30','TJ Carrots',1),
  ('2022-04-30','TJ English Shelled Peas',1),
  ('2022-04-30','TJ English Shelled Peas',1),
  ('2022-04-30','Alvarado Sprouted Wheat Tortillas',3),
  ('2022-04-30','Beefsteak tomato',7),
  ('2022-04-30','Red bell pepper',2),
  ('2022-04-30','Eggplant',2),
  ('2022-04-30','Green bell pepper',2),
  /* 2022-04-30 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-04-30','Udupi Palace spinach masala dosa',1),
  /* 2022-05-03 Bangkok Thai Cuisine; total cost $18.58 (paid by cash) */
  ('2022-05-03','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-05-03','Bangkok Thai Cuisine white rice',2),
  /* 2022-05-04 Bangkok Thai Cuisine; total cost $18.58 (paid by cash) */
  ('2022-05-04','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-05-04','Bangkok Thai Cuisine white rice',2),
  /* 2022-05-06 Trader Joe's; checkout at 7:55 PM; paid by card */
  ('2022-05-06','TJ English Shelled Peas',2),
  ('2022-05-06','TJ Carrots',1),
  ('2022-05-06','Beefsteak tomato',8),
  ('2022-05-06','Green bell pepper',2),
  ('2022-05-06','TJ Walnuts',1),
  ('2022-05-06','Red bell pepper',2),
  ('2022-05-06','Eggplant',2),
  ('2022-05-06','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-05-06 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-05-06','Udupi Palace spinach masala dosa',1),
  /* 2022-05-09 Mehak Indian Cuisine */
  ('2022-05-09','Mehak Indian Cuisine standard set',1),
  /*2022-05-13 Trader Joe's; checkout at 7:47 PM; $35.26 (paid by card) */
  ('2022-05-13','TJ Sauerkraut',2),
  ('2022-05-13','TJ Baby Spinach',1),
  ('2022-05-13','Trader Giotto''s Olive Oil',1),
  ('2022-05-13','TJ Carrots',1),
  ('2022-05-13','Alvarado Sprouted Wheat Tortillas',3),
  ('2022-05-13','Eggplant',2),
  ('2022-05-13','Red bell pepper',2),
  ('2022-05-13','Green bell pepper',2),
  /* 2022-05-13 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-05-13','Udupi Palace spinach masala dosa',1),
  /* 2022-05-16 Trader Joe's; checkout at 5:56 PM; total cost $21.64 (paid by card) */
  ('2022-05-16','TJ Almond Milk',1),
  ('2022-05-16','TJ English Shelled Peas',2),
  ('2022-05-16','Alvarado Sprouted Wheat Tortillas',3),
  /* 2022-05-16 Udupi Palace; checkout at 5:51 PM; total cost $13.17 (paid by cash) */
  ('2022-05-16','Udupi Palace spinach masala dosa',1),
  /* 2022-05-19 Trader Joe's; checkout at 6:41 PM; total cost $49.07 (paid by card) */
  ('2022-05-19','Trader Giotto''s Olive Oil',1),
  ('2022-05-19','TJ Carrots',1),
  ('2022-05-19','TJ Baby Spinach',1),
  ('2022-05-19','TJ Whole Wheat Wraps',4),
  ('2022-05-19','TJ Walnuts',1),
  ('2022-05-19','Beefsteak tomato',9),
  ('2022-05-19','Red bell pepper',2),
  ('2022-05-19','Eggplant',2),
  ('2022-05-19','Green bell pepper',2),
  /* 2022-05-19 Udupi Palace; checkout at 5:51 PM; total cost $13.17 (paid by cash) */
  ('2022-05-19','Udupi Palace spinach masala dosa',1),
  /* 2022-05-22 Trader Joe's; checkout at 5:40 PM; total cost $38.39 (paid by card) */
  ('2022-05-22','Trader Giotto''s Olive Oil',1),
  ('2022-05-22','Lemon',1),
  ('2022-05-22','TJ English Shelled Peas',1),
  ('2022-05-22','TJ Sauerkraut',2),
  ('2022-05-22','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-05-22 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-05-22','Udupi Palace spinach masala dosa',1),
  /* 2022-05-26 Trader Joe's; checkout at 5:13 PM; total cost $35.32 (paid by card);
     there was no trip to Udupi Palace on this day because the place was closed
     due to technical issues */
  ('2022-05-26','TJ English Shelled Peas',3),
  ('2022-05-26','TJ Baby Spinach',1),
  ('2022-05-26','TJ Carrots',1),
  ('2022-05-26','Beefsteak tomato',7),
  ('2022-05-26','Eggplant',2),
  ('2022-05-26','Red bell pepper',2),
  ('2022-05-26','Green bell pepper',2),
  /* 2022-06-01 Trader Joe's; checkout at 7:36 PM; total cost $42.98 (paid by card) */
  ('2022-06-01','TJ Almond Milk',1),
  ('2022-06-01','TJ Carrots',1),
  ('2022-06-01','Red bell pepper',2),
  ('2022-06-01','Green bell pepper',2),
  ('2022-06-01','Beefsteak tomato',7),
  ('2022-06-01','TJ English Shelled Peas',1),
  ('2022-06-01','Eggplant',2),
  ('2022-06-01','TJ Baby Spinach',1),
  ('2022-06-01','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-06-01 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-06-01','Udupi Palace spinach masala dosa',1),
  /* 2022-06-06 Mehak Indian Cuisine; total cost $49.56 (paid by PayPal) */
  ('2022-06-06','Mehak Indian Cuisine standard set',1),
  /* 2022-06-10 Trader Joe's; checkout at 8:45 PM (paid by card) */
  ('2022-06-10','TJ Carrots',1),
  ('2022-06-10','TJ Baby Spinach',1),
  ('2022-06-10','Red bell pepper',2),
  ('2022-06-10','Green bell pepper',4),
  ('2022-06-10','Beefsteak tomato',8),
  ('2022-06-10','TJ Walnuts',1),
  ('2022-06-10','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-06-10','TJ English Shelled Peas',2),
  ('2022-06-10','Yellow squash',3),
  /* 2022-06-10 Udupi Palace; order placed 8:31 PM; total cost $13.17 (paid by cash) */
  ('2022-06-10','Udupi Palace spinach masala dosa',1),
  /* 2022-06-15 Trader Joe's; checkouat at 7:59 PM (paid by card) */
  ('2022-06-15','TJ Almond Milk',1),
  ('2022-06-15','TJ Carrots',1),
  ('2022-06-15','TJ English Shelled Peas',3),
  ('2022-06-15','Green bell pepper',4),
  ('2022-06-15','Red bell pepper',2),
  ('2022-06-15','Beefsteak tomato',6),
  ('2022-06-15','Yellow squash',2),
  ('2022-06-15','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-06-15 Udupi Palace; total cost $14.28 -- note the cost increase (paid by cash) */
  ('2022-06-15','Udupi Palace spinach masala dosa',1),
  /* 2022-06-20 Mehak Indian Cuisine; total cost $49.56 (paid by PayPal) */
  ('2022-06-20','Mehak Indian Cuisine standard set',1),
  /* 2022-06-24 Trader Joe's; checkout at 7:32 PM (paid by card) */
  ('2022-06-24','TJ English Shelled Peas',3),
  ('2022-06-24','TJ Carrots',1),
  ('2022-06-24','TJ Baby Spinach',1),
  ('2022-06-24','Beefsteak tomato',6),
  ('2022-06-24','Orange bell pepper',2),
  ('2022-06-24','Green bell pepper',4),
  ('2022-06-24','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-06-24 Udupi Palace; total cost $14.28; order placed 7:21 PM; paid by cash */
  ('2022-06-24','Udupi Palace spinach masala dosa',1),
  /* 2022-06-25 Berkeley Bowl; total cost $5.98; checkout at 10:59 AM; paid by card */
  ('2022-06-25','Eggplant',2),
  /* 2022-07-01 Trader Joe's; total cost $70.60; checkout at 5:06 PM; paid by card */
  ('2022-07-01','Trader Giotto''s Olive Oil',1),
  ('2022-07-01','TJ English Shelled Peas',3),
  ('2022-07-01','TJ Almond Milk',1),
  ('2022-07-01','TJ Carrots',1),
  ('2022-07-01','TJ Baby Spinach',1),
  ('2022-07-01','Eggplant',2),
  ('2022-07-01','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-07-01','TJ Walnuts',1),
  ('2022-07-01','Beefsteak tomato',9), /* I incorrectly told the cashier there were 8, but there were 9, so I ended up getting billed for 1 less than there were */
  ('2022-07-01','Green bell pepper',4),
  ('2022-07-01','Red bell pepper',2),
  /* 2022-07-01 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-01','Udupi Palace spinach masala dosa',1),
  /* 2022-07-07 Trader Joe's; total cost $61.92; checkout at 5:16 PM; paid by debit card */
  ('2022-07-07','Alvarado Sprouted Wheat Tortillas',5),
  ('2022-07-07','Red bell pepper',2),
  ('2022-07-07','Green bell pepper',4),
  ('2022-07-07','Beefsteak tomato',8),
  ('2022-07-07','TJ English Shelled Peas',2),
  ('2022-07-07','TJ Sauerkraut',2),
  ('2022-07-07','TJ Carrots',1),
  ('2022-07-07','Trader Giotto''s Olive Oil',1),
  ('2022-07-07','Eggplant',2),
  ('2022-07-07','TJ Baby Spinach',1),
  /* 2022-07-07 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-07','Udupi Palace spinach masala dosa',1),
  /* 2022-07-11 Trader Joe's; checkout at 6:18 PM; total cost $17.66; paid by credit card */
  ('2022-07-11','Trader Giotto''s Olive Oil',1),
  ('2022-07-11','TJ Almond Milk',1),
  ('2022-07-11','TJ Walnuts',1),
  ('2022-07-11','TJ Beans',1),
  /* 2022-07-11 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-11','Udupi Palace spinach masala dosa',1),
  /* 2022-07-14 Trader Joe's; checkout at 8:54 PM; total cost $33.90; paid by credit card */
  ('2022-07-14','TJ Beans',1),
  ('2022-07-14','TJ Baby Spinach',1),
  ('2022-07-14','TJ Carrots',1),
  ('2022-07-14','Beefsteak tomato',8),
  ('2022-07-14','Green bell pepper',2),
  ('2022-07-14','Red bell pepper',2),
  ('2022-07-14','Eggplant',2),
  ('2022-07-14','Alvarado Sprouted Wheat Tortillas',3),
  /* 2022-07-14 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-14','Udupi Palace spinach masala dosa',1),
  /* 2022-07-18 Mehak Indian Cuisine; total cost $49.56 (paid by PayPal) */
  ('2022-07-18','Mehak Indian Cuisine standard set',1),
  /* 2022-07-22 Trader Joe's; checkout at 5:01 PM; total cost $54.51; paid by debit card */
  ('2022-07-22','TJ Almond Milk',1),
  ('2022-07-22','TJ Carrots',1),
  ('2022-07-22','TJ English Shelled Peas',2),
  ('2022-07-22','TJ Baby Spinach',1),
  ('2022-07-22','Green bell pepper',2),
  ('2022-07-22','Beefsteak tomato',11),
  ('2022-07-22','Green bell pepper',4),
  ('2022-07-22','Eggplant',2),
  ('2022-07-22','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-07-22 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-22','Udupi Palace spinach masala dosa',1),
  /* 2022-07-28 Trader Joe's; checkout at 4:50 PM; total cost $56.81; paid by debit card */
  ('2022-07-28','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-07-28','TJ Sauerkraut',1),
  ('2022-07-28','Green bell pepper',4),
  ('2022-07-28','Red bell pepper',2),
  ('2022-07-28','Beefsteak tomato',10),
  ('2022-07-28','Trader Giotto''s Olive Oil',1),
  ('2022-07-28','TJ Baby Spinach',1),
  ('2022-07-28','Eggplant',2),
  ('2022-07-28','TJ Beans',1),
  ('2022-07-28','TJ Carrots',1),
  /* 2022-07-28 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-07-28','Udupi Palace spinach masala dosa',1),
  /* 2022-08-03 Trader Joe's; checkout at 5:10 PM; total cost $60.73; paid by debit card */
  ('2022-08-03','TJ English Shelled Peas',3),
  ('2022-08-03','Green bell pepper',4),
  ('2022-08-03','TJ Baby Spinach',1),
  ('2022-08-03','TJ Walnuts',1),
  ('2022-08-03','Eggplant',2),
  ('2022-08-03','Red bell pepper',2),
  ('2022-08-03','Beefsteak tomato',10), /* billed for only 9; they miscounted and I only noticed when I got home */
  ('2022-08-03','Alvarado Sprouted Wheat Tortillas',1),
  ('2022-08-03','TJ Whole Wheat Tortillas',1),
  ('2022-08-03','TJ Carrots',1),
  ('2022-08-03','TJ Sauerkraut',2),
  /* 2022-08-03 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-08-03','Udupi Palace spinach masala dosa',1),
  /* 2022-08-05 Trader Joe's; checkout at 5:13 PM; total cost $28.26; paid by credit card */
  ('2022-08-05','Beefsteak tomato',8),
  ('2022-08-05','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-08-05 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-08-05','Udupi Palace spinach masala dosa',1),
  /* 2022-08-10 Trader Joe's; checkout at 8:03 PM; total cost $68.66; paid by debit card */
  ('2022-08-10','TJ English Shelled Peas',4),
  ('2022-08-10','TJ Carrots',1),
  ('2022-08-10','TJ Baby Spinach',1),
  ('2022-08-10','Beefsteak tomato',12),
  ('2022-08-10','Red bell pepper',4),
  ('2022-08-10','Eggplant',2),
  ('2022-08-10','TJ Carb Savvy Tortillas',4),
  ('2022-08-10','Green bell pepper',4),
  ('2022-08-10','TJ Turmeric',1),
  ('2022-08-10','TJ Cayenne Pepper',1),
  /* 2022-08-10 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-08-10','Udupi Palace spinach masala dosa',1),
  /* 2022-08-13  Mehak Indian Cuisine; total cost $49.56 (paid by PayPal) */
  ('2022-08-13','Mehak Indian Cuisine standard set',1),
  /* 2022-08-17 Trader Joe's; total cost $35.60; checkout at 3:37 PM; paid by debit card */
  ('2022-08-17','Trader Giotto''s Olive Oil',1),
  ('2022-08-17','TJ Almond Milk',1),
  ('2022-08-17','TJ Walnuts',1),
  ('2022-08-17','Alvarado Sprouted Wheat Tortillas',7),
  /* 2022-08-17 Udupi Palace; total cost $14.28; purchase at 3:29 PM; paid by cash */
  ('2022-08-17','Udupi Palace spinach masala dosa',1),
  /* 2022-08-21 Trader Joe's; total cost $40.26; checkout at 6:18 PM; paid by credit card */
  ('2022-08-21','TJ English Shelled Peas',3),
  ('2022-08-21','Beefsteak tomato',11),
  ('2022-08-21','Green bell pepper',4),
  ('2022-08-21','Red bell pepper',4),
  ('2022-08-21','Eggplant',2),
  /* 2022-08-21 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-08-21','Udupi Palace spinach masala dosa',1),
  /* 2022-08-23  Mehak Indian Cuisine; total cost $52.86 (paid by PayPal) -- note the price increase */
  ('2022-08-23','Mehak Indian Cuisine standard set',1),
  /* 2022-08-27 Trader Joe's; total cost $29.97; checkout at 6:18 PM; paid by credit card */
  ('2022-08-27','TJ Almond Milk',1),
  ('2022-08-27','TJ Baby Spinach',1),
  ('2022-08-27','Beefsteak tomato',4),
  ('2022-08-27','TJ Carrots',1),
  ('2022-08-27','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-08-27 Udupi Palace; total cost $14.28; order placed at 6:07 PM; paid by cash */
  ('2022-08-27','Udupi Palace spinach masala dosa',1),
  /* 2022-09-01 Trader Joe's; total cost $60.71; checkout at 8:11 PM; paid by debit card */
  ('2022-09-01','TJ English Shelled Peas',3),
  ('2022-09-01','TJ Carrots',1),
  ('2022-09-01','Beefsteak tomato',7),
  ('2022-09-01','Red bell pepper',4),
  ('2022-09-01','Green bell pepper',4),
  ('2022-09-01','Eggplant',2),
  ('2022-09-01','Alvarado Sprouted Wheat Tortillas',8),
  /* 2022-09-01 Udupi Palace; total cost $14.28; order placed at 8 PM; paid by cash */
  ('2022-09-01','Udupi Palace spinach masala dosa',1),
  /* 2022-09-09 Trader Joe's; total cost $60.74; checkout at 7:56 PM; paid by credit card */
  ('2022-09-09','TJ Carrots',1),
  ('2022-09-09','TJ English Shelled Peas',3),
  ('2022-09-09','TJ Baby Spinach',1),
  ('2022-09-09','Red bell pepper',4),
  ('2022-09-09','Beefsteak tomato',6),
  ('2022-09-09','Green bell pepper',4),
  ('2022-09-09','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-09-09','TJ Walnuts',1),
  /* 2022-09-09 Udupi Palace; total cost $14.28; order placed at 7:43:46 PM; paid by cash */
  ('2022-09-09','Udupi Palace spinach masala dosa',1),
  /* 2022-09-10 Trader Joe's; total cost $28.29; checkout at 5:09 PM; paid by debit card */
  ('2022-09-10','Yellow squash',3),
  ('2022-09-10','Trader Giotto''s Olive Oil',1),
  ('2022-09-10','TJ Almond Milk',1),
  ('2022-09-10','TJ Carrots',1),
  ('2022-09-10','Beefsteak tomato',5),
  ('2022-09-10','TJ Sauerkraut',2),
  /* 2022-09-10 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-09-10','Udupi Palace spinach masala dosa',1),
  /* 2022-09-15 Mehak Indian Cuisine; total cost $52.86 (paid by PayPal) */
  ('2022-09-15','Mehak Indian Cuisine standard set',1),
  /* 2022-09-19 Trader Joe's; total cost $51.86; checkout at 3:48 PM; paid by debit card */
  ('2022-09-19','TJ Carrots',1),
  ('2022-09-19','Yellow squash',4),
  ('2022-09-19','TJ English Shelled Peas',2),
  ('2022-09-19','Red bell pepper',2),
  ('2022-09-19','Green bell pepper',2),
  ('2022-09-19','Beefsteak tomato',8),
  ('2022-09-19','TJ Baby Spinach',1),
  ('2022-09-19','Alvarado Sprouted Wheat Tortillas',7),
  /* 2022-09-19 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-09-19','Udupi Palace spinach masala dosa',1),
  /* 2022-09-24 Trader Joe's; total cost $63.38; checkout at 8:38 PM; paid by credit card */
  ('2022-09-24','TJ Almond Milk',1),
  ('2022-09-24','TJ Sauerkraut',2),
  ('2022-09-24','TJ English Shelled Peas',3),
  ('2022-09-24','Green bell pepper',2),
  ('2022-09-24','Beefsteak tomato',6),
  ('2022-09-24','TJ Carrots',1),
  ('2022-09-24','TJ Walnuts',1),
  ('2022-09-24','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-09-24 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-09-24','Udupi Palace spinach masala dosa',1),
  /* 2022-09-27 Mehak Indian Cuisine; total cost $52.86 (paid by PayPal) */
  ('2022-09-27','Mehak Indian Cuisine standard set',1),
  /* 2022-10-02 Trader Joe's; total cost $59.74; checkout at 5:48 PM; paid by credit card */
  ('2022-10-02','TJ Almond Milk',1),
  ('2022-10-02','TJ English Shelled Peas',4),
  ('2022-10-02','TJ Carrots',1),
  ('2022-10-02','Green bell pepper',2),
  ('2022-10-02','Beefsteak tomato',8),
  ('2022-10-02','Red bell pepper',2),
  ('2022-10-02','Eggplant',2),
  ('2022-10-02','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-10-02 Udupi Palace; total cost $14.28; order placed at 5:32 PM; paid by cash */
  ('2022-10-02','Udupi Palace spinach masala dosa',1),
  /* 2022-10-05 Trader Joe's; total cost $23.16; checkout at 6:06 PM; paid by credit card;
     no Udupi Palace purchase since the restaurant is now closed on Wednesdays */
  ('2022-10-05','TJ Carrots',1),
  ('2022-10-05','Red bell pepper',2),
  ('2022-10-05','Green bell pepper',2),
  ('2022-10-05','Trader Giotto''s Olive Oil',1),
  ('2022-10-05','Beefsteak tomato',7),
  ('2022-10-05','TJ Baby Spinach',1),
  /* 2022-10-09 Trader Joe's; total cost $29.11; checkout at 4:54 PM; paid by credit card */
  ('2022-10-09','TJ Almond Milk',1),
  ('2022-10-09','TJ Walnuts',1),
  ('2022-10-09','TJ Baby Spinach',1),
  ('2022-10-09','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-10-09 Udupi Palace; total cost $14.28; order placed at 4:42 PM; paid by cash */
  ('2022-10-09','Udupi Palace spinach masala dosa',1),
  /* 2022-10-12 Trader Joe's; total cost $38.46; checkout at 4:18 PM; paid by debit card */
  ('2022-10-12','Alvarado Sprouted Wheat Tortillas',3),
  ('2022-10-12','TJ Beans',2),
  ('2022-10-12','TJ Carrots',2),
  ('2022-10-12','Green bell pepper',4),
  ('2022-10-12','Beefsteak tomato',7),
  ('2022-10-12','Red bell pepper',4),
  ('2022-10-12','Eggplant',2),
  /* 2022-10-12 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-10-12','Udupi Palace spinach masala dosa',1),
  /* 2022-10-17 Mehak Indian Cuisine; total cost $53.85 (paid by PayPal) */
  ('2022-10-17','Mehak Indian Cuisine standard set',1),
  /* 2022-10-20 Trader Joe's; total cost $55.56; checkout at 6:38 PM; paid by credit card */
  ('2022-10-20','TJ Sauerkraut',2),
  ('2022-10-20','TJ Almond Milk',1),
  ('2022-10-20','TJ English Shelled Peas',4),
  ('2022-10-20','TJ Walnuts',1),
  ('2022-10-20','Alvarado Sprouted Wheat Tortillas',6),
  /* 2022-10-20 Udupi Palace; total cost $14.28; order placed at 6:28 PM; paid by cash */
  ('2022-10-20','Udupi Palace spinach masala dosa',1),
  /* 2022-10-22 Trader Joe's; total cost $44.66; checkout at 3:39 PM; paid by debit card */
  ('2022-10-22','TJ Carrots',2),
  ('2022-10-22','Beefsteak tomato',8),
  ('2022-10-22','Red bell pepper',4),
  ('2022-10-22','TJ Baby Spinach',1),
  ('2022-10-22','Green bell pepper',4),
  ('2022-10-22','Eggplant',2),
  ('2022-10-22','Alvarado Sprouted Wheat Tortillas',3),
  ('2022-10-22','Trader Giotto''s Olive Oil',1),
  /* 2022-10-22 Udupi Palace; total cost $14.28; order placed at 3:27 PM; paid by cash */
  ('2022-10-22','Udupi Palace spinach masala dosa',1),
  /* 2022-10-27 Trader Joe's; total cost $29.66; checkout at 6:09 PM; paid by debit card */
  ('2022-10-27','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-10-27','Beefsteak tomato',7),
  ('2022-10-27','TJ Almond Milk',1),
  /* 2022-10-27 Udupi Palace; total cost $14.28; order placed at 6:02 PM; paid by cash */
  ('2022-10-27','Udupi Palace spinach masala dosa',1),
  /* 2022-10-31 Trader Joe's; total cost $35.71; checkout at 5:06 PM; paid by debit card */
  ('2022-10-31','Red bell pepper',4),
  ('2022-10-31','Green bell pepper',4),
  ('2022-10-31','TJ Carrots',2),
  ('2022-10-31','TJ Beans',1),
  ('2022-10-31','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-10-31','Eggplant',2),
  /* 2022-10-31 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-10-31','Udupi Palace spinach masala dosa',1),
  /* 2022-11-04 Trader Joe's; total cost $55.59; checkout at 3:52 PM; paid by credit card */
  ('2022-11-04','Trader Giotto''s Olive Oil',1),
  ('2022-11-04','TJ Sauerkraut',2),
  ('2022-11-04','TJ Almond Milk',1),
  ('2022-11-04','TJ Baby Spinach 6 oz',2),
  ('2022-11-04','TJ Walnuts',1),
  ('2022-11-04','Beefsteak tomato',8),
  ('2022-11-04','TJ Beans',1),
  ('2022-11-04','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-11-04 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-11-04','Udupi Palace spinach masala dosa',1),
  /* 2022-11-09 Mehak Indian Cuisine; total cost $53.85 (paid by PayPal) */
  ('2022-11-09','Mehak Indian Cuisine standard set',1),
  /* 2022-11-12 Trader Joe's; total cost $43.04; checkout at 5:30 PM; paid by debit card */
  ('2022-11-12','TJ Beans',1),
  ('2022-11-12','TJ Baby Spinach 6 oz',1),
  ('2022-11-12','TJ Carrots',1),
  ('2022-11-12','Red bell pepper',4),
  ('2022-11-12','Green bell pepper',4),
  ('2022-11-12','Eggplant',2),
  ('2022-11-12','Beefsteak tomato',8),
  ('2022-11-12','Alvarado Sprouted Wheat Tortillas',5),
  /* 2022-11-12 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-11-12','Udupi Palace spinach masala dosa',1),
  /* 2022-11-16 Trader Joe's; total cost $45.03; checkout at 5:22 PM; paid by debit card */
  ('2022-11-16','TJ Sauerkraut',2),
  ('2022-11-16','TJ Almond Milk',1),
  ('2022-11-16','TJ Walnuts',1),
  ('2022-11-16','TJ Carrots',1),
  ('2022-11-16','TJ Beans',1),
  ('2022-11-16','Beefsteak tomato',6),
  ('2022-11-16','TJ Baby Spinach 6 oz',1),
  ('2022-11-16','Alvarado Sprouted Wheat Tortillas',4),
  /* 2022-11-16 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-11-16','Udupi Palace spinach masala dosa',1),
  /* 2022-11-21 Trader Joe's; total cost $63.39; checkout at 4:53 PM; paid by debit card */
  ('2022-11-21','TJ Almond Milk',1),
  ('2022-11-21','Eggplant',2),
  ('2022-11-21','Green bell pepper',4),
  ('2022-11-21','TJ Mixed Salad',2),
  ('2022-11-21','Red bell pepper',4),
  ('2022-11-21','TJ Carrots',2),
  ('2022-11-21','TJ English Shelled Peas',3),
  ('2022-11-21','Alvarado Sprouted Wheat Tortillas',6),
  ('2022-11-21','Beefsteak tomato',7),
  /* 2022-11-21 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-11-21','Udupi Palace spinach masala dosa',1),
  /* 2022-11-23 Trader Joe's; total cost $31.73; checkout at 4:36 PM; paid by debit card */
  ('2022-11-23','TJ Walnuts',1),
  ('2022-11-23','TJ English Shelled Peas',3),
  ('2022-11-23','TJ Baby Spinach',1),
  ('2022-11-23','Trader Giotto''s Olive Oil',1),
  ('2022-11-23','Beefsteak tomato',6),
  /* 2022-11-23 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-11-23','Udupi Palace spinach masala dosa',1),
  /* 2022-11-28 Mehak Indian Cuisine; total cost $53.85 (paid by PayPal) */
  ('2022-11-28','Mehak Indian Cuisine standard set',1),
  /* 2022-12-01 Trader Joe's total cost $37.25; checkout at 6:01 PM; paid by credit card; no Udupi Palace */
  ('2022-12-01','TJ Almond Milk',1),
  ('2022-12-01','TJ English Shelled Peas',3),
  ('2022-12-01','Alvarado Sprouted Wheat Tortillas',3),
  ('2022-12-01','Beefsteak tomato',8),
  /* 2022-12-02 Trader Joe's total cost $35.17; checkout at 5:54 PM; paid by debit card */
  ('2022-12-02','TJ Carrots',2),
  ('2022-12-02','TJ Baby Spinach 6 oz',2),
  ('2022-12-02','Beefsteak tomato',7),
  ('2022-12-02','Green bell pepper',4),
  ('2022-12-02','Eggplant',2),
  ('2022-12-02','Red bell pepper',4),
  ('2022-12-02','TJ Flour Burrito',3),
  /* 2022-12-02 Udupi Palace; total cost $14.28; order placed 5:39 PM; paid by cash */
  ('2022-12-02','Udupi Palace spinach masala dosa',1),
  /* 2022-12-04 Trader Joe's; total cost $32.89; checkout at 4:51 PM; paid by debit card */
  ('2022-12-04','TJ Almond Milk',1),
  ('2022-12-04','Alvarado Sprouted Wheat Tortillas',10),
  /* 2022-12-04 Udupi Palace; total cost $14.28; paid by cash */
  ('2022-12-04','Udupi Palace spinach masala dosa',1),
  /* 2022-12-13 Trader Joe's; total cost $73.31; checkout at 2:02 PM; paid by debit card; no Udupi Palace trip as they were closed (Tuesday) */
  ('2022-12-13','TJ Walnuts',1),
  ('2022-12-13','TJ Almond Milk',1),
  ('2022-12-13','TJ Baby Spinach',1),
  ('2022-12-13','TJ Sauerkraut',2),
  ('2022-12-13','TJ English Shelled Peas',5),
  ('2022-12-13','Alvarado Sprouted Wheat Tortillas',9),
  /* 2022-12-14 Trader Joe's; total cost $36.95; checkout at 4:17 PM; paid by credit card */
  ('2022-12-14','Red bell pepper',4),
  ('2022-12-14','Beefsteak tomato',12),
  ('2022-12-14','TJ Carrots',2),
  ('2022-12-14','Green bell pepper',4),
  ('2022-12-14','Trader Giotto''s Olive Oil',1),
  ('2022-12-14','Eggplant',2),
  /* 2022-12-14 Udupi Palace; total cost $14.28; order placed at 4:04 PM; paid by cash */
  ('2022-12-14','Udupi Palace spinach masala dosa',1),
  /* 2022-12-21 Revival Bar & Kitchen */
  ('2022-12-21','Revival Bar & Kitchen paella',1),
  /* 2022-12-21 Trader Joe's; total cost $38.76; checkout at 8:48 PM; paid by debit card */
  ('2022-12-21','TJ Almond Milk',1),
  ('2022-12-21','TJ Carrots',2),
  ('2022-12-21','TJ Baby Spinach',1),
  ('2022-12-21','Alvarado Sprouted Wheat Tortillas',10),
  /* 2022-12-22 Mehak Indian Cuisine; total cost $53.85 (paid by PayPal) */
  ('2022-12-22','Mehak Indian Cuisine standard set',1),
  /* 2022-12-24 Trader Joe's; total cost $52.09; checkout at 3:43 PM; paid by credit card */
  ('2022-12-24','TJ Sauerkraut',2),
  ('2022-12-24','TJ Walnuts',1),
  ('2022-12-24','Yellow squash',4),
  ('2022-12-24','TJ English Shelled Peas',3),
  ('2022-12-24','Beefsteak tomato',12),
  ('2022-12-24','Eggplant',2),
  /* 2022-12-24 Udupi Palace; total cost $14.28; order at 3:29 PM; paid by cash */
  ('2022-12-24','Udupi Palace spinach masala dosa',1),
  /* 2022-12-28 Trader Joe's; total cost $54.95; checkout at 5:03 PM; paid by debit card */
  ('2022-12-28','TJ Almond Milk',1),
  ('2022-12-28','Eggplant',2),
  ('2022-12-28','TJ Beans',2),
  ('2022-12-28','Beefsteak tomato',10),
  ('2022-12-28','TJ Baby Spinach',1),
  ('2022-12-28','Yellow squash',2),
  ('2022-12-28','TJ Carrots',2),
  ('2022-12-28','TJ Carb Savvy Tortillas',6),
  /* 2022-12-28 Udupi Palace; total cost $14.28; checkout at 4:51 PM; paid by cash */
  ('2022-12-28','Udupi Palace spinach masala dosa',1),
  /* 2022-12-31 Udupi Palace (Valencia Street in the Mission in San Francisco); in-restaurant lunch; paid for by former employer */
  ('2022-12-31','Udupi Palace bisi bele bath',1),
  ('2022-12-31','Udupi Palace sambhar',1),
  /* 2023-01-03 Trader Joe's; total cost $46.93; checkout at 1:55 PM; paid by debit card;
     no Udupi Palace visit as this was a Tuesday */
  ('2023-01-03','TJ Almond Milk',1),
  ('2023-01-03','TJ Walnuts',1),
  ('2023-01-03','Beefsteak tomato',7),
  ('2023-01-03','TJ English Shelled Peas',2),
  ('2023-01-03','Alvarado Sprouted Wheat Tortillas',8), /* they billed me for 6; I noticed this after I got back home */
  /* 2023-01-06 Mehak Indian Cuisine; order placed at 12:08 PM; paid by PayPal */
  ('2023-01-06','Mehak Indian Cuisine standard set',1),
  /* 2023-01-08 Trader Joe's; total cost $57.36; checkout at 4:38 PM; paid by debit card */
  ('2023-01-08','TJ Almond Milk',1),
  ('2023-01-08','TJ Carrots',3),
  ('2023-01-08','TJ English Shelled Peas',4),
  ('2023-01-08','Yellow squash',3),
  ('2023-01-08','TJ Baby Spinach',2),
  ('2023-01-08','Beefsteak tomato',10),
  ('2023-01-08','Alvarado Sprouted Wheat Tortillas',3),
  /* 2023-01-08 Udupi Palace; total cost $14.28; order placed at 4:27 PM; paid by cash */
  ('2023-01-08','Udupi Palace spinach masala dosa',1),
  /* 2023-01-12 Trader Joe's; total cost $57.15; checkout at 5:57 PM; paid by credit card */
  ('2023-01-12','TJ Walnuts',1),
  ('2023-01-12','Green bell pepper',4),
  ('2023-01-12','Eggplant',2),
  ('2023-01-12','Beefsteak tomato',8),
  ('2023-01-12','Trader Giotto''s Olive Oil',1),
  ('2023-01-12','Alvarado Sprouted Wheat Tortillas',9),
  /* 2023-01-12 Udupi Palace; total cost $14.28; order placed at 5:47 PM; paid by cash */
  ('2023-01-12','Udupi Palace spinach masala dosa',1),
  /* 2023-01-16 Mehak Indian Cuisine; order placed at 12:32 PM; paid by PayPal */
  ('2023-01-16','Mehak Indian Cuisine standard set',1),
  /* 2023-01-21 Trader Joe's; total cost $.74.44; checkout at 4:26 PM; paid by credit card */
  ('2023-01-21','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-01-21','TJ Almond Milk',1),
  ('2023-01-21','TJ Baby Spinach',1),
  ('2023-01-21','TJ English Shelled Peas',4),
  ('2023-01-21','Beefsteak tomato',9),
  ('2023-01-21','TJ Walnuts',1),
  ('2023-01-21','Alvarado Sprouted Wheat Tortillas',9),
  /* 2023-01-21 Udupi Palace; total cost $14.28; order placed at 4:10 PM; paid by cash */
  ('2023-01-21','Udupi Palace spinach masala dosa',1),
  /* 2023-01-24 Mehak Indian Cuisine; order placed 3:36 PM in advance of dinner opening at 5 PM; paid by PayPal */
  ('2023-01-24','Mehak Indian Cuisine standard set',1),
  /* 2023-01-26 Udupi Palace; in-person dinner; total cost ~$20 */
  ('2023-01-26','Udupi Palace bisi bele bath',1),
  ('2023-01-26','Udupi Palace sambhar',1),
  /* 2023-01-26 Trader Joe's; total cost $47.03; checkout at 8:15 PM; paid by debit card */
  ('2023-01-26','TJ Carrots',1),
  ('2023-01-26','Green bell pepper',4),
  ('2023-01-26','Red bell pepper',4),
  ('2023-01-26','Beefsteak tomato',8),
  ('2023-01-26','Eggplant',2),
  ('2023-01-26','Alvarado Sprouted Wheat Tortillas',8),
  /* 2023-02-01 Trader Joe's; total cost $64.33; checkout at 6:26 PM; paid by debit card */
  ('2023-02-01','Alvarado Sprouted Wheat Tortillas',5),
  ('2023-02-01','Trader Giotto''s Olive Oil',1),
  ('2023-02-01','TJ Almond Milk',1),
  ('2023-02-01','TJ Baby Spinach',1),
  ('2023-02-01','TJ Sauerkraut',2),
  ('2023-02-01','TJ English Shelled Peas',4), /* billed for 3 */
  ('2023-02-01','TJ Turmeric',1),
  ('2023-02-01','TJ Cumin',1),
  ('2023-02-01','TJ Cayenne Pepper',1),
  ('2023-02-01','TJ Walnuts',1),
  /* 2023-02-01 Udupi Palace; order placed at 6:16 PM; paid by cash */
  ('2023-02-01','Udupi Palace spinach masala dosa',1),
  /* 2023-02-02 Mehak Indian Cuisine standard set + bengan bharta */
  ('2023-02-02','Mehak Indian Cuisine standard set',1),
  ('2023-02-02','Mehak Indian Cuisine bengan bharta',1),
  /* 2023-02-08 Trader Joe's; total cost $42.69; checkout at 5:27 PM; paid by debit card */
  ('2023-02-08','TJ Almond Milk',1),
  ('2023-02-08','Tomatoes on the vine',8), /* 2 packs of 4 */
  ('2023-02-08','TJ Carrots',1),
  ('2023-02-08','Red bell pepper',4),
  ('2023-02-08','Eggplant',2),
  ('2023-02-08','Green bell pepper',4),
  ('2023-02-08','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-02-08 Udupi Palace; total cost $14.28; order placed at 5:15 PM; paid by cash */
  ('2023-02-08','Udupi Palace spinach masala dosa',1),
  /* 2023-02-10 Mehak Indian Cuisine standard set + dal soup + chana masala */
  ('2023-02-10','Mehak Indian Cuisine standard set',1),
  ('2023-02-10','Mehak Indian Cuisine chana masala',1),
  ('2023-02-10','Mehak Indian Cuisine dal soup',1),
  /* 2023-02-15 Trader Joe's; total cost $77.01; checkout at 3:46 PM; paid by credit card */
  ('2023-02-15','TJ Walnuts',1),
  ('2023-02-15','TJ Almond Milk',1),
  ('2023-02-15','TJ English Shelled Peas',4),
  ('2023-02-15','TJ Carrots',1),
  ('2023-02-15','Red bell pepper',3),
  ('2023-02-15','Beefsteak tomato',9),
  ('2023-02-15','Alvarado Sprouted Wheat Tortillas',10),
  /* 2023-02-15 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-02-15','Udupi Palace spinach masala dosa',1),
  /* 2023-02-19 Trader Joe's; total cost $34.08; checkout at 3:41 PM; paid by credit card */
  ('2023-02-19','TJ Almond Milk',1),
  ('2023-02-19','Green bell pepper',4),
  ('2023-02-19','TJ Carrots',2),
  ('2023-02-19','Zucchini squash',3), /* pack of 3, so counted as 1 in their receipt */
  ('2023-02-19','Red bell pepper',4),
  ('2023-02-19','Beefsteak tomato',8),
  ('2023-02-19','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-02-19 Udupi Palace; total cost $14.28; order placed at 3:30 PM; paid by cash */
  ('2023-02-19','Udupi Palace spinach masala dosa',1),
  /* 2023-02-22 Trader Joe's; total cost $69.66; checkout at 4:22 PM; paid by debit card */
  ('2023-02-22','TJ Baby Spinach',1),
  ('2023-02-22','Zucchini squash',3), /* pack of 3, so counted as 1 in their receipt */
  ('2023-02-22','TJ English Shelled Peas',4),
  ('2023-02-22','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-02-22','TJ Walnuts',1),
  ('2023-02-22','Alvarado Sprouted Wheat Tortillas',7),
  ('2023-02-22','TJ Almond Milk',1),
  ('2023-02-22','Beefsteak tomato',8),
  /* 2023-02-22 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-02-22','Udupi Palace spinach masala dosa',1),
  /* 2023-02-25 Trader Joe's; total cost $53.19; checkout at 4:00 PM; paid by debit card */
  ('2023-02-25','TJ Baby Spinach',1),
  ('2023-02-25','TJ Carrots',1),
  ('2023-02-25','TJ Miso Ginger Broth',1),
  ('2023-02-25','Beefsteak tomato',5),
  ('2023-02-25','Eggplant',2),
  ('2023-02-25','Alvarado Sprouted Wheat Tortillas',10),
  ('2023-02-25','Trader Giotto''s Olive Oil',1),
  /* 2023-02-25 Udupi Palace; total cost $14.28; order placed at 3:44 PM; paid by cash */
  ('2023-02-25','Udupi Palace spinach masala dosa',1),
  /* 2023-03-01 Mehak Indian Cuisine; order placed at 4:30 PM (prior to evening open of 5 PM) for estimated pick 5:15 PM; total cost $53.85 */
  ('2023-03-01','Mehak Indian Cuisine standard set',1),
  /* 2023-03-03 Trader Joe's; total cost $58.34; checkout at 5:23 PM; paid by debit card */
  ('2023-03-03','TJ Miso Ginger Broth',1),
  ('2023-03-03','TJ Walnuts',1),
  ('2023-03-03','TJ Sauerkraut',2),
  ('2023-03-03','TJ Almond Milk',1),
  ('2023-03-03','TJ English Shelled Peas',2),
  ('2023-03-03','Alvarado Sprouted Wheat Tortillas',9),
  /* 2023-03-03 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-03-03','Udupi Palace spinach masala dosa',1),
  /* 2023-03-08 Trader Joe's; total cost $73.25; checkout at 5:51 PM; paid by debit card */
  ('2023-03-08','TJ Miso Ginger Broth',1),
  ('2023-03-08','TJ English Shelled Peas',4),
  ('2023-03-08','TJ Carrots',2),
  ('2023-03-08','Red bell pepper',4),
  ('2023-03-08','TJ Baby Spinach',1),
  ('2023-03-08','Eggplant',2),
  ('2023-03-08','Green bell pepper',4),
  ('2023-03-08','Beefsteak tomato',10),
  ('2023-03-08','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-03-08 Udupi Palace; total cost: $14.28; paid by cash */
  ('2023-03-08','Udupi Palace spinach masala dosa',1),
  /* 2023-03-16 Trader Joe's; total cost $63.86; checkout at 6:06 PM; paid by credit card */
  ('2023-03-16','TJ Miso Ginger Broth',1),
  ('2023-03-16','TJ Almond Milk',1),
  ('2023-03-16','TJ Carrots',1),
  ('2023-03-16','Beefsteak tomato',6),
  ('2023-03-16','TJ Baby Spinach',1),
  ('2023-03-16','TJ Walnuts',1),
  ('2023-03-16','Alvarado Sprouted Wheat Tortillas',11),
  ('2023-03-16','TJ Beans',2),
  /* 2023-03-16 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-03-16','Udupi Palace spinach masala dosa',1),
  /* 2023-03-17 Mehak Indian Cuisine; order placed at 12:28 PM; paid via PayPal */
  ('2023-03-17','Mehak Indian Cuisine standard set',1),
  /* 2023-03-23 Trader Joe's; total cost $74.67; checkout at 5:49 PM; paid by debit card */
  ('2023-03-23','TJ English Shelled Peas',4),
  ('2023-03-23','TJ Almond Milk',1),
  ('2023-03-23','TJ Carrots',1),
  ('2023-03-23','Eggplant',2),
  ('2023-03-23','Green bell pepper',4),
  ('2023-03-23','Red bell pepper',4),
  ('2023-03-23','Beefsteak tomato',7),
  ('2023-03-23','Alvarado Sprouted Wheat Tortillas',10),
  /* 2023-03-23 Udupi Palace; total cost $14.28; order placed at 5:37 PM; paid by cash */
  ('2023-03-23','Udupi Palace spinach masala dosa',1),
  /* 2023-03-31 Trader Joe's; total cost $63.31; checkout at 6:45 PM; paid by debit card */
  ('2023-03-31','TJ Almond Milk',1),
  ('2023-03-31','TJ Sauerkraut',2),
  ('2023-03-31','TJ Miso Ginger Broth',1),
  ('2023-03-31','Trader Giotto''s Olive Oil',1),
  ('2023-03-31','TJ Walnuts',1),
  ('2023-03-31','TJ Beans',2),
  ('2023-03-31','TJ Carrots',2),
  ('2023-03-31','TJ Baby Spinach',2),
  ('2023-03-31','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-03-31 Udupi Palace; total cost $14.28; order placed at 6:33 PM; paid by cash */
  ('2023-03-31','Udupi Palace spinach masala dosa',1),
  /* 2023-04-03 Trdaer Joe's; total cost $27.88; checkout at 6:44 PM; paid by debit card */
  ('2023-04-03','Trader Giotto''s Olive Oil',1),
  ('2023-04-03','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-04-03','TJ Miso Ginger Broth',1),
  ('2023-04-03','TJ Walnuts',1),
  ('2023-04-03','Green bell pepper',4),
  ('2023-04-03','Red bell pepper',4),
  /* 2023-04-03 Udupi Palace;  total cost $14.28; order placed at 6:34 PM; paid by cash */
  ('2023-04-03','Udupi Palace spinach masala dosa',1),
  /* 2023-04-05 Trader Joe's; total cost $48.78; checkout at 5:25 PM; paid by debit card */
  ('2023-04-05','TJ English Shelled Peas',4),
  ('2023-04-05','TJ Carrots',1),
  ('2023-04-05','TJ Almond Milk',1),
  ('2023-04-05','TJ Baby Spinach',1),
  ('2023-04-05','Eggplant',2),
  ('2023-04-05','Alvarado Sprouted Wheat Tortillas',1),
  ('2023-04-05','Beefsteak tomato',12),
  /* 2023-04-05 Udupi Palace; total cost $14.28; order placed at 5:15 PM; paid by cash */
  ('2023-04-05','Udupi Palace spinach masala dosa',1),
  /* 2023-04-08 Trader Joe's; total cost $50.81; checkout at 2:21 PM; paid by debit card */
  ('2023-04-08','TJ Almond Milk',1),
  ('2023-04-08','TJ Miso Ginger Broth',1),
  ('2023-04-08','Beefsteak tomato',5),
  ('2023-04-08','TJ Walnuts',1),
  ('2023-04-08','Alvarado Sprouted Wheat Tortillas',11),
  /* 2023-04-08 Udupi Palace; total cost $14.28; order placed at 2:13 PM; paid by cash */
  ('2023-04-08','Udupi Palace spinach masala dosa',1),
  /* 2023-04-12 Mehak Indian Cuisine; total cost $53.85; order placed at 6:34 PM; paid by debit card */
  ('2023-04-12','Mehak Indian Cuisine standard set',1),
  /* 2023-04-16 Trader Joe's; total cost $86.90; checkout at 5:45 PM; paid by debit card */
  ('2023-04-16','TJ Sauerkraut',2),
  ('2023-04-16','TJ Miso Ginger Broth',1),
  ('2023-04-16','TJ English Shelled Peas',5),
  ('2023-04-16','Beefsteak tomato',9),
  ('2023-04-16','Alvarado Sprouted Wheat Tortillas',13),
  /* 2023-04-16 Udupi Palace; total cost $14.28; order placed at 5:33 PM; paid by cash */
  ('2023-04-16','Udupi Palace spinach masala dosa',1),
  /* 2023-04-19 Trader Joe's; total cost $38.77; checkout at 8:35 PM; paid by debit card */
  ('2023-04-19','TJ Almond Milk',1),
  ('2023-04-19','TJ Miso Ginger Broth',1),
  ('2023-04-19','TJ Walnuts',1),
  ('2023-04-19','TJ Carrots',1),
  ('2023-04-19','TJ Baby Spinach',1),
  ('2023-04-19','Eggplant',3),
  ('2023-04-19','Beefsteak tomato',7),
  ('2023-04-19','Red bell pepper',4),
  ('2023-04-19','Green bell pepper',4),
  /* 2023-04-19 Udupi Palace; total cost $14.28; order placed at 8:23 PM; paid by cash */
  ('2023-04-19','Udupi Palace spinach masala dosa',1),
  /* 2023-04-28 Trader Joe's; total cost $46.41; checkout at 8:17 PM; paid by debit card */
  ('2023-04-28','TJ Walnuts',1),
  ('2023-04-28','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-04-28','TJ Almond Milk',1),
  ('2023-04-28','TJ Miso Ginger Broth',1),
  ('2023-04-28','TJ Beans',2),
  ('2023-04-28','TJ Baby Spinach',1),
  ('2023-04-28','TJ Carrots',1),
  ('2023-04-28','Alvarado Sprouted Wheat Tortillas',5),
  ('2023-04-28','Red bell pepper',2),
  ('2023-04-28','Green bell pepper',4),
  /* 2023-04-28 Udupi Palace; total cost $14.28; order placed 8:06 PM; paid by cash */
  ('2023-04-28','Udupi Palace spinach masala dosa',1),
  /* 2023-05-03 Udupi Palace; in-person lunch; paid by other side */
  ('2023-05-03','Udupi Palace bisi bele bath',1),
  ('2023-05-03','Udupi Palace sambhar (small)',1),
  /* 2023-05-03 Trader Joe's; total cost $55.84; checkout at 2:48 PM; paid by debit card */
  ('2023-05-03','TJ English Shelled Peas',4),
  ('2023-05-03','Alvarado Sprouted Wheat Tortillas',12),
  /* 2023-05-06 Trader Joe's; total cost $40.89; checkout at 6:31 PM; paid by debit card */
  ('2023-05-06','TJ Carrots',1),
  ('2023-05-06','TJ Baby Spinach 6 oz',2),
  ('2023-05-06','TJ Miso Ginger Broth',1),
  ('2023-05-06','Trader Giotto''s Olive Oil',1),
  ('2023-05-06','Red bell pepper',2),
  ('2023-05-06','Eggplant',2),
  ('2023-05-06','Beefsteak tomato',9),
  ('2023-05-06','Alvarado Sprouted Wheat Tortillas',3),
  /* 2023-05-06 Udupi Palace; total cost $14.28; order placed at 6:18 PM; paid by cash */
  ('2023-05-06','Udupi Palace spinach masala dosa',1),
  /* 2023-05-11 dinner at Imm Thai Street Food; paid $20 in cash to cover cost + taxes + tip */
  ('2023-05-11','Half spicy eggplant tofu and half yellow curry tofu',1),
  /* 2023-05-11 Trader Joe's; total cost $67.69; checkout at 8:14 PM; paid by debit card */
  ('2023-05-11','TJ Baby Spinach',1),
  ('2023-05-11','TJ English Shelled Peas',3),
  ('2023-05-11','TJ Carrots',1),
  ('2023-05-11','Beefsteak tomato',8),
  ('2023-05-11','Red bell pepper',4),
  ('2023-05-11','Green bell pepper',4),
  ('2023-05-11','Alvarado Sprouted Wheat Tortillas',10),
  /* 2023-05-16 Mehak Indian Cuisine; total cost $53.85; order placed at 7:46 PM; paid by debit card */
  ('2023-05-16','Mehak Indian Cuisine standard set',1),
  /* 2023-05-20 Trader Joe's; total cost $50.99; checkout at 5:16 PM; paid by credit card */
  ('2023-05-20','TJ Beans',2),
  ('2023-05-20','TJ Miso Ginger Broth',1),
  ('2023-05-20','TJ Carrots',1),
  ('2023-05-20','Beefsteak tomato',9),
  ('2023-05-20','TJ Baby Spinach',1),
  ('2023-05-20','TJ English Shelled Peas',1),
  ('2023-05-20','Eggplant',2),
  ('2023-05-20','TJ Indian Style Flatbread',2),
  ('2023-05-20','Alvarado Sprouted Wheat Tortillas',1),
  ('2023-05-20','TJ Walnuts',1),
  /* 2023-05-20 Udupi Palace; total cost $14.28; order placed at 5:05 PM; paid by cash */
  ('2023-05-20','Udupi Palace spinach masala dosa',1),
  /* 2023-05-26 Trader Joe's; total cost $82.79; checkout at 12:59 PM; paid by debit card */
  ('2023-05-26','TJ Walnuts',1),
  ('2023-05-26','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-05-26','TJ English Shelled Peas',4),
  ('2023-05-26','TJ Sauerkraut',2),
  ('2023-05-26','Trader Giotto''s Olive Oil',1),
  ('2023-05-26','Alvarado Sprouted Wheat Tortillas',10),
  ('2023-05-26','TJ Miso Ginger Broth',1),
  ('2023-05-26','TJ Almond Milk',1),
  /* 2023-05-26 Udupi Palace; total cost $14.28; order placed at 12:50 PM; paid by cash */
  ('2023-05-26','Udupi Palace spinach masala dosa',1),
  /* 2023-05-28 Trader Joe's; total cost $46.08; checkout at 5:58 PM; paid by debit card */
  ('2023-05-28','TJ Walnuts',1),
  ('2023-05-28','TJ Miso Ginger Broth',1),
  ('2023-05-28','TJ Carrots',1),
  ('2023-05-28','TJ Baby Spinach',1),
  ('2023-05-28','Alvarado Sprouted Wheat Tortillas',6),
  ('2023-05-28','Beefsteak tomato',8),
  ('2023-05-28','Red bell pepper',2),
  ('2023-05-28','Green bell pepper',2),
  /* 2023-05-28 Udupi Palace; total cost $14.28; order placed at 5:44 PM; paid by cash */
  ('2023-05-28','Udupi Palace spinach masala dosa',1),
  /* 2023-06-04 Trader Joe's; total cost $54.74; checkout at 2:12 PM; paid by debit card */
  ('2023-06-04','TJ Miso Ginger Broth',1),
  ('2023-06-04','Dutch yellow potatoes 1.5 lb',1),
  ('2023-06-04','TJ Carrots',1),
  ('2023-06-04','Beefsteak tomato',8),
  ('2023-06-04','Eggplant',2),
  ('2023-06-04','Green bell pepper',2),
  ('2023-06-04','Red bell pepper',2),
  ('2023-06-04','TJ Walnuts',1),
  ('2023-06-04','TJ Baby Spinach',1),
  ('2023-06-04','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-06-04 Udupi Palace; total cost $14.28; order placed at 1:58 PM; paid by cash */
  ('2023-06-04','Udupi Palace spinach masala dosa',1),
  /* 2023-06-07 Trader Joe's; total cost $33.11; checkout at 5:24 PM; paid by debit card */
  ('2023-06-07','TJ Miso Ginger Broth',1),
  ('2023-06-07','TJ Almond Milk',1),
  ('2023-06-07','TJ Baby Spinach',1),
  ('2023-06-07','Dutch yellow potatoes 1.5 lb',1),
  ('2023-06-07','TJ English Shelled Peas',4),
  ('2023-06-07','TJ Carrots',1),
  /* 2023-06-07 Udupi Palace; total cost $14.28; order placed at 5:15 PM; paid by cash */
  ('2023-06-07','Udupi Palace spinach masala dosa',1),
  /* 2023-06-14 Trader Joe's; total cost $57.44; checkout at 12:13 PM; paid by credit card */
  ('2023-06-14','TJ Almond Milk',1),
  ('2023-06-14','TJ Beans',2),
  ('2023-06-14','Dutch yellow potatoes 1.5 lb',1),
  ('2023-06-14','Beefsteak tomato',8),
  ('2023-06-14','Red bell pepper',2),
  ('2023-06-14','Green bell pepper',2),
  ('2023-06-14','Alvarado Sprouted Wheat Tortillas',10),
  /* 2023-06-14 Udupi Palace; total cost $14.28; order placed at 12:05 PM; paid by cash */
  ('2023-06-14','Udupi Palace spinach masala dosa',1),
  /* 2023-06-19 Trader Joe's; total cost $50.65; checkout at 8:04 PM; paid by debit card */
  ('2023-06-19','TJ Walnuts',1),
  ('2023-06-19','TJ Carrots',1),
  ('2023-06-19','TJ Baby Spinach 6 oz',2),
  ('2023-06-19','Red bell pepper',2),
  ('2023-06-19','Eggplant',2),
  ('2023-06-19','Green bell pepper',2),
  ('2023-06-19','Beefsteak tomato',8),
  ('2023-06-19','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-06-19 Udupi Palace; total cost $14.28; order placed at 7:52 PM; paid by cash */
  ('2023-06-19','Udupi Palace spinach masala dosa',1),
  /* 2023-06-23 Trader Joe's; total cost $53.56; checkout at 7:15 PM; paid by debit card */
  ('2023-06-23','TJ Miso Ginger Broth',1),
  ('2023-06-23','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-06-23','TJ Almond Milk',1),
  ('2023-06-23','Trader Giotto''s Olive Oil',1),
  ('2023-06-23','TJ Baby Spinach',1),
  ('2023-06-23','Dutch yellow potatoes 1.5 lb',1),
  ('2023-06-23','TJ Carrots',1),
  ('2023-06-23','Alvarado Sprouted Wheat Tortillas',3),
  ('2023-06-23','TJ English Shelled Peas',4),
  /* 2023-06-23 Udupi Palace; total cost $14.28; order placed at 7:04 PM; paid by cash */
  ('2023-06-23','Udupi Palace spinach masala dosa',1),
  /* 2023-06-25 Trader Joe's; total cost $26.44; checkout at 2:29 PM; paid by debit card */
  ('2023-06-25','Beefsteak tomato',8),
  ('2023-06-25','TJ Miso Ginger Broth',1),
  ('2023-06-25','Dutch yellow potatoes 1.5 lb',1),
  ('2023-06-25','Red bell pepper',2),
  ('2023-06-25','Green bell pepper',2),
  ('2023-06-25','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-06-25 Udupi Palace; total cost $14.28; order placed at 2:18 PM; paid by cash */
  ('2023-06-25','Udupi Palace spinach masala dosa',1),
  /* 2023-07-03 Trader Joe's; total cost $65.03; checkout at 6:48 PM; paid by debit card */
  ('2023-07-03','TJ Organic Tomato and Roasted Red Pepper Soup',2),
  ('2023-07-03','TJ Baby Spinach',1),
  ('2023-07-03','TJ English Shelled Peas',4),
  ('2023-07-03','TJ Miso Ginger Broth',2),
  ('2023-07-03','Beefsteak tomato',8),
  ('2023-07-03','Eggplant',2),
  ('2023-07-03','Dutch yellow potatoes 1.5 lb',2),
  ('2023-07-03','Red bell pepper',2),
  ('2023-07-03','Green bell pepper',2),
  ('2023-07-03','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-07-03 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-07-03','Udupi Palace spinach masala dosa',1),
  /* 2023-07-08 Trader Joe's; total cost $45.96; checkout at 5:37 PM; paid by debit card */
  ('2023-07-08','TJ Almond Milk',1),
  ('2023-07-08','TJ Miso Ginger Broth',1),
  ('2023-07-08','TJ Carrots',1),
  ('2023-07-08','Dutch yellow potatoes 1.5 lb',2),
  ('2023-07-08','Red bell pepper',2),
  ('2023-07-08','Green bell pepper',2),
  ('2023-07-08','Beefsteak tomato',8),
  ('2023-07-08','TJ Baby Spinach 6 oz',2),
  ('2023-07-08','Alvarado Sprouted Wheat Tortillas',5),
  /* 2023-07-08 Udupi Place; total cost $14.28; order placed at 5:27 PM; paid by cash */
  ('2023-07-08','Udupi Palace spinach masala dosa',1),
  /* 2023-07-12 Berkeley Bowl; total cost $40.74; checkout at 11:49 AM; paid by debit card */
  ('2023-07-12','Near East Couscous',1),
  ('2023-07-12','Lundberg Organic California White Basmati Rice',2),
  ('2023-07-12','Cocojune Organic Pure Coconut Dairy Free Yogurt',1),
  ('2023-07-12','Kite Hill Unsweetened Plain Almond Milk Yogurt',2),
  /* 2023-07-12 Tuk Tuk Thai; total cost $12.51; purchase around noon; paid by cash */
  ('2023-07-12','Tuk Tuk Thai jasmine rice',3),
  /* 2023-07-15 Berkeley Bowl; total cost $43.93; checkout at 1:01 PM; paid by credit card */
  ('2023-07-15','Cocojune Organic Pure Coconut Dairy Free Yogurt',3),
  ('2023-07-15','Kite Hill Unsweetened Plain Almond Milk Yogurt',4),
  /* 2023-07-20 Trader Joe's; total cost $459.74; checkout at 7:17 PM; paid by debit card */
  ('2023-07-20','TJ Carrots',1),
  ('2023-07-20','Green bell pepper',2),
  ('2023-07-20','TJ Baby Spinach',1),
  ('2023-07-20','Red bell pepper',2),
  ('2023-07-20','Beefsteak tomato',8),
  ('2023-07-20','TJ English Shelled Peas',4),
  ('2023-07-20','Eggplant',2),
  ('2023-07-20','Alvarado Sprouted Wheat Tortillas',6),
  /* 2023-07-20 Udupi Palace; total cost $14.28; order placed at 7:06 PM; paid by cash */
  ('2023-07-20','Udupi Palace spinach masala dosa',1),
  /* 2023-07-27 Trader Joe's; total cost $60.05; order placed at 7:26 PM; paid by debit card */
  ('2023-07-27','TJ Walnuts',1),
  ('2023-07-27','TJ Almond Milk',1),
  ('2023-07-27','TJ Miso Ginger Broth',1),
  ('2023-07-27','TJ Sauerkraut',2),
  ('2023-07-27','TJ Carrots',1),
  ('2023-07-27','Dutch yellow potatoes 1.5 lb',1),
  ('2023-07-27','Trader Giotto''s Olive Oil',1),
  ('2023-07-27','TJ English Shelled Peas',3),
  ('2023-07-27','Alvarado Sprouted Wheat Tortillas',3),
  ('2023-07-27','TJ Baby Spinach',1),
  /* 2023-07-27 Udupi Palace; total cost $14.28; order placed at 7:14 PM; paid by cash */
  ('2023-07-27','Udupi Palace spinach masala dosa',1),
  /* 2023-07-30 Trader Joe's; total cost $59.33; checkout at 4:46 PM; paid by debit card */
  ('2023-07-30','Trader Giotto''s Olive Oil',1),
  ('2023-07-30','Eggplant',2),
  ('2023-07-30','TJ Baby Spinach',1),
  ('2023-07-30','Alvarado Sprouted Wheat Tortillas',10),
  ('2023-07-30','Red bell pepper',2),
  ('2023-07-30','Green bell pepper',2),
  ('2023-07-30','Beefsteak tomato',9),
  /* 2023-07-30 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-07-30','Udupi Palace spinach masala dosa',1),
  /* 2023-08-04 Trader Joe's; total cost $53.54; checkout at 7:40 PM; paid by debit card;
     there was no trip to Udupi Palace on this date due to a sore throat */
  ('2023-08-04','TJ Mixed Baby Kale',2),
  ('2023-08-04','TJ Miso Ginger Broth',1),
  ('2023-08-04','TJ Almond Milk',1),
  ('2023-08-04','Beefsteak tomato',8),
  ('2023-08-04','Green bell pepper',2),
  ('2023-08-04','TJ Carrots',1),
  ('2023-08-04','Red bell pepper',2),
  ('2023-08-04','Alvarado Sprouted Wheat Tortillas',9),
  /* The Dutch yellow potatoes were missed by the sales clerk */
  ('2023-08-04','Dutch yellow potatoes 1.5 lb',1),
  /* 2023-08-05 Berkeley Bowl; total cost $34.44; checkout at 12:34 PM; paid by debit card */
  ('2023-08-05','Lundberg Organic California White Jasmine Rice',1),
  ('2023-08-05','Cocojune Organic Pure Coconut Dairy Free Yogurt',2),
  ('2023-08-05','Kite Hill Unsweetened Plain Almond Milk Yogurt',3),
  /* 2023-08-11 Trader Joe's; total cost $53.03; checkout at 2:27 PMl paid by debit card;
      there was no trip to Udupi Palace on this date due to a sore throat */
  ('2023-08-11','TJ English Shelled Peas',4),
  ('2023-08-11','TJ Miso Ginger Broth',2),
  ('2023-08-11','TJ Baby Spinach',1),
  ('2023-08-11','TJ Almond Milk',1),
  ('2023-08-11','TJ Cinnamon',1), /* I intended to buy cumin, but ended up buying cinnamon instead! Anyway I do use cinnamon so I'll let this be, but I need to buy cumin next time */
  ('2023-08-11','Trader Giotto''s Olive Oil',1),
  ('2023-08-11','TJ Turmeric',1),
  ('2023-08-11','TJ Carrots',1),
  ('2023-08-11','Dutch yellow potatoes 1.5 lb',1),
  ('2023-08-11','Red bell pepper',2),
  ('2023-08-11','Green bell pepper',2),
  /* 2023-08-18 Trader Joe's; total cost $50.26; checkout at 7:56 PM; paid by debit card */
  ('2023-08-18','TJ Almond Milk',1),
  ('2023-08-18','TJ Baby Spinach 6 oz',2),
  ('2023-08-18','TJ Cumin',1),
  ('2023-08-18','TJ Miso Ginger Broth',1),
  ('2023-08-18','TJ Basmati Rice',1),
  ('2023-08-18','TJ English Shelled Peas',3),
  ('2023-08-18','Red bell pepper',2),
  ('2023-08-18','Beefsteak tomato',8),
  ('2023-08-18','Green bell pepper',2),
  ('2023-08-18','Dutch yellow potatoes 1.5 lb',1),
  ('2023-08-18','Eggplant',2),
  /* 2023-08-18 Udupi Palace; total cost $14.28; order placed at 7:41 PM; paid by cash */
  ('2023-08-18','Udupi Palace spinach masala dosa',1),
  /* 2023-08-21 Trader Joe's; total cost $54.94; checkout at 8:52 AM; paid by debit card,
     no trip to Udupi Palace since this was an extra morning trip for stock-up and I anyway
     don't want to eat outside food two days before my operation */
  ('2023-08-21','TJ Miso Ginger Broth',2),
  ('2023-08-21','TJ English Shelled Peas',3),
  ('2023-08-21','TJ Almond Milk',1),
  ('2023-08-21','TJ Baby Spinach',1),
  ('2023-08-21','TJ Organic Tomato and Roasted Red Pepper Soup',1),
  ('2023-08-21','Beefsteak tomato',8),
  ('2023-08-21','Green bell pepper',4),
  ('2023-08-21','Dutch yellow potatoes 1.5 lb',2),
  ('2023-08-21','Red bell pepper',2),
  ('2023-08-21','Alvarado Sprouted Wheat Tortillas',1),
  /* 2023-08-22 Berkeley Bowl; total cost $63.19; checkout at 9:22 AM; paid by debit card */
  ('2023-08-22','Morton Iodized Sea Salt',1),
  ('2023-08-22','Lundberg Organic California White Basmati Rice',2),
  ('2023-08-22','Kite Hill Unsweetened Plain Almond Milk Yogurt',4),
  ('2023-08-22','Cocojune Organic Pure Coconut Dairy Free Yogurt',4),
  /* 2023-09-01 Trader Joe's; total cost $35.90; checkout at 2:34 PM; paid by debit card;
     no trip to Udupi Palace since I want to skip eating out until more fully recovered
     from wisdom tooth removal */
  ('2023-09-01','TJ Almond Milk',1),
  ('2023-09-01','TJ Baby Spinach',1),
  ('2023-09-01','TJ Carrots',1),
  ('2023-09-01','TJ English Shelled Peas',1),
  ('2023-09-01','TJ Miso Ginger Broth',1),
  ('2023-09-01','Dutch yellow potatoes 1.5 lb',1),
  ('2023-09-01','Beefsteak tomato',8),
  ('2023-09-01','Red bell pepper',2),
  ('2023-09-01','Green bell pepper',3),
  ('2023-09-01','Zucchini squash',3), /* 1 pack of 3, so counted as 1 in their receipt */
  /* 2023-09-03 Berkeley Bowl; total cost $62.91; checkout at 11:05 AM; paid by debit card */
  ('2023-09-03','Lundberg Organic California White Basmati Rice',2),
  ('2023-09-03','Cocojune Organic Pure Coconut Dairy Free Yogurt',4),
  ('2023-09-03','Kite Hill Unsweetened Plain Almond Milk Yogurt',3),
  /* 2023-09-06 Trader Joe's; total cost $47.15; checkout at 6:47 PM; paid by debit card */
  ('2023-09-06','Beefsteak tomato',9),
  ('2023-09-06','Zucchini squash',3), /* 1 pack of 3, so counted as 1 in their receipt */
  ('2023-09-06','TJ Miso Ginger Broth',1),
  ('2023-09-06','Red bell pepper',2),
  ('2023-09-06','Dutch yellow potatoes 1.5 lb',1),
  ('2023-09-06','Green bell pepper',3),
  ('2023-09-06','TJ Carrots',1),
  ('2023-09-06','TJ Beans',1),
  ('2023-09-06','TJ Baby Spinach',1),
  ('2023-09-06','Alvarado Sprouted Wheat Tortillas',5),
  /* 2023-09-06 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-09-06','Udupi Palace spinach masala dosa',1),
  /* 2023-09-12 Trader Joe's; total cost $75.43; checkout at 12:15 PM; paid by debit card;
     there was no Udupi Palace trip on this day */
  ('2023-09-12','TJ Miso Ginger Broth',2),
  ('2023-09-12','TJ Walnuts',1),
  ('2023-09-12','TJ Almond Milk',1),
  ('2023-09-12','TJ English Shelled Peas',4),
  ('2023-09-12','Beefsteak tomato',9),
  ('2023-09-12','TJ Baby Spinach',1),
  ('2023-09-12','Dutch yellow potatoes 1.5 lb',1),
  ('2023-09-12','Alvarado Sprouted Wheat Tortillas',8),
  /* 2023-09-15 Trader Joe's; total cost $61.47; paid by credit card */
  ('2023-09-15','Trader Giotto''s Olive Oil',1),
  ('2023-09-15','Dutch yellow potatoes 1.5 lb',1),
  ('2023-09-15','TJ Baby Spinach',1),
  ('2023-09-15','Alvarado Sprouted Wheat Tortillas',5),
  ('2023-09-15','TJ Carrots',1),
  ('2023-09-15','Zucchini squash',3), /* 1 pack of 3, so counted as 1 in their receipt */
  ('2023-09-15','TJ English Shelled Peas',3),
  ('2023-09-15','Green bell pepper',3),
  ('2023-09-15','Red bell pepper',2),
  ('2023-09-15','Beefsteak tomato',5),
  /* 2023-09-15 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-09-15','Udupi Palace spinach masala dosa',1),
  /* 2023-09-24 Berkeley Bowl; total cost $33.95; paid by debit card */
  ('2023-09-24','Lundberg Organic California White Basmati Rice',1),
  ('2023-09-24','Kite Hill Unsweetened Plain Almond Milk Yogurt',2),
  ('2023-09-24','Cocojune Organic Pure Coconut Dairy Free Yogurt',2),
  /* 2023-09-24 Trader Joe's; total cost $54.98; paid by debit card */
  ('2023-09-24','TJ English Shelled Peas',4),
  ('2023-09-24','TJ Miso Ginger Broth',1),
  ('2023-09-24','TJ Almond Milk',1),
  ('2023-09-24','Beefsteak tomato',5),
  ('2023-09-24','TJ Carrots',1),
  ('2023-09-24','Zucchini squash',3), /* 1 pack of 3, so counted as 1 in their receipt */
  ('2023-09-24','Dutch yellow potatoes 1.5 lb',1),
  ('2023-09-24','TJ Carb Savvy Tortillas',3),
  ('2023-09-24','Red bell pepper',2),
  ('2023-09-24','Green bell pepper',3),
  /* 2023-09-24 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-09-24','Udupi Palace spinach masala dosa',1),
  /* 2023-09-26 Trader Joe's; total cost $52.17; no trip to Udupi
     Palace as this was a Tuesday and a morning top-up trip */
  ('2023-09-26','TJ Almond Milk',1),
  ('2023-09-26','TJ Miso Ginger Broth',2),
  ('2023-09-26','TJ Sauerkraut',2),
  ('2023-09-26','Eggplant',2),
  ('2023-09-26','TJ Baby Spinach',1),
  ('2023-09-26','Beefsteak tomato',9),
  ('2023-09-26','Alvarado Sprouted Wheat Tortillas',6),
  /* 2023-10-01 Trader Joe's; total cost $56.23; paid by debit card */
  ('2023-10-01','TJ Walnuts',1),
  ('2023-10-01','Dutch yellow potatoes 1.5 lb',1),
  ('2023-10-01','TJ Carrots',1),
  ('2023-10-01','TJ Beans',2),
  ('2023-10-01','TJ Baby Spinach',1),
  ('2023-10-01','TJ Miso Ginger Broth',1),
  ('2023-10-01','Beefsteak tomato',11),
  ('2023-10-01','TJ Indian Style Flatbread',2),
  ('2023-10-01','Green bell pepper',3),
  ('2023-10-01','Red bell pepper',2),
  ('2023-10-01','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-10-01 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-10-01','Udupi Palace spinach masala dosa',1),
  /* 2023-10-08 Trader Joe's; total cost $60.47; paid by debit card;
     there was no Udupi Palace component to this trip as I'd already had dinner */
  ('2023-10-08','TJ Almond Milk',1),
  ('2023-10-08','TJ Miso Ginger Broth',1),
  ('2023-10-08','TJ Sauerkraut',1),
  ('2023-10-08','TJ Carrots',1),
  ('2023-10-08','Beefsteak tomato',10),
  ('2023-10-08','TJ English Shelled Peas',3),
  ('2023-10-08','Dutch yellow potatoes 1.5 lb',1),
  ('2023-10-08','TJ Carb Savvy Tortillas',5),
  /* 2023-10-11 Trader Joe's; total cost $46.81; paid by debit card */
  ('2023-10-11','TJ Baby Spinach',1),
  ('2023-10-11','TJ Walnuts',1),
  ('2023-10-11','TJ Miso Ginger Broth',1),
  ('2023-10-11','Zucchini squash',3), /* 1 pack of 3, so counted as 1 in their receipt */
  ('2023-10-11','Orange bell pepper',2),
  ('2023-10-11','Green bell pepper',3),
  ('2023-10-11','Beefsteak tomato',5),
  ('2023-10-11','TJ Indian Style Flatbread',5),
  /* 2023-10-11 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-10-11','Udupi Palace spinach masala dosa',1),
  /* 2023-10-16 Trader Joe's; total cost $54.69; checkout at 6:31 PM; paid by credit card */
  ('2023-10-16','TJ Miso Ginger Broth',1),
  ('2023-10-16','TJ Almond Milk',1),
  ('2023-10-16','TJ English Shelled Peas',4),
  ('2023-10-16','TJ Baby Spinach',1),
  ('2023-10-16','TJ Carrots',1),
  ('2023-10-16','Dutch yellow potatoes 1.5 lb',2),
  ('2023-10-16','TJ Carb Savvy Tortillas',1),
  ('2023-10-16','Alvarado Sprouted Wheat Tortillas',1),
  ('2023-10-16','Beefsteak tomato',9),
  /* 2023-10-16 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-10-16','Udupi Palace spinach masala dosa',1),
  /* 2023-10-18 Trader Joe's; total cost $49.95; checkout at 3:39 PM; paid by debit card */
  ('2023-10-18','TJ Baby Spinach',1),
  ('2023-10-18','TJ Carrots',1),
  ('2023-10-18','TJ Cumin',1),
  ('2023-10-18','TJ Turmeric',1),
  ('2023-10-18','Red bell pepper',2),
  ('2023-10-18','Eggplant',2),
  ('2023-10-18','TJ Indian Style Flatbread',2),
  ('2023-10-18','Green bell pepper',3),
  ('2023-10-18','Alvarado Sprouted Wheat Tortillas',6),
  ('2023-10-18','Beefsteak tomato',6),
  /* 2023-10-18 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-10-18','Udupi Palace spinach masala dosa',1),
  /* 2023-10-25 Trader Joe's; total cost $73.30; checkout at 5:41 PM; paid by debit card */
  ('2023-10-25','TJ Walnuts',1),
  ('2023-10-25','Trader Giotto''s Olive Oil',1),
  ('2023-10-25','TJ Miso Ginger Broth',1),
  ('2023-10-25','TJ Sauerkraut',2),
  ('2023-10-25','TJ English Shelled Peas',1),
  ('2023-10-25','TJ Baby Spinach',1),
  ('2023-10-25','Dutch yellow potatoes 1.5 lb',1),
  ('2023-10-25','Alvarado Sprouted Wheat Tortillas',12),
  /* 2023-10-25 Udupi Palace; total cost $14.28; order placed at 5:31 PM; paid by cash */
  ('2023-10-25','Udupi Palace spinach masala dosa',1),
  /* 2023-10-28 Trader Joe's; total cost $27.51; checkout at 6:55 PM; paid by debit card */
  ('2023-10-28','TJ Almond Milk',1),
  ('2023-10-28','TJ Miso Ginger Broth',1),
  ('2023-10-28','TJ Baby Spinach',1),
  ('2023-10-28','TJ Carrots',1),
  ('2023-10-28','Red bell pepper',2),
  ('2023-10-28','Green bell pepper',3),
  ('2023-10-28','Beefsteak tomato',10),
  /* 2023-10-28 Udupi Palace; total cost $14.28; order placed at 6:46 PM; paid by cash */
  ('2023-10-28','Udupi Palace spinach masala dosa',1),
  /* 2023-11-01 Trader Joe's; total cost $34.05; checkout at 7:55 PM; paid by debit card */
  ('2023-11-01','TJ Beans',1),
  ('2023-11-01','Gold potatoes 3 lb',1),
  ('2023-11-01','TJ Baby Spinach',1),
  ('2023-11-01','TJ Carrots',1),
  ('2023-11-01','Eggplant',2),
  ('2023-11-01','Beefsteak tomato',6),
  ('2023-11-01','TJ Indian Style Flatbread',3),
  /* 2023-11-01 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-11-01','Udupi Palace spinach masala dosa',1),
  /* 2023-11-04 Trader Joe's; total cost $48.89; checkout at 6:27 PM; paid by debit card */
  ('2023-11-04','Trader Giotto''s Olive Oil',1),
  ('2023-11-04','TJ Miso Ginger Broth',1),
  ('2023-11-04','Beefsteak tomato',7),
  ('2023-11-04','TJ Baby Spinach',1),
  ('2023-11-04','TJ Beans',1),
  ('2023-11-04','Green bell pepper',3),
  ('2023-11-04','Red bell pepper',2),
  ('2023-11-04','TJ Indian Style Flatbread',3),
  ('2023-11-04','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-11-04 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-11-04','Udupi Palace spinach masala dosa',1),
  /* 2023-11-08 Trader Joe's; total cost $59.68; checkout at 6:39 PM; paid by debit card */
  ('2023-11-08','TJ Miso Ginger Broth',1),
  ('2023-11-08','TJ Almond Milk',1),
  ('2023-11-08','TJ Carrots',1),
  ('2023-11-08','TJ English Shelled Peas',4),
  ('2023-11-08','Gold potatoes 3 lb',1),
  ('2023-11-08','TJ Indian Style Flatbread',2),
  ('2023-11-08','Alvarado Sprouted Wheat Tortillas',3),
  ('2023-11-08','Beefsteak tomato',9),
  /* 2023-11-08 Udupi Palace; total cost $14.28; order placed at 6:23 PM; paid by cash */
  ('2023-11-08','Udupi Palace spinach masala dosa',1),
  /* 2023-11-10 Trader Joe's; total cost $44.20; checkout at 4:30 PM; paid by debit card */
  ('2023-11-10','TJ Walnuts',1),
  ('2023-11-10','TJ Carrots',1),
  ('2023-11-10','Green bell pepper',3),
  ('2023-11-10','Red bell pepper',2),
  ('2023-11-10','Beefsteak tomato',4),
  ('2023-11-10','Alvarado Sprouted Wheat Tortillas',8),
  ('2023-11-10','TJ Baby Spinach',1),
  /* 2023-11-10 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-11-10','Udupi Palace spinach masala dosa',1),
  /* 2023-11-19 Trader Joe's; total cost $69.14; checkout at 4:41 PM; paid by credit card */
  ('2023-11-19','TJ English Shelled Peas',4),
  ('2023-11-19','TJ Miso Ginger Broth',1),
  ('2023-11-19','TJ Carrots',1),
  ('2023-11-19','TJ Baby Spinach',1),
  ('2023-11-19','Beefsteak tomato',9),
  ('2023-11-19','Gold potatoes 3 lb',1),
  ('2023-11-19','Alvarado Sprouted Wheat Tortillas',9),
  /* 2023-11-19 Udupi Palace; total cost $14.28; order placed at 4:30 PM; paid by cash */
  ('2023-11-19','Udupi Palace spinach masala dosa',1),
  /* 2023-11-21 Trader Joe's; total cost $25.13; checkout at 6:29 PM; paid by debit card;
     there was no trip to Udupi Palace as it was closed for Tuesday */
  ('2023-11-21','TJ Miso Ginger Broth',1),
  ('2023-11-21','TJ Almond Milk',1),
  ('2023-11-21','TJ Baby Spinach',1),
  ('2023-11-21','Green bell pepper',3),
  ('2023-11-21','Red bell pepper',2),
  ('2023-11-21','Eggplant',2),
  ('2023-11-21','Beefsteak tomato',7),
  /* 2023-11-22 Pakwan */
  ('2023-11-22','Pakwan meal set',1),
  /* 2023-11-27 Trader Joe's; total cost $59.25; checkout at 6:22 PM; paid by debit card */
  ('2023-11-27','TJ Miso Ginger Broth',1),
  ('2023-11-27','TJ Beans',1),
  ('2023-11-27','TJ Sauerkraut',2),
  ('2023-11-27','TJ Carrots',1), /* I was incorrectly charged for 2 */
  ('2023-11-27','Gold potatoes 3 lb',1),
  ('2023-11-27','Beefsteak tomato',12),
  ('2023-11-27','TJ Indian Style Flatbread',2),
  ('2023-11-27','TJ English Shelled Peas',1),
  ('2023-11-27','Alvarado Sprouted Wheat Tortillas',3),
  /* 2023-11-27 Udupi Palace; total cost $14.28; order placed at 6:08 PM; paid by cash */
  ('2023-11-27','Udupi Palace spinach masala dosa',1),
  /* 2023-11-29 Kitava (dine-in) */
  ('2023-11-29','Kitava Power Bowl',1),
  /* 2023-12-03 Trader Joe's; total cost $64.45; checkout at 11:59 AM; paid by debit card;
     there was no trip to Udupi Palace as I had already had two outside meals this week
     and had also had a lot of outside food the previous week */
  ('2023-12-03','TJ Almond Milk',1),
  ('2023-12-03','TJ Carrots',1),
  ('2023-12-03','TJ English Shelled Peas',4),
  ('2023-12-03','TJ Baby Spinach',1),
  ('2023-12-03','Red bell pepper',2),
  ('2023-12-03','Green bell pepper',3),
  ('2023-12-03','TJ Indian Style Flatbread',2),
  ('2023-12-03','Beefsteak tomato',5),
  ('2023-12-03','Alvarado Sprouted Wheat Tortillas',6),
  /* 2023-12-09 Udupi Palace (dine-in; paid by co-diner) */
  ('2023-12-09','Udupi Palace bisi bele bath',1),
  ('2023-12-09','Udupi Palace medu vada',1),
  /* 2023-12-09 Trader Joe's; total cost $57.42; checkout at 12:32 PM; paid by debit card */
  ('2023-12-09','TJ Walnuts',1),
  ('2023-12-09','TJ Beans',1),
  ('2023-12-09','TJ Baby Spinach',1),
  ('2023-12-09','Green bell pepper',3),
  ('2023-12-09','Red bell pepper',2),
  ('2023-12-09','TJ Carrots',1),
  ('2023-12-09','Beefsteak tomato',11),
  ('2023-12-09','Eggplant',2),
  ('2023-12-09','Gold potatoes 3 lb',1),
  ('2023-12-09','TJ Indian Style Flatbread',3),
  ('2023-12-09','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-12-14 Trader Joe's; total cost $63.85; checkout at 6:28 PM; paid by credit card */
  ('2023-12-14','TJ Almond Milk',1),
  ('2023-12-14','TJ Miso Ginger Broth',2),
  ('2023-12-14','TJ English Shelled Peas',4),
  ('2023-12-14','Trader Giotto''s 500ml Olive Oil',2),
  ('2023-12-14','TJ Baby Spinach',1),
  ('2023-12-14','TJ Indian Style Flatbread',2),
  ('2023-12-14','TJ Carb Savvy Tortillas',3),
  /* 2023-12-14 Udupi Palace; total cost $14.28; order placed at 6:18 PM; paid by cash */
  ('2023-12-14','Udupi Palace spinach masala dosa',1),
  /* 2023-12-17 Trader Joe's; total cost $73.87; checkout at 3:56 PM; paid by debit card */
  ('2023-12-17','TJ English Shelled Peas',4),
  ('2023-12-17','TJ Carrots',1),
  ('2023-12-17','TJ Baby Spinach',1),
  ('2023-12-17','Green bell pepper',4),
  ('2023-12-17','Beefsteak tomato',12),
  ('2023-12-17','Gold potatoes 3 lb',1),
  ('2023-12-17','Eggplant',2),
  ('2023-12-17','Alvarado Sprouted Wheat Tortillas',8),
  /* 2023-12-17 Udupi Palace; total cost $14.28; paid by cash */
  ('2023-12-17','Udupi Palace spinach masala dosa',1),
  /* 2023-12-23 Trader Joe's; total cost $54.92; checkout at 2:11 PM; paid by debit card */
  ('2023-12-23','TJ Almond Milk',1),
  ('2023-12-23','TJ Miso Ginger Broth',1),
  ('2023-12-23','TJ Broccoli Florets 12 oz',2),
  ('2023-12-23','TJ Baby Spinach',1),
  ('2023-12-23','Beefsteak tomato',13),
  ('2023-12-23','TJ Carrots',1),
  ('2023-12-23','Orange bell pepper',2),
  ('2023-12-23','Alvarado Sprouted Wheat Tortillas',7),
  /* 2023-12-23 Udupi Palace; total cost $14.28; order placed at 2:01 PM; paid by cash */
  ('2023-12-23','Udupi Palace spinach masala dosa',1),
  /* 2023-12-26 Trader Joe's; total cost $48.74; checkout at 6:36 PM; paid by debit card;
     I did not get anything from Udupi Palace as it's closed on Tuesdays */
  ('2023-12-26','TJ Beans',2),
  ('2023-12-26','TJ Walnuts',1),
  ('2023-12-26','TJ Carrots',1),
  ('2023-12-26','TJ Baby Spinach',1),
  ('2023-12-26','Gold potatoes 3 lb',1),
  ('2023-12-26','Green bell pepper',3),
  ('2023-12-26','Eggplant',2),
  ('2023-12-26','Beefsteak tomato',13),
  ('2023-12-26','Alvarado Sprouted Wheat Tortillas',2),
  /* 2023-12-31 Trader Joe's; total cost $51.71; checkout at 3:15 PM; paid by debit card; no Udupi Palace trip */
  ('2023-12-31','TJ Carrots',1),
  ('2023-12-31','TJ Baby Spinach',1),
  ('2023-12-31','Red bell pepper',2),
  ('2023-12-31','Beefsteak tomato',13 /* I got billed for 12 due to counting error by the clerk */),
  ('2023-12-31','Green bell pepper',3),
  ('2023-12-31','Eggplant',2),
  ('2023-12-31','Alvarado Sprouted Wheat Tortillas',8),
  /* 2024-01-05 Trader Joe's; total cost $68.22; checkout at 6:39 PM; paid by debit card */
  ('2024-01-05','TJ Almond Milk',1),
  ('2024-01-05','Trader Jose''s 250ml Garlic Olive Oil',3),
  ('2024-01-05','TJ Miso Ginger Broth',2),
  ('2024-01-05','TJ Sauerkraut',2),
  ('2024-01-05','TJ Turmeric',1),
  ('2024-01-05','TJ Walnuts',1),
  ('2024-01-05','TJ Carb Savvy Tortillas',6),
  ('2024-01-05','TJ Baby Spinach 6 oz',2),
  /* 2024-01-05 Udupi Palace; total cost $14.28; order placed at 6:24 PM */
  ('2024-01-05','Udupi Palace spinach masala dosa',1),
  /* 2024-01-07 Trader Joe's; total cost $66.59; checkout at 4:35 PM; paid by debit card; no Udupi Palace trip */
  ('2024-01-07','Gold potatoes 5 lb',1),
  ('2024-01-07','TJ Broccoli Florets 12 oz',1),
  ('2024-01-07','TJ Baby Spinach',1),
  ('2024-01-07','TJ English Shelled Peas',4),
  ('2024-01-07','TJ Carrots',1),
  ('2024-01-07','Beefsteak tomato',14),
  ('2024-01-07','Green bell pepper',3),
  ('2024-01-07','Red bell pepper',2),
  ('2024-01-07','Alvarado Sprouted Wheat Tortillas',4),
  /* 2024-01-14 Berkeley Bowl; total cost $14.98; checkout at 1:01 PM; paid by debit card */
  ('2024-01-14','Lundberg Sustainable California White Jasmine Rice',1),
  /* 2024-01-14 Trader Joe's; total cost $66.23; checkout at 1:36 PM; paid by debit card; no Udupi Palace trip */
  ('2024-01-14','TJ Walnuts',1),
  ('2024-01-14','Trader Giotto''s Olive Oil',1),
  ('2024-01-14','TJ Almond Milk',1),
  ('2024-01-14','TJ Cumin',1),
  ('2024-01-14','TJ Beans',2),
  ('2024-01-14','Beefsteak tomato',15),
  ('2024-01-14','Alvarado Sprouted Wheat Tortillas',6),
  /* 2024-01-15 Trader Joe's; total cost $36.28; checkout at 6:27 PM; paid by credit card */
  ('2024-01-15','Orange bell pepper',2),
  ('2024-01-15','Red bell pepper',3),
  ('2024-01-15','Eggplant',2),
  ('2024-01-15','TJ Baby Spinach',1),
  ('2024-01-15','TJ Walnuts',1),
  ('2024-01-15','Trader Giotto''s Olive Oil',1),
  ('2024-01-15','TJ Sauerkraut',1),
  ('2024-01-15','TJ Carrots',1),
  /* 2024-01-15 Udupi Palace; total cost $14.28 */
  ('2024-01-15','Udupi Palace spinach masala dosa',1),
  /* 2024-01-18 Trader Joe's; total cost $48.52; checkout at 8:28 PM; paid by debit card; no Udupi Palace trip */
  ('2024-01-18','Beefsteak tomato',15),
  ('2024-01-18','TJ Carrots',1),
  ('2024-01-18','Green bell pepper',3),
  ('2024-01-18','Red bell pepper',2),
  ('2024-01-18','TJ Carb Savvy Tortillas',2),
  ('2024-01-18','TJ Broccoli Florets 12 oz',2),
  ('2024-01-18','Alvarado Sprouted Wheat Tortillas',3),
  /* 2024-01-21 Trader Joe's; total cost $40.60; checkout at 3:35 PM; paid by debit card; no Udupi Palace trip */
  ('2024-01-21','TJ Broccoli Florets 12 oz',2),
  ('2024-01-21','TJ Baby Spinach',1),
  ('2024-01-21','Gold potatoes 3 lb',1),
  ('2024-01-21','Alvarado Sprouted Wheat Tortillas',5),
  ('2024-01-21','Beefsteak tomato',11),
  /* 2024-01-26 Trader Joe's; total cost $63.94; checkout at 7:38 PM; paid by debit card */
  ('2024-01-26','TJ Baby Spinach',1),
  ('2024-01-26','TJ English Shelled Peas',4),
  ('2024-01-26','Beefsteak tomato',5),
  ('2024-01-26','Red bell pepper',2),
  ('2024-01-26','Green bell pepper',3),
  ('2024-01-26','Eggplant',2),
  ('2024-01-26','Alvarado Sprouted Wheat Tortillas',9),
  /* 2024-01-26 Udupi Palace; total cost $14.28 */
  ('2024-01-26','Udupi Palace spinach masala dosa',1),
  /* 2024-01-27 Trader Joe's; total cost $24.96; checkout at 5:19 PM; paid by debit card */
  ('2024-01-27','Trader Giotto''s Olive Oil',1),
  ('2024-01-27','TJ Almond Milk',1),
  ('2024-01-27','TJ Walnuts',1),
  ('2024-01-27','Gold potatoes 3 lb',1),
  /* 2024-01-30 Trader Joe's; total cost $52.72; checkout at 8:35 PM; paid by debit card */
  ('2024-01-30','TJ White Miso Paste',1),
  ('2024-01-30','Beefsteak tomato',15),
  ('2024-01-30','TJ Baby Spinach',1),
  ('2024-01-30','TJ English Shelled Peas',4),
  ('2024-01-30','TJ Carrots',1),
  ('2024-01-30','Green bell pepper',3),
  ('2024-01-30','Red bell pepper',3),
  /* 2024-02-06 Berkeley Bowl; total cost $14.98; checkout at 7:55 PM; paid by debit card */
  ('2024-02-06','Lundberg Sustainable California White Basmati Rice',2),
  /* 2024-02-06 Trader Joe's; total cost $71.49; checkout at 8:34 PM; paid by debit card; no trip to Udupi Palace as it was Tuesday */
  ('2024-02-06','TJ English Shelled Peas',4),
  ('2024-02-06','TJ Baby Spinach',1),
  ('2024-02-06','TJ Carrots',1),
  ('2024-02-06','Green bell pepper',3),
  ('2024-02-06','Gold potatoes 3 lb',1),
  ('2024-02-06','TJ Carb Savvy Tortillas',4),
  ('2024-02-06','Red bell pepper',3), /* One of these was billed as orange bell pepper, but I picked all of them from the red bell pepper pile and they all look more red than orange to me, though one of them is orange-ish */
  ('2024-02-06','Beefsteak tomato',11),
  ('2024-02-06','Alvarado Sprouted Wheat Tortillas',4), /* I was billed for 3 but I did get 4 */
  /* 2024-02-10 Trader Joe's; total cost $39.66; checkout at 12:41 PM; paid by debit card; no trip to Udupi Palace */
  ('2024-02-10','TJ Walnuts',1),
  ('2024-02-10','TJ Almond Milk',1),
  ('2024-02-10','TJ English Shelled Peas',3),
  ('2024-02-10','Green bell pepper',2),
  ('2024-02-10','Beefsteak tomato',4),
  ('2024-02-10','Alvarado Sprouted Wheat Tortillas',4), /* I was billed for 3 but I did get 4 */
  /* 2024-03-17 Trader Joe's; total cost $71.83; checkout at 3:30 PM; paid by credit card */
  ('2024-03-17','TJ Almond Milk',1),
  ('2024-03-17','TJ Sauerkraut',2),
  ('2024-03-17','TJ English Shelled Peas',4),
  ('2024-03-17','TJ Baby Spinach',1),
  ('2024-03-17','Beefsteak tomato',12),
  ('2024-03-17','Gold potatoes 3 lb',1),
  ('2024-03-17','Alvarado Sprouted Wheat Tortillas',6),
  /* 2024-03-17 Udupi Palace; total cost $14.28; paid by cash; order placed at 3:19 PM */
  ('2024-03-17','Udupi Palace spinach masala dosa',1),
  /* 2024-03-20 Trader Joe's; total cost $49.25; checkout at 6:39 PM; paid by debit card */
  ('2024-03-20','TJ Almond Milk',1),
  ('2024-03-20','TJ Baby Spinach',1),
  ('2024-03-20','TJ Broccoli Florets 12 oz',2),
  ('2024-03-20','TJ Carrots',1),
  ('2024-03-20','TJ English Shelled Peas',1),
  ('2024-03-20','Zucchini squash',3), /* 1 pack of 3, counted as 1 in their receipt */
  ('2024-03-20','Red bell pepper',2),
  ('2024-03-20','Beefsteak tomato',8),
  ('2024-03-20','Alvarado Sprouted Wheat Tortillas',4),
  ('2024-03-20','Green bell pepper',4),
  /* 2024-03-20 Udupi Palace; total cost $14.28; paid by cash */
  ('2024-03-20','Udupi Palace spinach masala dosa',1),
  /* 2024-03-25 Trader Joe's; total cost $76.10; checkout at 4:33 PM; paid by debit card;
     no Udupi Palace portion for this trip */
  ('2024-03-25','TJ English Shelled Peas',4),
  ('2024-03-25','TJ Baby Spinach',1),
  ('2024-03-25','Gold potatoes 3 lb',1),
  ('2024-03-25','TJ White Miso Paste',1),
  ('2024-03-25','Beefsteak tomato',13),
  ('2024-03-25','Alvarado Sprouted Wheat Tortillas',10),
  /* 2024-03-27 Trader Joe's; total cost $63.03; checkout at 9:15 AM; paid by debit card;
     no Udupi Palace portion for this trip */
  ('2024-03-27','TJ Almond Milk',1),
  ('2024-03-27','TJ Walnuts',1),
  ('2024-03-27','TJ Baby Spinach',1),
  ('2024-03-27','TJ English Shelled Peas',4),
  ('2024-03-27','TJ Carrots',1),
  ('2024-03-27','Beefsteak tomato',9), /* I was billed for 7 but did get 9 */
  ('2024-03-27','Alvarado Sprouted Wheat Tortillas',4),
  ('2024-03-27','Red bell pepper',2),
  ('2024-03-27','Eggplant',2),
  ('2024-03-27','Green bell pepper',4),
  /* 2024-03-27 Tay Ho Oakland work colleagues lunch; paid for by company */
  ('2024-03-27','Tay Ho Oakland Vegan Braised Eggplant, Tofu & Mushroom',1),
  /* 2024-04-01 Trader Joe's; total cost $74.33; checkout at 6:39 PM; paid by debit card */
  ('2024-04-01','TJ Almond Milk',1),
  ('2024-04-01','Trader Giotto''s Olive Oil',1),
  ('2024-04-01','TJ Sauerkraut',2),
  ('2024-04-01','TJ English Shelled Peas',4),
  ('2024-04-01','TJ Walnuts',1),
  ('2024-04-01','TJ White Miso Paste',1),
  ('2024-04-01','TJ Baby Spinach',1),
  ('2024-04-01','Alvarado Sprouted Wheat Tortillas',6),
  /* 2024-04-01 Udupi Palace; total cost $14.28; paid by cash */
  ('2024-04-01','Udupi Palace spinach masala dosa',1),
  /* 2024-04-03 Berkeley Bowl; total cost $15.67; checkout at 2:11 PM; paid by debit card */
  ('2024-04-03','Lundberg Sustainable California White Basmati Rice',1),
  ('2024-04-03','Wild Harvest Organic Lentils',1),
  ('2024-04-03','Kite Hill Unsweetened Plain Almond Milk Yogurt',1),
  /* 2024-04-03 Trader Joe's; total cost $56.43; checkout at 5:59 PM; paid by debit card;
     no Udupi Palace part in this trip */
  ('2024-04-03','TJ Walnuts',1),
  ('2024-04-03','TJ Carrots',1),
  ('2024-04-03','TJ English Shelled Peas',4),
  ('2024-04-03','Gold potatoes 5 lb',1),
  ('2024-04-03','Beefsteak tomato',14),
  ('2024-04-03','Green bell pepper',4),
  ('2024-04-03','Red bell pepper',2),
  /* 2024-04-08 Trader Joe's; total cost $52.05; checkout at 7:55 PM; paid by debit card */
  ('2024-04-08','TJ English Shelled Peas',3),
  ('2024-04-08','TJ Miso Ginger Broth',1),
  ('2024-04-08','TJ Baby Spinach',2),
  ('2024-04-08','TJ Broccoli Florets 12 oz',1),
  ('2024-04-08','Beefsteak tomato',16),
  ('2024-04-08','TJ Indian Style Flatbread',1),
  ('2024-04-08','TJ Whole Wheat Lavash',1),
  /* 2024-04-08 Udupi Palace; total cost $14.28; paid by cash */
  ('2024-04-08','Udupi Palace spinach masala dosa',1),
  /* 2024-04-11 Trader Joe's; total cost $81.04; checkout at 6:31 PM; paid by debit card;
     no Udupi Palace part in this trip */
  ('2024-04-11','TJ Carrots',1),
  ('2024-04-11','TJ English Shelled Peas',3),
  ('2024-04-11','TJ Broccoli Florets 12 oz',1),
  ('2024-04-11','Gold potatoes 3 lb',1),
  ('2024-04-11','Green bell pepper',4),
  ('2024-04-11','Eggplant',2),
  ('2024-04-11','Red bell pepper',2),
  ('2024-04-11','Beefsteak tomato',13),
  ('2024-04-11','TJ Carb Savvy Tortillas',9),
  /* 2024-04-12 Trader Joe's; total cost $20.46; checkout at 5:51 PM; paid by credit card;
     no Udupi Palace part in this trip */
  ('2024-04-12','Trader Giotto''s Olive Oil',1),
  ('2024-04-12','TJ Miso Ginger Broth',1),
  ('2024-04-12','TJ Almond Milk',2),
  /* 2024-04-15 Trader Joe's; total cost $57.15; checkout at 5:58 PM; paid by credit card;
    no Udupi Palace part in this trip */
  ('2024-04-15','TJ English Shelled Peas',3),
  ('2024-04-15','TJ Baby Spinach',2),
  ('2024-04-15','TJ Walnuts',1),
  ('2024-04-15','TJ Carrots',1),
  ('2024-04-15','TJ Indian Style Flatbread',1),
  ('2024-04-15','TJ Broccoli Florets 12 oz',1),
  ('2024-04-15','Beefsteak tomato',14),
  ('2024-04-15','TJ Old Fashioned Lavash',1),
  ('2024-04-15','TJ Whole Wheat Lavash',1),
  /* 2024-04-19 Trader Joe's; total cost $64.39; checkout at 8:18 PM; paid by debit card;
     no Udupi Palace part in this trip */
  ('2024-04-19','TJ English Shelled Peas',3),
  ('2024-04-19','TJ Broccoli Florets 12 oz',1),
  ('2024-04-19','TJ Baby Spinach',2),
  ('2024-04-19','Gold potatoes 5 lb',1),
  ('2024-04-19','Green bell pepper',4),
  ('2024-04-19','Red bell pepper',2),
  ('2024-04-19','Beefsteak tomato',12),
  ('2024-04-19','TJ Whole Wheat Lavash',6),
  /* 2024-04-24 Trader Joe's; total cost $60.94; checkout at 3:35 PM; paid by debit card */
  ('2024-04-24','TJ Miso Ginger Broth',1),
  ('2024-04-24','TJ Sauerkraut',1),
  ('2024-04-24','TJ Broccoli Florets 12 oz',1),
  ('2024-04-24','TJ English Shelled Peas',3),
  ('2024-04-24','TJ Almond Milk',1),
  ('2024-04-24','TJ Carrots',1),
  ('2024-04-24','Beefsteak tomato',10),
  ('2024-04-24','Eggplant',2),
  ('2024-04-24','TJ Whole Wheat Lavash',6),
  /* 2024-04-24 Udupi Palace; total cost $14.28; paid by cash */
  ('2024-04-24','Udupi Palace spinach masala dosa',1),
  /* 2024-04-25 Berkeley Bowl; total cost $22.96; checkout at 12:23 PM; paid by debit card */
  ('2024-04-25','Lundberg Sustainable California White Basmati Rice',2),
  ('2024-04-25','Kite Hill Unsweetened Plain Almond Milk Yogurt',2),
  /* 2024-04-29 Trader Joe's; total cost $53.21; checkout at 5:57 PM; paid by debit card */
  ('2024-04-29','TJ Almond Milk',1),
  ('2024-04-29','Red bell pepper',2),
  ('2024-04-29','Green bell pepper',4),
  ('2024-04-29','TJ Mixed Baby Kale',2),
  ('2024-04-29','TJ Broccoli Florets 12 oz',1),
  ('2024-04-29','TJ English Shelled Peas',3),
  ('2024-04-29','Eggplant',2),
  ('2024-04-29','Beefsteak tomato',14),
  /* 2024-04-30 Berkeley Bowl; total cost $16.86; checkout at 5:44 PM; paid by debit card */
  ('2024-04-30','Lundberg Sustainable California White Basmati Rice',1),
  ('2024-04-30','Kite Hill Greek Style Plant-Based Yogurt',2),
  ('2024-04-30','Lemon',1),
  /* 2024-05-05 Berkeley Bowl; total cost $29.35; checkout at 4:28 PM; paid by debit card */
  ('2024-05-05','Lundberg Sustainable California White Basmati Rice',3),
  ('2024-05-05','Morton Iodized Salt',1),
  ('2024-05-05','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* 2024-05-07 Trader Joe's; total cost $70.13; checkout at 5:00 PM; paid by debit card */
  ('2024-05-07','TJ Mixed Baby Kale',2),
  ('2024-05-07','Russet potatoes 3 lb',1),
  ('2024-05-07','TJ English Shelled Peas',6),
  ('2024-05-07','TJ Broccoli Florets 12 oz',1),
  ('2024-05-07','TJ Almond Milk',1),
  ('2024-05-07','TJ Miso Ginger Broth',1),
  ('2024-05-07','TJ Sauerkraut',1),
  ('2024-05-07','Trader Giotto''s Olive Oil',1),
  ('2024-05-07','TJ Cumin',1),
  ('2024-05-07','TJ Turmeric',2),
  /* 2024-05-09 Trader Joe's; total cost $64.39; checkout at 8:18 PM; paid by debit card */
  ('2024-05-09','Trader Giotto''s Olive Oil',1),
  ('2024-05-09','TJ Almond Milk',1),
  ('2024-05-09','TJ Carrots',1),
  ('2024-05-09','TJ Broccoli Florets 12 oz',1),
  ('2024-05-09','TJ Whole Wheat Lavash',1),
  ('2024-05-09','Beefsteak tomato',14),
  /* 2024-05-12 Berkeley Bowl; total cost $22.47; checkout at 3:05 PM; paid by debit card */
  ('2024-05-12','Lundberg Sustainable California White Basmati Rice',3),
  /* 2024-05-14 Trader Joe's; total cost $38.25; checkout at 10:48 AM; paid by credit card */
  ('2024-05-14','TJ Kale',1),
  ('2024-05-14','TJ Walnuts',1),
  ('2024-05-14','TJ Broccoli Florets 12 oz',1),
  ('2024-05-14','Red bell pepper',2),
  ('2024-05-14','Eggplant',2),
  ('2024-05-14','Beefsteak tomato',14),
  ('2024-05-14','Green bell pepper',4),
  /* 2024-05-16 Trader Joe's; total cost $40.47; checkout at 6:41 PM; paid by debit card */
  ('2024-05-16','Gold potatoes 5 lb',1),
  ('2024-05-16','TJ Miso Ginger Broth',1),
  ('2024-05-16','TJ Almond Milk',1),
  ('2024-05-16','TJ Organic Couscous',1),
  ('2024-05-16','TJ Green Lentils',3),
  ('2024-05-16','TJ Kale',2),
  ('2024-05-16','TJ English Shelled Peas',3),
  ('2024-05-16','TJ Broccoli Florets 12 oz',1),
  /* 2024-05-24 Berkeley Bowl; total cost $31.45; checkout at 4:03 PM; paid by debit card */
  ('2024-05-24','Lundberg Sustainable California White Basmati Rice',3),
  ('2024-05-24','Kite Hill Greek Style Plant-Based Yogurt',2),
  /* 2024-05-24 Trader Joe's; total cost $54.22; checkout at 7:32 PM; paid by debit card */
  ('2024-05-24','Red bell pepper',2),
  ('2024-05-24','Beefsteak tomato',8),
  ('2024-05-24','TJ Kale',2),
  ('2024-05-24','TJ Almond Milk',1),
  ('2024-05-24','TJ Broccoli Florets 12 oz',1),
  ('2024-05-24','TJ Carrots',1),
  ('2024-05-24','Green bell pepper',4),
  ('2024-05-24','TJ English Shelled Peas',3),
  ('2024-05-24','TJ Miso Ginger Broth',1),
  ('2024-05-24','TJ Organic Couscous',2),
  ('2024-05-24','TJ Green Lentils',3),
  /* 2024-05-28 Trader Joe's; total cost $50.89; checkout at 7:24 PM; paid by debit card */
  ('2024-05-28','TJ Kale',1),
  ('2024-05-28','Trader Giotto''s Olive Oil',1),
  ('2024-05-28','TJ Almond Milk',2),
  ('2024-05-28','TJ Miso Ginger Broth',1),
  ('2024-05-28','TJ English Shelled Peas',3),
  ('2024-05-28','TJ Sauerkraut',1),
  ('2024-05-28','TJ Walnuts',1),
  ('2024-05-28','TJ Turmeric',1),
  /* 2024-05-31 Berkeley Bowl; total cost $27.45; checkout at 12:31 PM; paid by debit card */
  ('2024-05-31','Lundberg Sustainable California White Basmati Rice',2),
  ('2024-05-31','Wild Harvest Organic Lentils',2),
  ('2024-05-31','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* 2024-06-03 Trader Joe's (2122 NW Glisan Ave, Portland); total cost $22.94; checkout at 8:34 PM; paid by debit card;
     I am not including a couple of non-food items purchased */
  ('2024-06-03','TJ Miso Ginger Broth',1),
  ('2024-06-03','TJ Almond Milk',1),
  ('2024-06-03','TJ Sauerkraut',1),
  ('2024-06-03','TJ Walnuts',1),
  /* 2024-06-03 India House Oregon, Portland */
  ('2024-06-03','India House Oregon rice',2), /* cost $3 each, so $6 total */
  ('2024-06-03','India House Oregon aloo sag',1), /* had accompanying rice; cost $13 */
  /* 2024-06-04 Whole Foods (1210 NW Couch St, Portland); total cost $9.37; checkout at 8:07 PM; paid by debit card;
     I am not including a non-food item purchased */
  ('2024-06-04','Himalayan Fine Pink Salt',1),
  ('2024-06-04','Kite Hill Vanilla Almond Yogurt (small)',1),
  /* 2024-06-04 Dil Se Indian Cuisine, Portland (my portion of shared meal) */
  ('2024-06-04','Dil Se Indian Cuisine half chana masala and half aloo gobi',1), /* had accompanying rice; cost $13 ($13 each for full, then halved due to sharing */
  /* 2024-06-05 Whole Foods (1210 NW Couch St, Portland); total cost $9.47; checkout at 5:42 PM; paid by debit card */
  ('2024-06-05','Kite Hill Vanilla Almond Yogurt (small)',2),
  ('2024-06-05','Whole Foods Organic Multigrain and Seed Sandwich Bread',1),
  /* 2024-06-08 Trader Joe's (back to Berkeley!); total cost $44.60; checkout at 7:47 PM; paid by debit card */
  ('2024-06-08','TJ Broccoli Florets 12 oz',1),
  ('2024-06-08','TJ Almond Milk',1),
  ('2024-06-08','TJ Miso Ginger Broth',1),
  ('2024-06-08','TJ Cumin',1),
  ('2024-06-08','TJ Turmeric',1),
  ('2024-06-08','TJ English Shelled Peas',3),
  ('2024-06-08','TJ Kale',2),
  ('2024-06-08','Beefsteak tomato',10),
  /* 2024-06-09 Traer Joe's; total cost $37.54; checkout at 5:18 PM; paid by debit card */
  ('2024-06-09','TJ Miso Ginger Broth',1),
  ('2024-06-09','TJ English Shelled Peas',3),
  ('2024-06-09','TJ Broccoli Florets 12 oz',1),
  ('2024-06-09','TJ Kale',1),
  ('2024-06-09','Green bell pepper',4),
  ('2024-06-09','Red bell pepper',2),
  ('2024-06-09','TJ Carrots',1),
  ('2024-06-09','Gold potatoes 5 lb',1),
  ('2024-06-09','Eggplant',2),
  /* 2024-06-16 Trader Joe's; total cost $63.02; checkout at 9:59 AM; paid by debit card */
  ('2024-06-16','Green bell pepper',4),
  ('2024-06-16','Red bell pepper',2),
  ('2024-06-16','TJ Almond Milk',1),
  ('2024-06-16','TJ Miso Ginger Broth',1),
  ('2024-06-16','Beefsteak tomato',10),
  ('2024-06-16','TJ Carrots',1),
  ('2024-06-16','TJ English Shelled Peas',6),
  ('2024-06-16','TJ Broccoli Florets 12 oz',1),
  ('2024-06-16','TJ Kale',2);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
