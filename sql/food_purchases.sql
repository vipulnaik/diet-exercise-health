create table food_purchases(
  `purchase_date` date not null,
  `food_type` varchar(200),
  `quantity` float(11,2)
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
  ('2021-08-23','TJ Whole Whet Wraps',3),
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
  ('2021-12-22','Green bell peppers',2),
  ('2021-12-22','Red bell peppers',2),
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
  ('2022-01-16','TJ Baby Spinach 6oz',1),
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
  /* 2022-04-05 Bangkok Thai Cuisine */
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
  /* 2022-05-03 Bangkok Thai Cuisine */
  ('2022-05-03','Bangkok Thai Cuisine yellow curry tofu',1),
  ('2022-05-03','Bangkok Thai Cuisine white rice',2),
  /* 2022-05-04 Bangkok Thai Cuisine */
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
  /* 2022-06-10 Udupi Palace; total cost $13.17 (paid by cash) */
  ('2022-06-10','Udupi Palace spinach masala dosa',1);
