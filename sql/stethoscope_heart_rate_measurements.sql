create table stethoscope_heart_rate_measurements(
  measurement_date date,
  index_within_measurement_date integer,
  unusual_circumstances boolean,
  heart_rate_bpm integer,
  notes varchar(2000),
  primary key (measurement_date, index_within_measurement_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into stethoscope_heart_rate_measurements(measurement_date, index_within_measurement_date, unusual_circumstances, heart_rate_bpm, notes) values
  ('2025-12-20',1,true,80,'This measurement was taken shortly after indoor jogging and strength exercises. The heart rate was very consist, at 4 beats every 3 seconds. Both the high heart rate and consistency are expected consequences of the measurement being taken after exercise.'),
  ('2026-03-25',1,false,61,'This was the first of two 1-minute measurements taken on 2026-03-25 as part of stethoscope checklist execution. Both measurements were taken before eating or exercise.'),
  ('2026-03-25',2,false,63,'This was the second of two 1-minute measurements taken on 2026-03-25 as part of stethoscope checklist execution. Both measurements were taken before eating or exercise.');
