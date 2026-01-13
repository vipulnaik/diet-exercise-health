insert into food_preparations_and_openings(preparation_or_opening_date, food_type, quantity, meal_index, completion_date, completion_meal_index) values
  /* 2026-01-01 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-01','Lundberg Sustainable California White Basmati Rice',1,1,'2026-01-04',2),
  /* 2026-01-01 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt, finishing the turmeric bottle) */
  ('2026-01-01','Eggplant',1,2,'2026-01-11',1),
  ('2026-01-01','TJ Kale',1,2,'2026-01-11',1),
  ('2026-01-01','TJ Carrots',1,2,'2026-01-11',1),
  ('2026-01-01','Green bell pepper',4,2,'2026-01-11',1),
  ('2026-01-01','Red bell pepper',2,2,'2026-01-11',1),
  ('2026-01-01','Beefsteak tomato',8,2,'2026-01-11',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-01','TJ Roasted Seaweed',1,2,'2026-01-07',2),
  ('2026-01-01','TJ Carb Savvy Tortillas',1,2,'2026-01-02',2),
  ('2026-01-02','TJ Miso Ginger Broth',1,1,'2026-01-08',2),
  ('2026-01-02','TJ Sauerkraut',1,1,null,null),
  ('2026-01-02','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-03',2),
  ('2026-01-03','TJ Carb Savvy Tortillas',1,1,'2026-01-04',1),
  ('2026-01-03','TJ Walnuts',1,2,'2026-01-07',1),
  ('2026-01-04','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-05',2),
  ('2026-01-04','TJ Carb Savvy Tortillas',1,1,'2026-01-04',2),
  /* 2026-01-04 potatoes prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt) */
  ('2026-01-04','Gold potatoes 5 lb',0.5,2,'2026-01-09',2),
  ('2026-01-04','TJ Kale',1,2,'2026-01-09',2),
  ('2026-01-04','TJ English Shelled Peas',2,2,'2026-01-09',2),
  ('2026-01-04','Beefsteak tomato',3,2,'2026-01-09',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-04','TJ Turmeric',1,2,null,null), /* opened with potatoes prep; previous bottle had been finished with preceding eggplant meal prep */
  ('2026-01-04','TJ Carb Savvy Tortillas',1,2,'2026-01-05',1),
  /* 2026-01-05 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-05','Lundberg Sustainable California White Basmati Rice',1,1,'2026-01-08',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-05','TJ Carb Savvy Tortillas',1,2,'2026-01-06',2),
  ('2026-01-05','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-07',1),
  ('2026-01-07','TJ Walnuts',1,2,'2026-01-11',1),
  ('2026-01-07','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-09',1),
  /* 2026-01-08 rice prep (second meal) (added turmeric, cumin, salt) */
  ('2026-01-08','Lundberg Sustainable California White Basmati Rice',1,2,'2026-01-11',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-08','TJ Roasted Seaweed',1,2,null,null),
  ('2026-01-08','TJ Miso Ginger Broth',1,2,null,null),
  ('2026-01-09','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-10',1),
  ('2026-01-09','TJ Almond Milk',1,1,null,null),
  /* 2026-01-10 potatoes prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt; finished cumin bottle as part of this prep; I had only one tomato in stock because Trader Joe's didn't have tomatoes when I went yesterday, so I used bell peppers to fill the pot) */
  ('2026-01-10','Gold potatoes 5 lb',0.5,2,null,null),
  ('2026-01-10','TJ Kale',1,2,null,null),
  ('2026-01-10','TJ English Shelled Peas',2,2,null,null),
  ('2026-01-10','Red bell pepper',2,2,null,null),
  ('2026-01-10','Green bell pepper',2,2,null,null),
  ('2026-01-10','Beefsteak tomato',1,2,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-10','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-12',1),
  ('2026-01-11','TJ Walnuts',1,1,null,null),
  /* 2026-01-12 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-12','Lundberg Sustainable California White Jasmine Rice',1,1,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-12','TJ Cumin',1,1,null,null), /* opened with rice prep */
  ('2026-01-12','Kite Hill Greek Style Plant-Based Yogurt',1,1,null,null);
  /* Double-check the date and meal index before committing */
