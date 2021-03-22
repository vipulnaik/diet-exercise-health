create table food_types(
  `short_name` varchar(200) primary key not null,
  `long_name` varchar(200),
  `url` varchar(200),
  `calories` int(11),
  `total_fat_in_grams` int(11),
  `saturated_fat_in_grams` int(11),
  `trans_fat_in_grams` int(11),
  `cholesterol_in_mg` int(11),
  `sodium_in_mg` int(11),
  `potassium_in_mg` int(11),
  `total_carb_in_grams` int(11),
  `fiber_in_grams` int(11),
  `sugars_in_grams` int(11),
  `protein_in_grams` int(11),
  `vitamin_a_in_mcg` int(11),
  `vitamin_c_in_mg` int(11),
  `vitamin_d_in_mcg` int(11),
  `calcium_in_mg` int(11),
  `iron_in_mg` int(11),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into food_types(short_name, long_name, url, calories, total_fat_in_grams, saturated_fat_in_grams, trans_fat_in_grams, cholesterol_in_mg, sodium_in_mg, potassium_in_mg, total_carb_in_grams, fiber_in_grams, sugars_in_grams, protein_in_grams, vitamin_a_in_mcg, vitamin_c_in_mg, vitamin_d_in_mcg, calcium_in_mg, iron_in_mg, notes) values
  ('TJ Sauerkraut','Raw & Fermented Trader Joe''s Sauerkraut with Pickled Persian Cucumbers','https://www.traderjoes.com/fearless-flyer/article/5455',85,0,0,0,0,3400,0,34,17,17,0,0,0,0,225,0,'The nutrition data is extrapolated from the data for the serving size (30g) by scaling up to the total mass (510g). I generally eat this mixed with almond milk across several meals. For Vitamin C, the amount was specified as 15% of daily value for 1 serving; I assumed a daily value of 90 mg for calculations.'),
  ('TJ Almond Milk','Trader Joe'' Almond Beverage Original Unsweetened','http://www.whatsgoodattraderjoes.com/2014/02/trader-joes-non-dairy-almond-beverage.html',236,20,0,0,0,1260,275,8,8,8,8,708,0,39,3071,3,'The nutrition data is extrapolated from tthe data for the serving size (240ml) by scaling up to the total volume (1.89L), leading to a scaling factor of 7.875. For Vitamin A and calcium, values per serving were specified as a percentage of daily value, rather than in absolute terms. I used the following daily values to get absolute numbers: 800 mcg fo Vitamin A, and 1,000 mg for calcium. Note that the data shown in the link is a bit outdated; in particular, the calories are now lower (30 per serving instead of 40).'),
  ('TJ Whole Wheat Wraps','Trader Joe''s Organic Olive Oil Whole Wheat Wraps','https://www.fooducate.com/product/Trader-Joe-s-Whole-Wheat-Wraps-Olive-Oil/D7FB0082-5D10-11E0-A55F-1231380C180E',1020,18,0,0,0,2100,540,192,18,0,36,0,0,0,660,8,'The dietary information in the link seems a little outdated compared to what I see on the actual item. There are 6 wraps and the information in both places is per wrap, so I am multiplying by 6.'),
  ('TJ Misal Curry','Trader Joe''s Misal Curry with Brown Rice: Sprouted Beans in a Spicy Curry Sauce','http://www.whatsgoodattraderjoes.com/2021/01/trader-joes-misal-curry.html',420,17,8,0,0,970,350,44,15,0,23,0,0,0,40,0,'The dietary information in the link matches what I see on the actual item, but the link cuts off the information on vitamin D, calcium, iron, and potassium. Since the serving size used is the entire package, we did not need to use a multiplier.'),
  ('TJ Veg Biryani','Trader Joe''s Vegetable Biryani with Vegetable Dumplings','http://www.whatsgoodattraderjoes.com/2014/07/trader-joes-vegetable-biryani.html',420,12,2,0,5,1370,480,72,12,5,10,0,0,0,60,2,'The dietary information in the link is somewhat outdated. I used the information from an actual item. The information there includes a column for total value per container; I used that instead of using the column for value per serving size and multiplying.');
  -- ('Beefsteak tomato','Trader Joe''s beefsteak tomato','http://www.fitbit.com/foods/Tomato+Raw+Beefsteak+Large+13+oz+/185301',70,0,0,
