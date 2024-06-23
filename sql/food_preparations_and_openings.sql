create table food_preparations_and_openings(
  `preparation_or_opening_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(11,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_preparations_and_openings(preparation_or_opening_date, food_type, quantity) values
  /* 2024-05-30 lentils prep */
  ('2024-05-30','TJ Green Lentils',1),
  /* 2024-05-31 rice prep */
  ('2024-05-31','Lundberg Sustainable California White Basmati Rice',0.75),
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
  ('2024-06-07','Lundberg Sustainable California White Basmati Rice',0.75),
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
  ('2024-06-10','Lundberg Sustainable California White Basmati Rice',0.75),
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
  ('2024-06-13','Lundberg Sustainable California White Basmati Rice',0.75),
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
  ('2024-06-17','Lundberg Sustainable California White Basmati Rice',0.75),
  /* Potatoes prep 2024-06-18 */
  ('2024-06-18','Gold potatoes 5 lb',0.30),
  ('2024-06-18','TJ Kale',1),
  ('2024-06-18','TJ Broccoli Florets 12 oz',1),
  ('2024-06-18','TJ English Shelled Peas',3),
  ('2024-06-18','Beefsteak tomato',3),
  /* New bottle openings as the old ones finished */
  ('2024-06-19','TJ Almond Milk',1),
  ('2024-06-19','TJ Miso Ginger Broth',1),
  /* Rice prep 2024-06-20 */
  ('2024-06-20','Lundberg Sustainable California White Basmati Rice',0.75),
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
  ('2024-06-22','TJ Miso Ginger Broth',1);
  /* Double-check the date before committing */
