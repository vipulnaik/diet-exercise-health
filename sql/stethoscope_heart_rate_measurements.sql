create table stethoscope_heart_rate_measurements(
  measurement_date date,
  index_within_measurement_date integer,
  unusual_circumstances boolean,
  heart_rate_bpm integer,
  notes varchar(2000),
  primary key (measurement_date, index_within_measurement_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into stethoscope_heart_rate_measurements(measurement_date, index_within_measurement_date, unusual_circumstances, heart_rate_bpm, notes) values
  /* 2025-12-20 */
  ('2025-12-20',1,true,80,'This measurement was taken shortly after indoor jogging and strength exercises. The heart rate was very consist, at 4 beats every 3 seconds. Both the high heart rate and consistency are expected consequences of the measurement being taken after exercise.'),
  /* 2026-03-25 */
  ('2026-03-25',1,false,61,'This was the first of two 1-minute measurements taken on 2026-03-25 as part of stethoscope checklist execution. Both measurements were taken before eating or exercise.'),
  ('2026-03-25',2,false,63,'This was the second of two 1-minute measurements taken on 2026-03-25 as part of stethoscope checklist execution. Both measurements were taken before eating or exercise.'),
  /* 2026-04-08 */
  ('2026-04-08',1,false,66,'This was the first of three 1-minute measurements taken on 2026-04-08 between 12:40 PM and 12:45 PM as part of stethoscope checklist execution. All measurements were taken before eating or exercise, and after being in a seated position for a little over 40 minutes. There was reasonable variability in heart rate over the course of the minute. I held the stethoscope with my left hand. The indoor temperature at the time of the readings was 71 degrees Fahrenheit.'),
  ('2026-04-08',2,false,66,'This was the second of three 1-minute measurements taken on 2026-04-08 between 12:40 PM and 12:45 PM as part of stethoscope checklist execution. All measurements were taken before eating or exercise, and after being in a seated position for a little over 40 minutes. There was reasonable variability in heart rate over the course of the minute. I held the stethoscope with my left hand. The indoor temperature at the time of the readings was 71 degrees Fahrenheit.'),
  ('2026-04-08',3,false,63,'This was the third of three 1-minute measurements taken on 2026-04-08 between 12:40 PM and 12:45 PM as part of stethoscope checklist execution. All measurements were taken before eating or exercise, and after being in a seated position for a little over 40 minutes. There was reasonable variability in heart rate over the course of the minute. I held the stethoscope with my right hand. The indoor temperature at the time of the readings was 71 degrees Fahrenheit.'),
  ('2026-04-08',4,false,69,'This was a followup 1-minute measurement taken on 2026-04-08 around 12:53 PM after the three main 1-minute measurements. Unlike the other measurements, this time I had recently gotten up to check the temperature, and then struggled a little bit with the stethoscope since the sound direction flipped from chest to diaphram without me noticing.');
