insert into food_purchases(purchase_date, food_type, quantity) values
  /* 2026-01-02 (Friday) Trader Joe's; total cost $33.38; checkout at 3:12 PM; paid by debit card; 12 items in transaction */
  ('2026-01-02','TJ Almond Milk',1),
  ('2026-01-02','Gold potatoes 5 lb',1),
  ('2026-01-02','TJ Sauerkraut',1),
  ('2026-01-02','TJ English Shelled Peas',2),
  ('2026-01-02','TJ Turmeric',1),
  ('2026-01-02','TJ Roasted Seaweed',1),
  ('2026-01-02','TJ Kale',1),
  ('2026-01-02','Beefsteak tomato',4);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
