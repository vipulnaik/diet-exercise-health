create table foodmarble_aire_2_breath_tests(
  reading_date date,
  index_within_reading_date integer,
  minutes_since_last_food_consumption integer,
  number_of_meals_consumed_so_far_in_day integer,
  /* for the two fermentation score values below, the estimated ppm value is 5 times the fermentation score if fermentation score is between 0 and 8, and grows superlinearly (and faster than 5x) beyond 8 */
  hydrogen_fermentation_score decimal(3,1), /* diagnostic threshold for SIBO with a proper prep diet and timed tests is: >= 20 ppm (aka 4 points in fermentation score) increase from baseline within the first 2 hours */
  methane_fermentation_score decimal(3,1), /* diagnostic threshold for IMO with a proper prep diet and timed tests is: >= 10 ppm (aka 2.0 fermentation score) at any time within the first 2 or 3 hours after eating */
  notes varchar(2000),
  primary key (reading_date, index_within_reading_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into foodmarble_aire_2_breath_tests(reading_date, index_within_reading_date, minutes_since_last_food_consumption, number_of_meals_consumed_so_far_in_day, hydrogen_fermentation_score, methane_fermentation_score, notes) values
  /* 2024-08-24 */
  ('2024-08-24',1,310,1,1.5,0.7,'This reading, taken around 5:10 PM, was my first reading with the device. I had finished my first meal consumption that day at around noon (12 PM). My last water consumption was at around 5 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',2,70,2,1.2,0.0,'This reading, taken around 7:40 PM, was my first post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption was at around 7:10 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',3,135,2,0.5,4.1,'This reading, taken around 8:45 PM, was my second post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 8:20 PM. At the time of this reading, I had started experiencing small amounts of gas, and continued to have mild abdominal pain, but I did not experience bloating or stomach rumble.'),
  ('2024-08-24',4,210,2,1.6,8.3,'This reading, taken around 10 PM, was my third post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 9:20 PM. At the time of this reading, I had stopped having noticeable gas, and did not have any noticeable bloating or stomach rumble. There continued to be mild off-and-on abdominal pain.');
