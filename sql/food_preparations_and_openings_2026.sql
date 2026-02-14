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
  ('2026-01-02','TJ Sauerkraut',1,1,'2026-01-16',1),
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
  ('2026-01-08','TJ Roasted Seaweed',1,2,'2026-01-12',2),
  ('2026-01-08','TJ Miso Ginger Broth',1,2,'2026-01-12',2),
  ('2026-01-09','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-10',1),
  ('2026-01-09','TJ Almond Milk',1,1,'2026-01-16',2),
  /* 2026-01-10 potatoes prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt; finished cumin bottle as part of this prep; I had only one tomato in stock because Trader Joe's didn't have tomatoes when I went yesterday, so I used bell peppers to fill the pot) */
  ('2026-01-10','Gold potatoes 5 lb',0.5,2,'2026-01-15',1),
  ('2026-01-10','TJ Kale',1,2,'2026-01-15',1),
  ('2026-01-10','TJ English Shelled Peas',2,2,'2026-01-15',1),
  ('2026-01-10','Red bell pepper',2,2,'2026-01-15',1),
  ('2026-01-10','Green bell pepper',2,2,'2026-01-15',1),
  ('2026-01-10','Beefsteak tomato',1,2,'2026-01-15',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-10','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-12',1),
  ('2026-01-11','TJ Walnuts',1,1,'2026-01-13',2),
  /* 2026-01-12 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-12','Lundberg Sustainable California White Jasmine Rice',1,1,'2026-01-15',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-12','TJ Cumin',1,1,null,null), /* opened with rice prep */
  ('2026-01-12','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-13',1),
  ('2026-01-13','TJ Miso Ginger Broth',1,1,'2026-01-17',2),
  ('2026-01-13','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-14',2),
  ('2026-01-13','TJ Carb Savvy Tortillas',1,2,'2026-01-14',1),
  ('2026-01-13','TJ Roasted Seaweed',1,2,'2026-01-19',2),
  ('2026-01-14','TJ Walnuts',1,1,'2026-01-17',2),
  ('2026-01-14','TJ Carb Savvy Tortillas',1,1,'2026-01-15',1),
  /* 2026-01-14 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt) */
  ('2026-01-14','Eggplant',1,2,'2026-01-20',2),
  ('2026-01-14','TJ Kale',1,2,'2026-01-20',2),
  ('2026-01-14','TJ Carrots',1,2,'2026-01-20',2),
  ('2026-01-14','Green bell pepper',4,2,'2026-01-20',2),
  ('2026-01-14','Red bell pepper',2,2,'2026-01-20',2),
  ('2026-01-14','Beefsteak tomato',6,2,'2026-01-20',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-15','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-16',2),
  ('2026-01-15','Udupi Palace spinach masala dosa free red chutney',1,1,'2026-01-22',1),
  ('2026-01-15','TJ Carb Savvy Tortillas',1,2,'2026-01-16',1),
  /* 2026-01-16 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-16','Lundberg Sustainable California White Jasmine Rice',1,1,'2026-01-19',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-16','TJ Sauerkraut',1,1,'2026-01-29',1),
  ('2026-01-16','TJ Carb Savvy Tortillas',1,1,'2026-01-17',1),
  ('2026-01-16','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-18',1),
  ('2026-01-17','TJ Almond Milk',1,1,'2026-01-25',1),
  ('2026-01-17','TJ Carb Savvy Tortillas',1,2,'2026-01-18',2),
  ('2026-01-17','TJ Miso Ginger Broth',1,2,'2026-01-22',2),
  ('2026-01-17','Whole Foods Walnuts',1,2,'2026-01-20',2),
  ('2026-01-18','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-19',2),
  ('2026-01-18','TJ Carb Savvy Tortillas',1,2,'2026-01-19',2),
  /* 2026-01-19 potatoes prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt; I used two green bell peppers in lieu of tomatoes) */
  ('2026-01-19','Russet potatoes 5 lb',0.5,2,'2026-01-25',1),
  ('2026-01-19','TJ Kale',1,2,'2026-01-25',1),
  ('2026-01-19','TJ English Shelled Peas',2,2,'2026-01-25',1),
  ('2026-01-19','Green bell pepper',2,2,'2026-01-25',1),
  ('2026-01-19','Beefsteak tomato',3,2,'2026-01-25',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-19','TJ Roasted Seaweed',1,2,'2026-01-27',2),
  ('2026-01-19','TJ Carb Savvy Tortillas',1,2,'2026-01-20',1),
  ('2026-01-19','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-20',2),
  /* 2026-01-20 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-20','Lundberg Sustainable California White Basmati Rice',1,1,'2026-01-23',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-20','TJ Carb Savvy Tortillas',1,2,'2026-01-21',2),
  ('2026-01-21','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-22',2),
  ('2026-01-21','Whole Foods Walnuts',1,1,'2026-01-24',1),
  ('2026-01-22','TJ Carb Savvy Tortillas',1,1,'2026-01-23',1),
  ('2026-01-22','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-24',1),
  ('2026-01-23','TJ Miso Ginger Broth',1,1,'2026-01-28',2),
  ('2026-01-23','TJ Carb Savvy Tortillas',1,1,'2026-01-23',2),
  /* 2026-01-23 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt; also, finished olive oil bottle along with this prep) */
  ('2026-01-23','Eggplant',1,2,'2026-01-29',1),
  ('2026-01-23','TJ Kale',1,2,'2026-01-29',1),
  ('2026-01-23','TJ Carrots',1,2,'2026-01-29',1),
  ('2026-01-23','Green bell pepper',4,2,'2026-01-29',1),
  ('2026-01-23','Red bell pepper',2,2,'2026-01-29',1),
  ('2026-01-23','Beefsteak tomato',7,2,'2026-01-29',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-23','TJ Carb Savvy Tortillas',1,2,'2026-01-24',2),
  /* 2026-01-24 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-24','Lundberg Sustainable California White Basmati Rice',1,1,'2026-01-27',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-24','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-25',1),
  ('2026-01-24','Whole Foods Walnuts',1,2,'2026-01-28',1),
  ('2026-01-25','TJ Carb Savvy Tortillas',1,1,'2026-01-25',2),
  ('2026-01-25','TJ Almond Milk',1,1,'2026-02-03',1),
  ('2026-01-25','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-27',1),
  ('2026-01-26','TJ Carb Savvy Tortillas',1,1,'2026-01-27',1),
  ('2026-01-27','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-28',1),
  /* 2026-01-27 rice prep (second meal) (added turmeric, cumin, salt) */
  ('2026-01-27','Lundberg Sustainable California White Jasmine Rice',1,2,'2026-01-30',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-27','TJ Carb Savvy Tortillas',1,2,'2026-01-28',1),
  ('2026-01-27','TJ Roasted Seaweed',1,2,'2026-02-02',2), /* technically I had one sheet left, but I had already opened the next packet so I just transferred the sheet to the next packet */
  ('2026-01-28','Whole Foods Walnuts',1,1,'2026-01-31',2),
  ('2026-01-28','TJ Carb Savvy Tortillas',1,2,'2026-01-29',1),
  ('2026-01-28','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-01-30',1),
  ('2026-01-29','TJ Sauerkraut',1,1,'2026-02-10',1),
  ('2026-01-29','TJ Miso Ginger Broth',1,1,'2026-02-03',2),
  /* 2026-01-29 potatoes prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt) */
  ('2026-01-29','Russet potatoes 5 lb',0.5,2,'2026-02-04',1),
  ('2026-01-29','TJ Kale',1,2,'2026-02-04',1),
  ('2026-01-29','TJ English Shelled Peas',2,2,'2026-02-04',1),
  ('2026-01-29','Beefsteak tomato',5,2,'2026-02-04',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-29','Trader Giotto''s Olive Oil',1,2,null,null), /* opened with potatoes prep */
  ('2026-01-29','TJ Carb Savvy Tortillas',1,2,'2026-01-30',2),
  ('2026-01-30','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-01-31',1),
  ('2026-01-30','TJ Carb Savvy Tortillas',1,2,'2026-01-31',2),
  /* 2026-01-31 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-31','Lundberg Sustainable California White Basmati Rice',1,1,'2026-02-03',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-31','TJ Carb Savvy Tortillas',1,2,'2026-02-01',2),
  ('2026-01-31','TJ Walnuts',1,2,'2026-02-04',2),
  ('2026-02-01','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-02-02',1),
  /* 2026-02-01 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt) */
  ('2026-02-01','Eggplant',1,2,'2026-02-09',1),
  ('2026-02-01','TJ Kale',1,2,'2026-02-09',1),
  ('2026-02-01','TJ Carrots',1,2,'2026-02-09',1),
  ('2026-02-01','Green bell pepper',4,2,'2026-02-09',1),
  ('2026-02-01','Red bell pepper',2,2,'2026-02-09',1),
  ('2026-02-01','Beefsteak tomato',6,2,'2026-02-09',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-01','TJ Carb Savvy Tortillas',1,2,'2026-02-02',2),
  ('2026-02-02','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-02-04',1),
  ('2026-02-02','TJ Roasted Seaweed',1,2,'2026-02-11',2),
  ('2026-02-03','TJ Carb Savvy Tortillas',1,1,'2026-02-04',1),
  ('2026-02-03','TJ Almond Milk',1,1,'2026-02-13',2),
  ('2026-02-04','TJ Miso Ginger Broth',1,1,'2026-02-12',2),
  ('2026-02-04','TJ Carb Savvy Tortillas',1,1,'2026-02-05',1),
  /* 2026-02-04 rice prep (second meal) (added turmeric, cumin, salt) */
  ('2026-02-04','Lundberg Sustainable California White Basmati Rice',1,2,'2026-02-07',2),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-04','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-02-05',2),
  ('2026-02-04','TJ Walnuts',1,2,'2026-02-08',1),
  ('2026-02-06','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-02-07',1),
  /* 2026-02-06 Udupi Palace takeout consumption (second meal) */
  ('2026-02-06','Udupi Palace spinach masala dosa',1,2,'2026-02-07',1), /* I finished the dosa in the meal but some of the sambhar and chutney were left for future meals */
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-06','TJ Carb Savvy Tortillas',1,2,'2026-02-07',2),
  /* 2026-02-07 potatoes prep (first meal) (added olive oil, turmeric, cumin, cinnamon, and salt; skipped cayenne pepper in light of recent Udupi Palace spinach masala dosa consumption) */
  ('2026-02-07','Gold potatoes 5 lb',0.5,1,null,null),
  ('2026-02-07','TJ Kale',1,1,null,null),
  ('2026-02-07','TJ English Shelled Peas',2,1,null,null),
  ('2026-02-07','Beefsteak tomato',6,1,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-07','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-02-09',1),
  ('2026-02-07','TJ Carb Savvy Tortillas',1,2,'2026-02-08',1),
  /* 2026-02-08 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-02-08','Lundberg Sustainable California White Jasmine Rice',1,1,'2026-02-12',1),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-08','TJ Walnuts',1,1,'2026-02-12',2),
  ('2026-02-08','TJ Carb Savvy Tortillas',1,2,'2026-02-09',2),
  ('2026-02-09','Kite Hill Greek Style Plant-Based Yogurt',1,1,'2026-02-10',2),
  ('2026-02-10','TJ Carb Savvy Tortillas',1,1,'2026-02-11',2),
  ('2026-02-10','TJ Sauerkraut',1,1,null,null),
  /* 2026-02-10 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt) */
  ('2026-02-10','Eggplant',1,2,null,null),
  ('2026-02-10','TJ Kale',1,2,null,null),
  ('2026-02-10','TJ Carrots',1,2,null,null),
  ('2026-02-10','Green bell pepper',4,2,null,null),
  ('2026-02-10','Red bell pepper',2,2,null,null),
  ('2026-02-10','Beefsteak tomato',7,2,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-10','Kite Hill Greek Style Plant-Based Yogurt',1,2,'2026-02-12',2),
  ('2026-02-11','TJ Carb Savvy Tortillas',1,2,'2026-02-12',2),
  /* 2026-02-12 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-02-12','Lundberg Sustainable California White Basmati Rice',1,1,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-02-12','TJ Roasted Seaweed',1,2,null,null),
  ('2026-02-12','TJ Walnuts',1,2,null,null),
  ('2026-02-12','TJ Carb Savvy Tortillas',1,2,'2026-02-13',2),
  ('2026-02-13','TJ Miso Ginger Broth',1,1,null,null),
  ('2026-02-13','TJ Almond Milk',1,2,null,null);
  /* Double-check the date and meal index before committing */
