create table pulse_oximeter_readings(
  reading_date date,
  index_within_reading_date integer,
  finger enum('right index finger','left index finger'),
  duration_in_seconds integer,
  heart_rate_min_bpm integer,
  heart_rate_max_bpm integer,
  spo2_min integer,
  spo2_max integer,
  notes varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into pulse_oximeter_readings(reading_date, index_within_reading_date, finger, duration_in_seconds, heart_rate_min_bpm, heart_rate_max_bpm, spo2_min, spo2_max, notes) values
  /* 2024-07-13 */
  ('2024-07-13',1,'right index finger',120,42,51,94,97,'This reading was taken the morning after my Tdap vaccine booster dose, from 10:14:00 AM to 10:16:00 AM, with the start happening about 30-45 seconds after I put my finer in the pulse oximeter. Associated blood pressure + heart rate readings taken a few minutes prior were 92/63/46 and 97/65/48, so the heart rate range is consistent with those values. The measured heart rate started out around the middle of the range (45-48 bpm) then went up briefly to 51 bpm and later went down briefly to 42 bpm.');
