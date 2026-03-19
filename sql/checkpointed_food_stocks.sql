create table checkpointed_food_stocks(
  measurement_date date,
  number_of_meals_consumed_by_measurement_time integer,
  food_type varchar(200),
  unopened_stock decimal(8,4),
  partially_opened_stock integer,
  primary key (measurement_date, number_of_meals_consumed_by_measurement_time, food_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into checkpointed_food_stocks(measurement_date, number_of_meals_consumed_by_measurement_time, food_type, unopened_stock, partially_opened_stock) values
  /* This is the stock I left in the refrigerator before leaving for India, and therefore
     also the stock that I had upon returning. This is based on a mix of memory and photos I
     took before leaving. */
  /* Rice and tortillas */
  ('2025-06-07',1,'Lundberg Sustainable California White Basmati Rice',1.9,0), /* 0.9 in fridge, 1 in freezer -- per photo taken 2025-05-02 and data entry on 2025-06-07 */
  ('2025-06-07',1,'Lundberg Sustainable California White Jasmine Rice',3,0), /* 3 in freezer -- per photo taken 2025-05-02 */
  /* Almond milk */
  ('2025-06-07',1,'TJ Almond Milk',1,0), /* verified from photo taken 2025-05-02 */
  /* Miso ginger broth */
  ('2025-06-07',1,'TJ Miso Ginger Broth',2,0), /* verified from photo taken 2025-05-02 */
  /* Sauerkraut */
  ('2025-06-07',1,'TJ Sauerkraut',1,0), /* verified from photo taken 2025-05-02 */
  /* Vegan probiotic yogurt */
  ('2025-06-07',1,'Kite Hill Greek Style Plant-Based Yogurt',1,0), /* verified from photo taken 2025-05-02 */
  /* Seaweed */
  ('2025-06-07',1,'TJ Roasted Seaweed',3,0), /* verified from photo taken 2025-05-02 */
  /* Lentils */
  ('2025-06-07',1,'TJ Green Lentils',3.5,0), /* not clearly visible in photo taken 2025-05-02, but verified based on subsequent discarding */
  /* Vegetables -- didn't leave any */
  /* Nuts, olive oil, and condiments */
  ('2025-06-07',1,'TJ Walnuts',3,1), /* 1 opened in fridge and 3 unopened in freezer -- verified from photo taken 2025-05-02, but unopened stock not totally clear */
  ('2025-06-07',1,'TJ Almonds',1,1), /* 1 opened in fridge and 1 unopened in freezer -- only for backup consumption so still the same as of data entry on 2026-03-18 */
  ('2025-06-07',1,'TJ Brazil Nuts',0,1), /* 1 opened in fridge -- weekly 1 nut consumption so still the same as of data entry on 2026-03-18 */
  ('2025-06-07',1,'TJ Turmeric',4,1), /* no photo, but opened stock from openings data and the rest based on normal practice */
  ('2025-06-07',1,'TJ Cumin',4,1), /* no photo, but opened stock from openings data and the rest based on normal practice */
  ('2025-06-07',1,'TJ Cinnamon',1,0), /* not including the 1 opened cinnamon at the time since it had been opened before I started recording openings */
  ('2025-06-07',1,'Trader Giotto''s Olive Oil',3,1), /* no photo, but opened stock from openings data and the rest based on normal practice */
  ('2025-06-07',1,'Morton Iodized Sea Salt',0,1); /* no photo, but opened stock from openings data and assumed no additional stock */
