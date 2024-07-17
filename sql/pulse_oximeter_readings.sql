create table pulse_oximeter_readings(
  reading_date date,
  index_within_reading_date integer,
  finger enum('right index finger','left index finger'),
  duration_in_seconds integer,
  heart_rate_min_bpm integer,
  heart_rate_max_bpm integer,
  spo2_min integer,
  spo2_max integer,
  notes varchar(2000),
  primary key (reading_date, index_within_reading_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into pulse_oximeter_readings(reading_date, index_within_reading_date, finger, duration_in_seconds, heart_rate_min_bpm, heart_rate_max_bpm, spo2_min, spo2_max, notes) values
  /* 2024-07-13 */
  ('2024-07-13',1,'right index finger',120,42,51,94,97,'This reading was taken the morning after my Tdap vaccine booster dose, from 10:14:00 AM to 10:16:00 AM, with the start happening about 30-45 seconds after I put my finer in the pulse oximeter. Associated blood pressure + heart rate readings taken a few minutes prior were 92/63/46 and 97/65/48, so the heart rate range is consistent with those values. The measured heart rate started out around the middle of the range (45-48 bpm) then went up briefly to 51 bpm and later went down briefly to 42 bpm.'),
  ('2024-07-13',2,'right index finger',120,41,51,97,99,'This reading was taken shortly after returning from a brief shopping trip. I felt like my heart was racing a little bit, so I was curious to see what the pulse oximeter would show for this reading compared to the reading earlier in the day. I kept an eye on the data from 11:52:00 AM to 11:54:00 AM. Surprisingly, the heart rate range was very similar to before, but the SpO2 was a little higher.'),
  ('2024-07-17',1,'right index finger',120,76,87,97,97,'This reading was taken a few minutes after returning from my morning jogging. The jogging today was fairly typical: about 1.7 miles jogging and 0.3 miles return walking. The heart rate measurement starts at 11:12:00, a few tens of seconds after I inserted my finger in the pulse oximeter, and continues till 11:14:00. The reading was initially 87 bpm, then went down to aroudn 80 bpm, with a brief dip to 76 bpm. The SpO2 stayed steady at 97%.');
