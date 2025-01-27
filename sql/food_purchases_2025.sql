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
  /* 2025-01-07 Trader Joe's; total cost $35.10; checkout at 4:56 PM; paid by debit card */
  ('2025-01-07','Gold potatoes 3 lb',1),
  ('2025-01-07','TJ Miso Ginger Broth',1),
  ('2025-01-07','TJ English Shelled Peas',4),
  ('2025-01-07','TJ Carb Savvy Tortillas',1),
  ('2025-01-07','TJ Kale',1),
  ('2025-01-07','Eggplant',2),
  /* 2025-01-12 Trader Joe's; total cost $38.88; checkout at 3:52 PM; paid by credit card */
  ('2025-01-12','TJ Kale',2),
  ('2025-01-12','Gold potatoes 5 lb',1),
  ('2025-01-12','Green bell pepper',4),
  ('2025-01-12','Beefsteak tomato',9),
  ('2025-01-12','Red bell pepper',2),
  ('2025-01-12','TJ Carrots',1),
  ('2025-01-12','TJ Miso Ginger Broth',1),
  ('2025-01-12','TJ Roasted Seaweed',1),
  ('2025-01-12','California Walnuts',1), /* chopped */
  /* 2025-01-15 Berkeley Bowl; total cost $49.92; checkout at 5:10 PM; paid by credit card */
  ('2025-01-15','Lundberg Sustainable California White Basmati Rice',3),
  ('2025-01-15','Kite Hill Greek Style Plant-Based Yogurt',5),
  /* 2025-01-16 Trader Joe's; total cost $58.67; checkout at 6:51 PM; paid by credit card */
  ('2025-01-16','TJ Carb Savvy Tortillas',4),
  ('2025-01-16','TJ Kale',2),
  ('2025-01-16','Beefsteak tomato',9),
  ('2025-01-16','TJ Almond Milk',1),
  ('2025-01-16','TJ Miso Ginger Broth',1),
  ('2025-01-16','TJ Carrots',1),
  ('2025-01-16','TJ English Shelled Peas',4),
  ('2025-01-16','TJ Turmeric',1),
  /* 2025-01-18 Trader Joe's; total cost $31.93; checkout at 6:04 PM; paid by credit card; 17 items in transaction */
  ('2025-01-18','TJ Kale',1),
  ('2025-01-18','TJ Carb Savvy Tortillas',3),
  ('2025-01-18','Green bell pepper',4),
  ('2025-01-18','Eggplant',2),
  ('2025-01-18','Beefsteak tomato',4),
  ('2025-01-18','Gold potatoes 5 lb',1),
  ('2025-01-18','Red bell pepper',2),
  /* 2025-01-23 Trader Joe's; total cost $86.15; checkout at 5:23 PM; paid by debit card; 25 items in transaction */
  ('2025-01-23','TJ Kale',1),
  ('2025-01-23','Beefsteak tomato',9),
  ('2025-01-23','TJ Carb Savvy Tortillas',3),
  ('2025-01-23','Trader Giotto''s Olive Oil',1),
  ('2025-01-23','TJ Carrots',1),
  ('2025-01-23','TJ Roasted Seaweed',2),
  ('2025-01-23','TJ Sauerkraut',1),
  ('2025-01-23','TJ English Shelled Peas',4),
  ('2025-01-23','California Walnuts',3),
  /* 2025-01-26 Berkeley Bowl; total cost $55.41; checkout at 4:25 PM; paid by credit card; 9 items in transaction */
  ('2025-01-26','Lundberg Sustainable California White Basmati Rice',3),
  ('2025-01-26','Kite Hill Greek Style Plant-Based Yogurt',6),
  /* 2025-01-26 Trader Joe's; total cost $39.11; checkout at 5:38 PM; paid by credit card; 19 items in transaction */
  ('2025-01-26','TJ Kale',2),
  ('2025-01-26','TJ Almond Milk',1),
  ('2025-01-26','TJ Carb Savvy Tortillas',3),
  ('2025-01-26','Gold potatoes 5 lb',1),
  ('2025-01-26','TJ Carrots',1),
  ('2025-01-26','TJ Miso Ginger Broth',2),
  ('2025-01-26','Red bell pepper',2),
  ('2025-01-26','Green bell pepper',4),
  ('2025-01-26','Beefsteak tomato',3);
  /* after entering a batch of data for a purchase:
  (a) eyeball for correct format
  (b) double-check date and C-s search to confirm correctness
  (c) do manual forward and back total and compare against receipt
  (d) make in SQL
  (e) check total in SQL
  (f) check for mismatched names in SQL */
