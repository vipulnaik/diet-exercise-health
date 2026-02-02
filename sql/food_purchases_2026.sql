insert into food_purchases(purchase_date, food_type, quantity) values
  /* 2026-01-02 (Friday) Trader Joe's; total cost $33.38; checkout at 3:12 PM; paid by debit card; 12 items in transaction */
  ('2026-01-02','TJ Almond Milk',1),
  ('2026-01-02','Gold potatoes 5 lb',1),
  ('2026-01-02','TJ Sauerkraut',1),
  ('2026-01-02','TJ English Shelled Peas',2),
  ('2026-01-02','TJ Turmeric',1),
  ('2026-01-02','TJ Roasted Seaweed',1),
  ('2026-01-02','TJ Kale',1),
  ('2026-01-02','Beefsteak tomato',4),
  /* 2026-01-07 (Wednesday) Whole Foods; total cost $27.96; checkout at 6:16 PM; paid by credit card; 4 items in transaction */
  ('2026-01-07','Whole Foods Walnuts',4),
  /* 2026-01-07 (Wednesday) Berkeley Bowl; total cost $70.40; checkout at 6:38 PM; paid by credit card; 12 items in transaction of which 4 were Seventh Generation dish soap bottles so 8 food items */
  ('2026-01-07','Lundberg Sustainable California White Basmati Rice',2),
  ('2026-01-07','Kite Hill Greek Style Plant-Based Yogurt',6),
  /* 2026-01-09 (Friday) Trader Joe's; total cost $27.07; checkout at 6:44 PM; paid by debit card; 13 items in transaction */
  ('2026-01-09','TJ Miso Ginger Broth',2),
  ('2026-01-09','TJ English Shelled Peas',2),
  ('2026-01-09','TJ Roasted Seaweed',1),
  ('2026-01-09','TJ Almond Milk',1), /* bulges out a bit more than usual, hard to fit in backpack and fridge! */
  ('2026-01-09','TJ Kale',1),
  ('2026-01-09','Red bell pepper',2),
  ('2026-01-09','Green bell pepper',4),
  /* 2026-01-13 (Tuesday) Trader Joe's; total cost $41.24; checkout at 6:32 PM; paid by credit card; 16 items in transaction */
  ('2026-01-13','TJ Carb Savvy Tortillas',4),
  ('2026-01-13','TJ Miso Ginger Broth',1),
  ('2026-01-13','TJ Walnuts',2),
  ('2026-01-13','Red bell pepper',2),
  ('2026-01-13','TJ Kale',1),
  ('2026-01-13','Green bell pepper',4),
  ('2026-01-13','TJ Roasted Seaweed',1),
  ('2026-01-13','TJ Carrots',1),
  /* 2026-01-14 (Wednesday) Berkeley Bowl; total cost $33.96; checkout at 7:17 PM; paid by credit card; 14 items in transaction but officially counted as 6 as the tomatoes were bundled as a single item and charged by weight */
  ('2026-01-14','Beefsteak tomato',9), /* technically, "large tomato" 4.74 lb */
  ('2026-01-14','Eggplant',1),
  ('2026-01-14','Kite Hill Greek Style Plant-Based Yogurt',4),
  /* 2026-01-17 (Saturday) Trader Joe's; total cost $61.85; checkout at 6:47 PM; paid by credit card; 14 items in transaction but incorrectly billed as 15 */
  ('2026-01-17','TJ Almond Milk',1),
  ('2026-01-17','TJ Miso Ginger Broth',1),
  ('2026-01-17','TJ Sauerkraut',1),
  ('2026-01-17','TJ English Shelled Peas',2), /* I was billed for 2 + 1 = 3 */
  ('2026-01-17','TJ Kale',1),
  ('2026-01-17','TJ Carb Savvy Tortillas',6),
  ('2026-01-17','TJ Walnuts',2),
  /* 2026-01-18 (Sunday) Berkeley Bowl; total cost $43.93; checkout at 6:48 PM; paid by credit card; 7 items in transaction */
  ('2026-01-18','Lundberg Sustainable California White Jasmine Rice',2),
  ('2026-01-18','Lundberg Sustainable California White Basmati Rice',1),
  ('2026-01-18','Russet potatoes 5 lb',1),
  ('2026-01-18','Kite Hill Greek Style Plant-Based Yogurt',3),
  /* 2026-01-22 (Thursday) Trader Joe's; total cost $42.24; checkout at 8:05 PM; paid by credit card; 16 items in transaction */
  ('2026-01-22','TJ Carb Savvy Tortillas',5),
  ('2026-01-22','TJ Kale',1),
  ('2026-01-22','Green bell pepper',4),
  ('2026-01-22','TJ Carrots',1),
  ('2026-01-22','TJ Roasted Seaweed',1),
  ('2026-01-22','Red bell pepper',2),
  ('2026-01-22','TJ Walnuts',2),
  /* 2026-01-23 (Friday) Berkeley Bowl; total cost $42.84; checkout at 6:05 PM; paid by credit card; 19 items in transaction of which 3 were Seventh Generation dish soap bottles, so 16 food items; the 12 tomatoes were bundled as a single item and charged by weight */
  ('2026-01-23','Beefsteak tomato',12), /* technically, "large tomato" 5.73 lb */
  ('2026-01-23','Eggplant',1),
  ('2026-01-23','Kite Hill Greek Style Plant-Based Yogurt',3),
  /* 2026-01-28 (Wednesday) Trader Joe's; total cost $42.85; checkout at 7:19 PM; paid by credit card; 15 items in transaction */
  ('2026-01-28','TJ Almond Milk',1),
  ('2026-01-28','TJ Miso Ginger Broth',1),
  ('2026-01-28','Beefsteak tomato',6),
  ('2026-01-28','TJ Walnuts',2),
  ('2026-01-28','TJ Kale',1),
  ('2026-01-28','TJ Carb Savvy Tortillas',1),
  ('2026-01-28','TJ English Shelled Peas',2),
  ('2026-01-28','TJ Roasted Seaweed',1),
  /* 2026-01-30 (Friday) Trader Joe's; total cost $52.77; checkout at 5:14 PM; paid by debit card; 23 items in transaction */
  ('2026-01-30','TJ Carb Savvy Tortillas',5),
  ('2026-01-30','Beefsteak tomato',7),
  ('2026-01-30','Eggplant',1),
  ('2026-01-30','Red bell pepper',2),
  ('2026-01-30','Green bell pepper',4),
  ('2026-01-30','TJ Kale',1),
  ('2026-01-30','TJ Carrots',1),
  ('2026-01-30','TJ Miso Ginger Broth',1),
  ('2026-01-30','Trader Giotto''s Olive Oil',1),
  /* 2026-02-01 (Sunday) Berkeley Bowl; total cost $73.11; checkout at 2:29 PM; paid by credit card; 12 items in transaction of which 3 were Seventh Generation dish soap bottles so only 9 food items */
  ('2026-02-01','Lundberg Sustainable California White Jasmine Rice',1),
  ('2026-02-01','Lundberg Sustainable California White Basmati Rice',2),
  ('2026-02-01','Kite Hill Greek Style Plant-Based Yogurt',6);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
