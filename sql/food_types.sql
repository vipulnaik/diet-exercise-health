create table food_types(
  `short_name` varchar(200) primary key not null,
  `long_name` varchar(200),
  `url` varchar(200),
  `calories` int(11),
  `trans_fat_in_grams` int(11),
  `sodium_in_mg` int(11),
  `total_carb_in_grams` int(11),
  `fiber_in_grams` int(11),
  `sugar_in_grams` int(11),
  `vitamin_a_in_mcg` int(11),
  `vitamin_c_in_mg` int(11),
  `calcium_in_mg` int(11),
  `notes` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into food_types(short_name, long_name, url, calories, trans_fat, sodium, total_carb, fiber, sugar, vitamin_a, vitamin_c, calcium) values
  ('TJ Sauerkraut','Raw & Fermented Trader Joe''s Sauerkraut with Pickled Persian Cucumbers','https://www.traderjoes.com/fearless-flyer/article/5455',85,0,3400,34,17,17,0,0,225,0,'The nutritioon data is extrapolated from the data for the serving size (30g) by scaling up to the total mass (510g). I generally eat this mixed with almond milk across several meals. For Vitamin C, the amount was specified as 15% of daily value for 1 serving; I assumed a daily value of 90 mg for calculations.'),
  ('TJ Almond Milk','Trader Joe'' Almond Beverage Original Unsweetened','http://www.whatsgoodattraderjoes.com/2014/02/trader-joes-non-dairy-almond-beverage.html',315,0,1418,16,8,8,630,0,3544,'The nutrition data is extrapolated from tthe data for the serving size (240ml) by scaling up to the total volume (1.89L), leading to a scaling factor of 7.875. For Vitamin A and calcium, values per serving were specified as a percentage of daily value, rather than in absolute terms. I used the following daily values to get absolute numbers: 800 mcg fo Vitamin A, and 1,000 mg for calcium');
