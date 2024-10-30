create table food_preparations_and_openings(
  `preparation_or_opening_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(11,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_preparations_and_openings(preparation_or_opening_date, food_type, quantity) values
  /* 2024-05-30 lentils prep */
  ('2024-05-30','TJ Green Lentils',1),
  /* 2024-05-31 rice prep */
  ('2024-05-31','Lundberg Sustainable California White Basmati Rice',0.8),
  /* 2024-06-01 potatoes prep */
  ('2024-06-01','Gold potatoes 5 lb',0.45), /* approximate */
  ('2024-06-01','TJ Kale',1),
  ('2024-06-01','TJ English Shelled Peas',3),
  ('2024-06-01','Beefsteak tomato',2),
  /* In Portland */
  /* 2024-06-03: day of arrival */
  ('2024-06-03','TJ Almond Milk',1),
  ('2024-06-03','TJ Miso Ginger Broth',1),
  ('2024-06-03','TJ Sauerkraut',1),
  ('2024-06-03','TJ Walnuts',1),
  ('2024-06-03','India House Oregon aloo sag',1),
  ('2024-06-03','India House Oregon rice',1),
  /* 2024-06-04: next day */
  ('2024-06-04','India House Oregon rice',1),
  ('2024-06-04','Dil Se Indian Cuisine half chana masala and half aloo gobi',1),
  ('2024-06-04','Kite Hill Vanilla Almond Yogurt (small)',1),
  /* 2024-06-05: day 3 */
  ('2024-06-05','Kite Hill Vanilla Almond Yogurt (small)',1),
  ('2024-06-05','Whole Foods Organic Multigrain and Seed Sandwich Bread',1),
  /* 2024-06-06: day 4 */
  ('2024-06-06','Kite Hill Vanilla Almond Yogurt (small)',1),
  /* 2024-06-07 rice prep after returning from Portland -- fraction is approximate */
  ('2024-06-07','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-06-08 */
  ('2024-06-08','Gold potatoes 5 lb',0.1), /* there wasn't much left over of this; usually I consume about a third of the amount if available */
  ('2024-06-08','TJ Kale',1),
  ('2024-06-08','TJ Broccoli Florets 12 oz',1),
  ('2024-06-08','TJ English Shelled Peas',3),
  ('2024-06-08','Beefsteak tomato',3), /* Despite the smaller number of potatoes, the pot got close to full with the other stuff, so there was space for just 3 tomatoes */
  /* New bottle openings as the old ones finished */
  ('2024-06-08','TJ Miso Ginger Broth',1),
  ('2024-06-09','TJ Almond Milk',1),
  /* Meal prep 2024-06-10 */
  ('2024-06-10','Eggplant',1),
  ('2024-06-10','TJ Kale',1),
  ('2024-06-10','TJ Carrots',1),
  ('2024-06-10','Green bell pepper',4),
  ('2024-06-10','Red bell pepper',2),
  ('2024-06-10','Beefsteak tomato',3),
  /* Rice prep 2024-06-10 */
  ('2024-06-10','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle openings as the old ones finished */
  ('2024-06-10','TJ Sauerkraut',1),
  ('2024-06-11','TJ Miso Ginger Broth',1),
  /* Potatoes prep 2024-06-12 */
  ('2024-06-12','Gold potatoes 5 lb',0.30),
  ('2024-06-12','TJ Kale',1),
  ('2024-06-12','TJ Broccoli Florets 12 oz',1),
  ('2024-06-12','TJ English Shelled Peas',3),
  ('2024-06-12','Beefsteak tomato',4),
  /* Walnuts */
  ('2024-06-12','TJ Walnuts',1),
  /* Rice prep 2024-06-13 */
  ('2024-06-13','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle openings as the old ones finished */
  ('2024-06-13','TJ Almond Milk',1),
  ('2024-06-14','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Lentils prep (soaking 2024-06-14; cooking 2024-06-15) */
  ('2024-06-14','TJ Green Lentils',1), /* soaking overnight to cook the next morning */
  /* Meal prep 2024-06-16 */
  ('2024-06-16','Eggplant',1),
  ('2024-06-16','TJ Kale',1),
  ('2024-06-16','TJ Carrots',1),
  ('2024-06-16','Green bell pepper',4),
  ('2024-06-16','Red bell pepper',2),
  ('2024-06-16','Beefsteak tomato',3),
  ('2024-06-16','Lemon',1), /* Cut and started using lemon */
  /* Rice prep 2024-06-17 */
  ('2024-06-17','Lundberg Sustainable California White Basmati Rice',0.8),
  ('2024-06-18','Trader Giotto''s Olive Oil',1), /* This date is approximate and backfilled */
  /* Potatoes prep 2024-06-18 */
  ('2024-06-18','Gold potatoes 5 lb',0.30),
  ('2024-06-18','TJ Kale',1),
  ('2024-06-18','TJ Broccoli Florets 12 oz',1),
  ('2024-06-18','TJ English Shelled Peas',3),
  ('2024-06-18','Beefsteak tomato',2), /* I had originally entered 3 but based on the tally total on 2024-06-24 I think it should be 2 */
  /* New bottle openings as the old ones finished */
  ('2024-06-19','TJ Almond Milk',1),
  ('2024-06-19','TJ Miso Ginger Broth',1),
  /* Rice prep 2024-06-20 */
  ('2024-06-20','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle openings as the old ones finished */
  ('2024-06-20','TJ Sauerkraut',1),
  ('2024-06-21','TJ Walnuts',1),
  /* Potatoes prep 2024-06-22 */
  ('2024-06-22','Gold potatoes 5 lb',0.40),
  ('2024-06-22','TJ Kale',1),
  ('2024-06-22','TJ Broccoli Florets 12 oz',1),
  ('2024-06-22','TJ English Shelled Peas',3),
  ('2024-06-22','Beefsteak tomato',1),
  /* New bottle openings as the old ones finished */
  ('2024-06-22','TJ Miso Ginger Broth',1),
  /* Couscous prep 2024-06-23 */
  ('2024-06-23','TJ Organic Couscous',1),
  /* New bottle openings as the old ones finished */
  ('2024-06-24','TJ Almond Milk',1),
  /* Meal prep 2024-06-24 */
  ('2024-06-24','Eggplant',1),
  ('2024-06-24','TJ Kale',1),
  ('2024-06-24','TJ Carrots',1),
  ('2024-06-24','Green bell pepper',4),
  ('2024-06-24','Red bell pepper',2),
  ('2024-06-24','Beefsteak tomato',4), /* I think this was 4, but maybe it was 3 which would make sense if the original 2024-06-16 and 2024-06-18 were both correct */
  /* Rice prep 2024-06-25 */
  ('2024-06-25','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Lentils prep (soaking 2024-06-26, cooking and eating 2024-06-27) */
  ('2024-06-26','TJ Green Lentils',1),
  /* Rice prep 2024-06-28 */
  ('2024-06-28','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-06-28 */
  ('2024-06-28','Gold potatoes 5 lb',0.3),
  ('2024-06-28','TJ Kale',1),
  ('2024-06-28','TJ Broccoli Florets 12 oz',1),
  ('2024-06-28','TJ English Shelled Peas',3),
  ('2024-06-28','Beefsteak tomato',2),
  /* New bottle/packet openings as the old ones finished */
  ('2024-06-28','TJ Carb Savvy Tortillas',1),
  ('2024-06-28','TJ Walnuts',1),
  ('2024-06-29','TJ Miso Ginger Broth',1),
  ('2024-06-29','TJ Almond Milk',1),
  /* Meal prep 2024-07-01 */
  ('2024-07-01','Eggplant',1),
  ('2024-07-01','TJ Kale',1),
  ('2024-07-01','TJ Carrots',1),
  ('2024-07-01','Green bell pepper',4),
  ('2024-07-01','Red bell pepper',2),
  ('2024-07-01','Beefsteak tomato',4),
  ('2024-07-01','TJ Turmeric',1), /* I opened the turmeric bottle */
  /* Rice prep 2024-07-02 */
  ('2024-07-02','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-07-03 */
  ('2024-07-03','Gold potatoes 5 lb',0.4),
  ('2024-07-03','TJ Kale',1),
  ('2024-07-03','TJ Broccoli Florets 12 oz',1),
  ('2024-07-03','TJ English Shelled Peas',3),
  ('2024-07-03','Beefsteak tomato',2),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-04','TJ Miso Ginger Broth',1),
  ('2024-07-04','TJ Sauerkraut',1),
  ('2024-07-04','TJ Almond Milk',1),
  ('2024-07-04','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Rice prep 2024-07-06 */
  ('2024-07-06','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-06','TJ Walnuts',1),
  /* Potatoes prep 2024-07-07 */
  ('2024-07-07','Gold potatoes 5 lb',0.27),
  ('2024-07-07','TJ Kale',1),
  ('2024-07-07','TJ Broccoli Florets 12 oz',1),
  ('2024-07-07','TJ English Shelled Peas',3),
  ('2024-07-07','Beefsteak tomato',2),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-07','TJ Carb Savvy Tortillas',1),
  ('2024-07-08','TJ Almond Milk',1),
  /* Meal prep 2024-07-09 */
  ('2024-07-09','Eggplant',1),
  ('2024-07-09','TJ Kale',1),
  ('2024-07-09','TJ Carrots',1),
  ('2024-07-09','Green bell pepper',4),
  ('2024-07-09','Red bell pepper',2),
  ('2024-07-09','Beefsteak tomato',4),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-09','TJ Miso Ginger Broth',1),
  /* Rice prep 2024-07-09 */
  ('2024-07-09','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old finished */
  ('2024-07-10','TJ Carb Savvy Tortillas',1),
  ('2024-07-11','Trader Giotto''s Olive Oil',1), /* I opened this as part of the potatoes prep */
  /* Potatoes prep 2024-07-11 */
  ('2024-07-11','Gold potatoes 5 lb',0.27),
  ('2024-07-11','TJ Kale',1),
  ('2024-07-11','TJ Broccoli Florets 12 oz',1),
  ('2024-07-11','TJ English Shelled Peas',3),
  ('2024-07-11','Beefsteak tomato',2),
  /* Rice prep 2024-07-12 */
  ('2024-07-12','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old finished */
  ('2024-07-12','TJ Almond Milk',1),
  /* Lentils prep (soaking 2024-07-13, cooking 2024-07-14) */
  ('2024-07-13','TJ Green Lentils',1),
  /* New bottle/packet openings as the old finished */
  ('2024-07-14','TJ Miso Ginger Broth',1),
  /* Meal prep 2024-07-15 */
  ('2024-07-15','Eggplant',1),
  ('2024-07-15','TJ Kale',1),
  ('2024-07-15','TJ Carrots',1),
  ('2024-07-15','Green bell pepper',4),
  ('2024-07-15','Red bell pepper',2),
  ('2024-07-15','Beefsteak tomato',4),
  /* Rice prep 2024-07-16 */
  ('2024-07-16','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old finished */
  ('2024-07-16','TJ Walnuts',1),
  ('2024-07-18','TJ Almond Milk',1),
  ('2024-07-18','TJ Miso Ginger Broth',1),
  /* Potatoes prep 2024-07-18 */
  ('2024-07-18','Gold potatoes 5 lb',0.27),
  ('2024-07-18','TJ Kale',1),
  ('2024-07-18','TJ Broccoli Florets 12 oz',1),
  ('2024-07-18','TJ English Shelled Peas',3),
  ('2024-07-18','Beefsteak tomato',2),
  /* Rice prep 2024-07-19 */
  ('2024-07-19','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-19','TJ Sauerkraut',1),
  ('2024-07-19','Kite Hill Greek Style Plant-Based Yogurt',1), /* I had this due to slight abdominal issues; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for background */
  /* Meal prep 2024-07-20 */
  ('2024-07-20','Eggplant',1),
  ('2024-07-20','TJ Kale',1),
  ('2024-07-20','TJ Carrots',1),
  ('2024-07-20','Green bell pepper',4),
  ('2024-07-20','Red bell pepper',2),
  ('2024-07-20','Beefsteak tomato',5), /* I increased from 4 to 5 */
  /* Rice prep 2024-07-22 */
  ('2024-07-22','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-07-23 */
  ('2024-07-23','Gold potatoes 5 lb',0.27),
  ('2024-07-23','TJ Kale',1),
  ('2024-07-23','TJ Broccoli Florets 12 oz',1),
  ('2024-07-23','TJ English Shelled Peas',3),
  ('2024-07-23','Beefsteak tomato',2),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-23','TJ Almond Milk',1),
  ('2024-07-23','TJ Miso Ginger Broth',1),
  ('2024-07-24','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-07-24','TJ Walnuts',1),
  ('2024-07-26','TJ Turmeric',1),
  /* Rice prep 2024-07-26 */
  ('2024-07-26','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-27','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Potatoes prep 2024-07-28 */
  ('2024-07-28','Gold potatoes 5 lb',0.27),
  ('2024-07-28','TJ Kale',1),
  ('2024-07-28','TJ Broccoli Florets 12 oz',1),
  ('2024-07-28','TJ English Shelled Peas',3),
  ('2024-07-28','Beefsteak tomato',3),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-28','TJ Almond Milk',1),
  ('2024-07-29','TJ Miso Ginger Broth',1),
  ('2024-07-29','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Meal prep 2024-07-29 */
  ('2024-07-29','Eggplant',1),
  ('2024-07-29','TJ Kale',1),
  ('2024-07-29','TJ Carrots',1),
  ('2024-07-29','Green bell pepper',4),
  ('2024-07-29','Orange bell pepper',2),
  ('2024-07-29','Beefsteak tomato',5),
  /* Rice prep 2024-07-30 */
  ('2024-07-30','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-07-31','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-08-01','TJ Walnuts',1),
  /* Kitava dine-in */
  ('2024-08-02','Kitava Power Bowl',1),
  /* Rice prep 2024-08-02 */
  ('2024-08-02','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-03','TJ Almond Milk',1),
  ('2024-08-03','TJ Miso Ginger Broth',1),
  ('2024-08-03','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Meal prep 2024-08-04 */
  ('2024-08-04','Eggplant',1),
  ('2024-08-04','TJ Kale',1),
  ('2024-08-04','TJ Carrots',1),
  ('2024-08-04','Green bell pepper',4),
  ('2024-08-04','Red bell pepper',2),
  ('2024-08-04','Beefsteak tomato',6),
  /* Potatoes prep (abridged) 2024-08-05 */
  ('2024-08-05','Gold potatoes 5 lb',0.27),
  ('2024-08-05','Beefsteak tomato',2),
  ('2024-08-05','Trader Giotto''s Olive Oil',1), /* date is approximate and reflects that I moved to a new olive oil bottle around this time */
  /* Rice prep 2024-08-06 */
  ('2024-08-06','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-06','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Lentils prep 2024-08-07 */
  ('2024-08-07','TJ Green Lentils',1), /* Soaked 2024-08-07 with intent to cook and start eating the next day */
  /* Potatoes prep 2024-08-08 (no peas this time!) */
  ('2024-08-08','Gold potatoes 5 lb',0.27),
  ('2024-08-08','TJ Kale',1),
  ('2024-08-08','TJ Broccoli Florets 12 oz',1),
  ('2024-08-08','Beefsteak tomato',4),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-08','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-08-08','TJ Miso Ginger Broth',1),
  ('2024-08-09','TJ Almond Milk',1),
  /* Rice prep 2024-08-09 */
  ('2024-08-09','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-10','TJ Walnuts',1),
  ('2024-08-11','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Potatoes prep 2024-08-11 */
  ('2024-08-11','Gold potatoes 5 lb',0.27),
  ('2024-08-11','TJ Kale',1),
  ('2024-08-11','TJ Broccoli Florets 12 oz',1),
  ('2024-08-11','Beefsteak tomato',5),
  /* Rice prep 2024-08-12 */
  ('2024-08-12','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-13','TJ Miso Ginger Broth',1),
  ('2024-08-13','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-08-13','TJ Almond Milk',1),
  /* Meal prep 2024-08-13 */
  ('2024-08-13','Eggplant',1),
  ('2024-08-13','TJ Kale',1),
  ('2024-08-13','TJ Carrots',1),
  ('2024-08-13','Green bell pepper',4),
  ('2024-08-13','Red bell pepper',2),
  ('2024-08-13','Beefsteak tomato',6),
  /* Potatoes prep 2024-08-15; skipping both broccoli and peas this time, and instead using more potatoes */
  ('2024-08-15','Gold potatoes 5 lb',0.43),
  ('2024-08-15','TJ Kale',1),
  ('2024-08-15','Beefsteak tomato',5),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-15','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Rice prep 2024-08-16 (first meal) */
  ('2024-08-16','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-17','TJ Almond Milk',1),
  ('2024-08-17','TJ Miso Ginger Broth',1),
  ('2024-08-18','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal, previous piece had been fully finished yesterday */
  /* Rice prep 2024-08-19 (second meal) */
  ('2024-08-19','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-08-20 (first meal) */
  ('2024-08-20','Gold potatoes 5 lb',0.43),
  ('2024-08-20','TJ Kale',1),
  ('2024-08-20','Beefsteak tomato',5),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-20','Trader Giotto''s Olive Oil',1), /* opened near the end of potatoes prep */
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-21','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-08-21','TJ Miso Ginger Broth',1),
  ('2024-08-21','TJ Walnuts',1),
  ('2024-08-22','TJ Almond Milk',1), /* opened with first meal */
  /* Rice prep 2024-08-22 (second meal) */
  ('2024-08-22','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Meal prep 2024-08-23 (first meal) */
  ('2024-08-23','Eggplant',1),
  ('2024-08-23','TJ Kale',1),
  ('2024-08-23','TJ Carrots',1),
  ('2024-08-23','Green bell pepper',4),
  ('2024-08-23','Red bell pepper',2),
  ('2024-08-23','Beefsteak tomato',6),
  /* Potatoes prep 2024-08-24 (first meal) */
  ('2024-08-24','Gold potatoes 5 lb',0.43),
  ('2024-08-24','TJ Kale',1),
  ('2024-08-24','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-24','Kite Hill Greek Style Plant-Based Yogurt',1), /* opened with second meal */
  /* Rice prep 2024-08-26 (first meal) */
  ('2024-08-26','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-08-26','TJ Miso Ginger Broth',1),
  ('2024-08-27','TJ Almond Milk',1), /* opened with first meal */
  ('2024-08-28','Kite Hill Greek Style Plant-Based Yogurt',1), /* opened with second meal */
  ('2024-08-29','TJ Walnuts',1), /* opened with first meal */
  /* Potatoes prep 2024-08-29 (second meal) */
  ('2024-08-29','Gold potatoes 5 lb',0.43),
  ('2024-08-29','TJ Kale',1),
  ('2024-08-29','Beefsteak tomato',5.5),
  /* Rice prep 2024-08-30 (second meal) */
  ('2024-08-30','Lundberg Sustainable California White Basmati Rice',0.8),
  ('2024-08-30','TJ Turmeric',1),
  ('2024-08-30','TJ Cumin',1),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-01','Kite Hill Greek Style Plant-Based Yogurt',1), /* opened with first meal */
  ('2024-09-01','TJ Miso Ginger Broth',1), /* opened with first meal */
  ('2024-09-01','TJ Almond Milk',1), /* opened with first meal */
  /* Meal prep 2024-09-01 (second meal) */
  ('2024-09-01','Eggplant',1),
  ('2024-09-01','TJ Kale',1),
  ('2024-09-01','TJ Carrots',1),
  ('2024-09-01','Green bell pepper',4),
  ('2024-09-01','Red bell pepper',2),
  ('2024-09-01','Beefsteak tomato',6),
  /* Potatoes prep 2024-09-02 (first meal) */
  ('2024-09-02','Gold potatoes 5 lb',0.43),
  ('2024-09-02','TJ Kale',1),
  ('2024-09-02','Beefsteak tomato',6),
  /* Rice prep 2024-09-03 (first meal) */
  ('2024-09-03','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-04','Kite Hill Greek Style Plant-Based Yogurt',1),
  ('2024-09-06','TJ Walnuts',1), /* first meal */
  /* Rice prep 2024-09-06 (second meal) */
  ('2024-09-06','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-06','TJ Almond Milk',1), /* technically opened with first meal but started using in second meal */
  ('2024-09-06','TJ Miso Ginger Broth',1), /* opened with second meal */
  /* Potatoes prep 2024-09-07 (first meal) */
  ('2024-09-07','Gold potatoes 5 lb',0.43),
  ('2024-09-07','TJ Kale',1),
  ('2024-09-07','TJ English Shelled Peas',1),
  ('2024-09-07','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-08','Kite Hill Greek Style Plant-Based Yogurt',1), /* opened with first meal */
  /* Meal prep 2024-09-08 (second meal) */
  ('2024-09-08','Eggplant',1),
  ('2024-09-08','TJ Kale',1),
  ('2024-09-08','Green bell pepper',4),
  ('2024-09-08','Red bell pepper',3), /* 1 extra compared to usual in place of carrots that I didn't have */
  ('2024-09-08','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-08','Morton Iodized Salt',1), /* this might be off by a day (so actual value may be 2024-09-07) */
  /* Rice prep 2024-09-09 (second meal) */
  ('2024-09-09','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Lentils prep 2024-09-10 (soaked first meal to cook and eat with second meal) */
  ('2024-09-10','TJ Green Lentils',0.2), /* much smaller quantity than usual, as I am gingerly trying lentils in light of previous bad experience where I had to throw a large amount out due to a gassy/flatulent response */
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-10','TJ Miso Ginger Broth',1), /* second meal */
  ('2024-09-10','TJ Roasted Seaweed',1), /* second meal; this is also my first time having this since I started recording; I last had seaweed not bought by me back around 2019 */
  ('2024-09-11','Kite Hill Greek Style Plant-Based Yogurt',1), /* opened with first meal */
  /* Potatoes prep 2024-09-12 (first meal) */
  ('2024-09-12','Gold potatoes 5 lb',0.43),
  ('2024-09-12','TJ Kale',1),
  ('2024-09-12','TJ English Shelled Peas',2),
  ('2024-09-12','Beefsteak tomato',6),
  /* Opened along with potatoes prep as my previous olive oil bottle was over */
  ('2024-09-12','Trader Giotto''s Olive Oil',1),
  /* Rice prep 2024-09-12 (second meal) */
  ('2024-09-12','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-12','TJ Walnuts',1), /* second meal */
  ('2024-09-13','TJ Almond Milk',1), /* first meal */
  /* Lentils prep 2024-09-14 */
  ('2024-09-14','TJ Green Lentils',0.4), /* soaked in morning for cooking in the evening with second meal */
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-14','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  ('2024-09-14','TJ Miso Ginger Broth',1), /* first meal */
  ('2024-09-14','TJ Kimchi',1), /* first meal */
  /* Rice prep 2024-09-15 (first meal) */
  ('2024-09-15','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-15','TJ Sauerkraut',1), /* first meal; planning to alternate this with kimchi */
  /* Meal prep 2024-09-16 (second meal) */
  ('2024-09-16','Eggplant',1),
  ('2024-09-16','TJ Kale',1),
  ('2024-09-16','TJ Carrots',1),
  ('2024-09-16','Green bell pepper',4),
  ('2024-09-16','Red bell pepper',2),
  ('2024-09-16','Beefsteak tomato',6),
  /* Rice prep 2024-09-17 (advance prep for logistical reasons) */
  ('2024-09-17','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-17','TJ Miso Ginger Broth',1), /* second meal */
  ('2024-09-18','TJ Walnuts',1), /* first meal */
  ('2024-09-18','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  /* Takeout food 2024-09-18 */
  ('2024-09-18','Udupi Palace spinach masala dosa',1),
  /* Potatoes prep 2024-09-19 (first meal) */
  ('2024-09-19','Gold potatoes 5 lb',0.43),
  ('2024-09-19','TJ Kale',1),
  ('2024-09-19','TJ English Shelled Peas',1.8), /* about 20% of one packet was lost due to peas scattering after an aggressive open */
  ('2024-09-19','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-19','TJ Roasted Seaweed',1), /* first meal */
  ('2024-09-19','TJ Carb Savvy Tortillas',1), /* second meal */
  ('2024-09-20','TJ Almond Milk',1), /* first meal */
  ('2024-09-21','TJ Miso Ginger Broth',1), /* first meal */
  ('2024-09-22','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  /* Rice prep 2024-09-22 (second meal) */
  ('2024-09-22','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-22','TJ Roasted Seaweed',1), /* second meal */
  ('2024-09-24','TJ Miso Ginger Broth',1), /* first meal; my consumption rate for miso ginger broth has been higher than in the past as I have paused sauerkraut and walnuts consumption */
  /* Potatoes prep 2024-09-24 (second meal) */
  ('2024-09-24','Gold potatoes 5 lb',0.43),
  ('2024-09-24','TJ Kale',1),
  ('2024-09-24','TJ English Shelled Peas',2),
  ('2024-09-24','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-24','Kite Hill Greek Style Plant-Based Yogurt',1), /* second meal; my consumption rate for yogurt has been higher than in the past as I have paused sauerkraut and walnuts consumption */
  ('2024-09-24','TJ Roasted Seaweed',1), /* second meal; my consumption rate for yogurt has been higher than in the past as I have paused sauerkraut and walnuts consumption */
  /* Meal prep 2024-09-25 (second meal) */
  ('2024-09-25','Eggplant',1),
  ('2024-09-25','TJ Kale',1),
  ('2024-09-25','TJ Carrots',1),
  ('2024-09-25','Green bell pepper',4),
  ('2024-09-25','Red bell pepper',2),
  ('2024-09-25','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-25','TJ Almond Milk',1),
  ('2024-09-25','TJ Carb Savvy Tortillas',1),
  /* Rice prep 2024-09-26 (first meal) */
  ('2024-09-26','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-09-26','TJ Miso Ginger Broth',1),
  ('2024-09-28','TJ Roasted Seaweed',1),
  ('2024-09-28','Kite Hill Greek Style Plant-Based Yogurt',1),
  /* Lentils prep 2024-09-28 (overnight soaking in the evening for cooking and eating the next day) */
  ('2024-09-28','TJ Green Lentils',0.32),
  /* Rice prep 2024-09-29 (second meal) */
  ('2024-09-29','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-09-30 (first meal) */
  ('2024-09-30','Gold potatoes 5 lb',0.43),
  ('2024-09-30','TJ Kale',1),
  ('2024-09-30','TJ English Shelled Peas',0.9),
  ('2024-09-30','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-01','TJ Walnuts',1), /* first meal */
  ('2024-10-01','TJ Miso Ginger Broth',1), /* first meal */
  ('2024-10-01','TJ Almond Milk',1), /* second meal */
  ('2024-10-01','TJ Roasted Seaweed',1), /* second meal */
  ('2024-10-01','Kite Hill Greek Style Plant-Based Yogurt',1), /* second meal */
  /* Rice prep 2024-10-03 (first meal) */
  ('2024-10-03','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-10-03 (second meal) */
  ('2024-10-03','Gold potatoes 5 lb',0.43),
  ('2024-10-03','TJ Kale',1),
  ('2024-10-03','TJ English Shelled Peas',2),
  ('2024-10-03','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-03','TJ Miso Ginger Broth',1), /* second meal */
  ('2024-10-03','TJ Roasted Seaweed',1), /* second meal */
  ('2024-10-03','TJ Carb Savvy Tortillas',1), /* second meal */
  /* Meal prep 2024-10-04 (second meal) */
  ('2024-10-04','Eggplant',1),
  ('2024-10-04','TJ Kale',1),
  ('2024-10-04','TJ Carrots',1),
  ('2024-10-04','Green bell pepper',4),
  ('2024-10-04','Red bell pepper',2),
  ('2024-10-04','Beefsteak tomato',6),
  /* Lentils prep 2024-10-05 (overnight soaking for consumption the next day) */
  ('2024-10-05','Wild Harvest Organic Lentils',0.45),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-06','TJ Turmeric',1), /* completing the lentils prep (first meal) */
  ('2024-10-06','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  ('2024-10-06','TJ Almond Milk',1), /* first meal */
  /* Rice prep 2024-10-06 (second meal) */
  ('2024-10-06','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-06','TJ Roasted Seaweed',1), /* second meal */
  ('2024-10-07','TJ Miso Ginger Broth',1), /* second meal */
  /* Potatoes prep 2024-10-09 (second meal) */
  ('2024-10-09','Gold potatoes 5 lb',0.43),
  ('2024-10-09','TJ Kale',1),
  ('2024-10-09','TJ English Shelled Peas',2),
  ('2024-10-09','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-09','TJ Carb Savvy Tortillas',1), /* second meal */
  ('2024-10-10','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  ('2024-10-10','TJ Roasted Seaweed',1), /* first meal */
  /* Rice prep 2024-10-10 (second meal) */
  ('2024-10-10','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-10','TJ Carb Savvy Tortillas',1), /* second meal */
  ('2024-10-11','TJ Miso Ginger Broth',1), /* first meal */
  /* Meal prep 2024-10-11 (second meal) */
  ('2024-10-11','Eggplant',1),
  ('2024-10-11','TJ Kale',1),
  ('2024-10-11','TJ Carrots',1),
  ('2024-10-11','Green bell pepper',4),
  ('2024-10-11','Red bell pepper',2),
  ('2024-10-11','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-12','TJ Almond Milk',1),
  /* Lentils prep 2024-10-12 (overnight soaking to cook and eat the next day) */
  ('2024-10-12','Wild Harvest Organic Lentils',0.55),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-13','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal; rate of consumption is expected to go down with the reintroduction of walnuts and sauerkraut */
  ('2024-10-13','TJ Roasted Seaweed',1), /* first meal; rate of consumption is expected to go down as I switch back to once per day, with the reintroduction of walnuts and sauerkraut */
  /* Rice prep 2024-10-14 (first meal) -- there was still some rice left from the previous prep, but for logistical reasons I wanted to cook rice in the morning instead of the evening */
  ('2024-10-14','Lundberg Sustainable California White Basmati Rice',0.8),
  /* Potatoes prep 2024-10-14 (second meal) */
  ('2024-10-14','Gold potatoes 5 lb',0.43),
  ('2024-10-14','TJ Kale',1),
  ('2024-10-14','TJ English Shelled Peas',2),
  ('2024-10-14','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-15','TJ Walnuts',1), /* first meal */
  /* Lentils prep 2024-10-15 (overnight soaking to cook and eat the next day) */
  ('2024-10-15','Wild Harvest Organic Lentils',0.55),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-16','TJ Miso Ginger Broth',1), /* first meal */
  ('2024-10-16','Kite Hill Greek Style Plant-Based Yogurt',1), /* second meal */
  ('2024-10-17','TJ Carb Savvy Tortillas',1), /* second meal */
  ('2024-10-18','TJ Carb Savvy Tortillas',1), /* second meal */
  /* Meal prep 2024-10-18 (second meal) */
  ('2024-10-18','Eggplant',1),
  ('2024-10-18','TJ Kale',1),
  ('2024-10-18','TJ Carrots',1),
  ('2024-10-18','Green bell pepper',4),
  ('2024-10-18','Red bell pepper',2),
  ('2024-10-18','Beefsteak tomato',6),
  /* Rice prep 2024-10-19 (second meal) -- greater-than-usual gap from previous rice prep is due to consumption of two packs of tortillas in the interim */
  ('2024-10-19','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-19','Kite Hill Greek Style Plant-Based Yogurt',1), /* second meal */
  ('2024-10-19','TJ Roasted Seaweed',1), /* second meal */
  ('2024-10-20','TJ Miso Ginger Broth',1), /* first meal */
  /* Potatoes prep 2024-10-20 (second meal) */
  ('2024-10-20','Gold potatoes 5 lb',0.43),
  ('2024-10-20','TJ Kale',1),
  ('2024-10-20','TJ English Shelled Peas',2),
  ('2024-10-20','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-21','TJ Almond Milk',1),
  /* Lentils prep 2024-10-21 (overnight soaking to cook and eat the next day) */
  ('2024-10-21','Wild Harvest Organic Lentils',0.45),
   /* New bottle/packet openings as the old ones finished */
  ('2024-10-22','TJ Cumin',1), /* included as seasoning on lentils prep when cooking it */
  ('2024-10-22','TJ Roasted Seaweed',1), /* first meal */
  ('2024-10-22','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal */
  /* Rice prep 2024-10-22 (second meal) */
  ('2024-10-22','Lundberg Sustainable California White Basmati Rice',0.8),
  ('2024-10-22','TJ Turmeric',1), /* opened as part of rice prep; coincidence that I opened a new cumin bottle earlier in the day for lentils prep! */
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-22','TJ Miso Ginger Broth',1), /* second meal */
  ('2024-10-23','TJ Carb Savvy Tortillas',1), /* second meal */
  /* Potatoes prep 2024-10-24 */
  ('2024-10-24','Gold potatoes 5 lb',0.43),
  ('2024-10-24','TJ Kale',1),
  ('2024-10-24','TJ English Shelled Peas',2),
  ('2024-10-24','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-24','TJ Roasted Seaweed',1), /* second meal */
  ('2024-10-24','Kite Hill Greek Style Plant-Based Yogurt',1), /* second meal */
  ('2024-10-24','TJ Carb Savvy Tortillas',1), /* second meal */
  /* Meal prep 2024-10-25 (second meal) */
  ('2024-10-25','Eggplant',1),
  ('2024-10-25','TJ Kale',1),
  ('2024-10-25','TJ Carrots',1),
  ('2024-10-25','Green bell pepper',4),
  ('2024-10-25','Red bell pepper',2),
  ('2024-10-25','Beefsteak tomato',6),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-25','Trader Giotto''s Olive Oil',1), /* opened for meal prep documented above */
  ('2024-10-25','TJ Carb Savvy Tortillas',1), /* second meal */
  ('2024-10-25','TJ Miso Ginger Broth',1), /* second meal */
  ('2024-10-26','TJ Carb Savvy Tortillas',1), /* second meal */
  /* Rice prep 2024-10-27 (first meal) */
  ('2024-10-27','Lundberg Sustainable California White Basmati Rice',0.8),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-27','Kite Hill Greek Style Plant-Based Yogurt',1), /* first meal -- included finishing up the old container for half of the meal */
  /* Lentils prep 2024-10-28 (overnight soaking to cook and eat tomorrow) */
  ('2024-10-28','TJ Green Lentils',0.5),
  /* New bottle/packet openings as the old ones finished */
  ('2024-10-29','TJ Roasted Seaweed',1);
  /* Double-check the date before committing */
