insert into food_purchases(purchase_date, food_type, quantity) values
  /* 2025-01-04 Berkeley Bowl; total cost $55.41; checkout at 3:25 PM; paid by credit card */
  ('2025-01-04','Lundberg Sustainable California White Basmati Rice',3),
  ('2025-01-04','Kite Hill Greek Style Plant-Based Yogurt',6),
  /* 2025-01-05 Trader Joe's; total cost $32.22; checkout at 5:33 PM; paid by credit card */
  ('2025-01-05','TJ Almond Milk',1),
  ('2025-01-05','Red bell pepper',4),
  ('2025-01-05','TJ Kale',1),
  ('2025-01-05','Beefsteak tomato',9),
  ('2025-01-05','TJ Carrots',1),
  ('2025-01-05','TJ Roasted Seaweed',1),
  ('2025-01-05','California Walnuts',1), /* chopped ones this time */
  /* 2025-01-07 Trader Joe's; total cost $35.10; checkout t 4:56 PM; paid by debit card */
  ('2025-01-07','Gold potatoes 3 lb',1),
  ('2025-01-07','TJ Miso Ginger Broth',1),
  ('2025-01-07','TJ English Shelled Peas',4),
  ('2025-01-07','TJ Carb Savvy Tortillas',1),
  ('2025-01-07','TJ Kale',1),
  ('2025-01-07','Eggplant',2);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
