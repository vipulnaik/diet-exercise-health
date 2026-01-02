insert into food_preparations_and_openings(preparation_or_opening_date, food_type, quantity, meal_index, completion_date, completion_meal_index) values
  /* 2026-01-01 rice prep (first meal) (added turmeric, cumin, salt) */
  ('2026-01-01','Lundberg Sustainable California White Basmati Rice',1,1,null,null),
  /* 2026-01-01 eggplant meal prep (second meal) (added olive oil, turmeric, cumin, cinnamon, cayenne pepper, and salt, finishing the turmeric bottle) */
  ('2026-01-01','Eggplant',1,2,null,null),
  ('2026-01-01','TJ Kale',1,2,null,null),
  ('2026-01-01','TJ Carrots',1,2,null,null),
  ('2026-01-01','Green bell pepper',4,2,null,null),
  ('2026-01-01','Red bell pepper',2,2,null,null),
  ('2026-01-01','Beefsteak tomato',8,2,null,null),
  /* new bottle/packet openings as the old ones finished */
  ('2026-01-01','TJ Roasted Seaweed',1,2,null,null),
  ('2026-01-01','TJ Carb Savvy Tortillas',1,2,null,null);
  /* Double-check the date and meal index before committing */
