create table broad_food_types(
  `broad_food_type` varchar(200) primary key not null,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into broad_food_types(broad_food_type, notes) values
  ('White rice','Simple food that is easy to digest and mostly rich in carbohydrates'),
  ('Brown rice','Slight variant of white rice that has more vitamin nutrition and fiber but may have more contaminants and may be harder to digest'),
  ('Semolina','Wheat in a granular form that can be cooked like rice (daliya, couscous)'),
  ('Whole wheat tortilla','Whole wheat in a form factor of a tortilla, roti, naan, or something similar; rich in carbohydrates and proteins'),
  ('Non-whole wheat tortilla','Non-whole wheat in a form factor of a tortilla, roti, naan, or something similar; rich in carbohydrates and proteins'),
  ('Wheat bread','Wheat in a sliced bread form'),
  ('Tomato','Rich in Vitamin C and good for umami, has more sugar than most vegetables though less than some fruits; a nightshade'),
  ('Bell pepper','Rich in vitamins and minerals; a nightshade'),
  ('Eggplant','Rich in vitamins and minerals; a nightshade'),
  ('Carrot','Rich in vitamin A in particular and other stuff in general'),
  ('Spinach','Rich in vitamins and minerals and omega-3; main downside is that it is high in oxalate'),
  ('Kale','Rich in vitamins and minerals and omega-3; a superfood with few downsides'),
  ('Potato','Rich in complex carbohydrates and proteins'),
  ('Pea','Rich in proteins'),
  ('Bean','Substitute for pea'),
  ('Broccoli','Nutritious thing'),
  ('Almond milk','Rich in added calcium and vitamins A and D'),
  ('Walnut','Rich in omega-3 and my main source of invisible fat'),
  ('Almond','An alternative nut to walnuts when I am not able to procure walnuts'),
  ('Olive oil','Rich in monounsaturated fat and my main source of visible fat'),
  ('Sauerkraut / Kimchi','Fermented cabbage, mainly for probiotic effects; ideal as a probiotic when I am feeling well'),
  ('Vegan probiotic yogurt','Yogurt based on almond, coconut, or a combination, and with probiotics; ideal as a probiotic when I have an upset stomach'),
  ('Table salt','NaCl, possibly with some small amounts of iodine or other things added'),
  ('Lentils','Rich in a variety of proteins'),
  ('Seafood','Stuff like seaweed and algae; good wth iodine, salt, and prebiotics for butyrate (SCFA) production');
