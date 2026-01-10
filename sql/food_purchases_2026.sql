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
  ('2026-01-09','Green bell pepper',4);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
