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
  ('2024-08-24',1,311,1,1.5,0.7,'This reading, taken at 5:11 PM, was my first reading with the device. I had finished my first meal consumption that day at around noon (12 PM). My last water consumption was at around 5 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',2,70,2,1.2,0.0,'This reading, taken at 7:40 PM, was my first post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption was at around 7:10 PM. At the time of this reading, I did not have any noticeable bloating, gas, or stomach rumble, though I had had off-and-on mild abdominal pain.'),
  ('2024-08-24',3,135,2,0.5,4.1,'This reading, taken at 8:45 PM, was my second post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 8:20 PM. At the time of this reading, I had started experiencing small amounts of gas, and continued to have mild abdominal pain, but I did not experience bloating or stomach rumble.'),
  ('2024-08-24',4,209,2,1.6,8.3,'This reading, taken at 9:59 PM, was my third post-dinner reading. I had finished dinner around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up. My last water consumption and my last urination were at around 9:20 PM. At the time of this reading, I had stopped having noticeable gas, and did not have any noticeable bloating or stomach rumble. There continued to be mild off-and-on abdominal pain.'),
  /* 2024-08-25 */
  ('2024-08-25',1,853,0,0.5,0.0,'This reading, taken at 8:43 AM, was taken about 20 minutes after completing my morning bowel movement and before eating anything for the day. I do not remember having drunk any water between the bowel movement and the reading, though I did brush my teeth after the bowel movement. I had finished dinner the previous day around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up.'),
  ('2024-08-25',2,980,0,0.4,0.0,'This reading, taken at 10:50 AM, was taken about an hour after returning from exercise and about 55 minutes after I last drank water. It was still before my first meal. I had finished dinner the previous day around 6:25 PM but had a little followup food at around 6:30 PM when cleaning up.'),
  ('2024-08-25',3,345,1,1.4,0.0,'This reading, taken at 6:17 PM, was taken about 5 hours 45 minutes after I finished eating my first meal, which was at 12:32 PM. I had attempted to take additional readings in the interim but my exhale hadn''t been recognized at the time, which might have been due to technical issues. So, I don''t have data for intermediate data points.'),
  /* 2024-08-26 */
  ('2024-08-26',1,203,1,0.2,0.0,'This reading, taken at 3:45 PM, was taken about 3 hours 23 minutes after I finished eating my first meal, which was at 12:32 PM. I had attempted to take a reading at 2:15 PM but it had not worked, so this is my first reading of the day.'),
  /* 2024-09-04 */
  ('2024-09-04',1,91,1,0.6,2.3,'This reading, taken at 2:11 PM, was taken about 1.5 hours after I finished eating my first meal, which was at 12:40 PM. This was my first reading with the new FoodMarble Aire 2 device after I replaced the device as a result of my previous device no longer working.'),
  ('2024-09-04',2,183,1,0.4,0.8,'This reading, taken at 3:43 PM, was taken about 3 hours after I finished eating my first meal, which was at 12:40 PM. This was a followup reading to the previous reading, and showed a subsiding of the overall fermentation activity, but the same relative pattern of hydrogen and methane as the previous reading.'),
  /* 2024-09-05 */
  ('2024-09-05',1,867,0,0.7,0.5,'This reading, taken at 9:17 AM, was before eating any food in the morning. I had finished my meal last night at 6:50 PM. At the time of the reading, I was experiencing a little bit of stomach rumble which seems likely driven by a supplement, but otherwise feeling fine.'),
  ('2024-09-05',2,141,1,0.3,1.8,'This reading, taken at 3:41 PM, was a little over 2 hours after finishing my meal, which I estimate to have been at around 1:20 PM. At the time of the reading, I was still experiencing traces of stomach rumble and flatulence from the morning but they were receding, and seemed unrelated to the recent meal consumption.');
