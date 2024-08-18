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
  /* 2024-07-17 */
  ('2024-07-17',1,'right index finger',120,76,87,97,97,'This reading was taken a few minutes after returning from my morning jogging. The jogging today was fairly typical: about 1.7 miles jogging and 0.3 miles return walking. The heart rate measurement starts at 11:12:00, a few tens of seconds after I inserted my finger in the pulse oximeter, and continues till 11:14:00. The reading was initially 87 bpm, then went down to around 80 bpm, with a brief dip to 76 bpm. The SpO2 stayed steady at 97%.'),
  /* 2024-07-19 */
  ('2024-07-19',1,'right index finger',120,61,69,95,97,'This reading was about an hour after eating; I had gone jogging earlier in the morning. The reading was taken by me in conjunction with the use of a stethoscope (chest side) to listen to my heartbeat. I was using the pulse oximeter mainly to verify that what I was hearing as the heartbeat matched up with what the pulse oximeter showed. I confirmed this was the case. I looked at measurements over a period of about two minutes from 1:57:38 PM onward. The measured value was mostly in the 63-66 bpm range, with a brief spike to 69 bpm and a brief drop to 61 bpm.'),
  /* 2024-07-20 */
  ('2024-07-20',1,'right index finger',120,55,67,96,97,'This reading was taken a few minutes after returning from shopping. As it had been hot and I had subjectively experienced more heart activity, I decided to take this reading. I started recording about a minute after putting my finger in the pulse oximeter, starting 10:33:00 AM and going till 10:35:00 AM. For the most part, the heart rate was in the 59-64 bpm range, but it did dip briefly to 55 bpm and rise briefly to 67 bpm.'),
  /* 2024-07-22 / 2024-07-23 */
  ('2024-07-22',1,'right index finger',60,48,57,97,98,'This reading was taken at night, lying down, at the start of 20-minute relaxation period before going to sleep. I wasn''t looking at a clock when doing this so I don''t know my duration of monitoring for sure.'),
  ('2024-07-23',1,'right index finger',60,50,60,99,100,'This reading was taken about 20 minutes after the previous reading, with a lying-down relaxation period in between. As the previous reading was shortly before midnight, this reading was technically taken the next day. I wasn''t looking at a clock when doing this so I don''t know my duration of monitoring for sure.'),
  /* 2024-07-23 */
  ('2024-07-23',2,'right index finger',60,54,58,98,98,'This reading was taken at night, shortly before getting ready for bed, at the start of a 10-minute relaxation period. I started looking at the measurement at 9:55:00 PM, about 30 seconds after putting the pulse oximeter in.'),
  ('2024-07-23',3,'right index finger',60,55,60,97,98,'This was a followup reading after a 10-minute relaxation period following the previous reading.'),
  /* 2024-07-31 */
  ('2024-07-31',1,'left index finger',120,53,61,97,97,'This was based on a two-minute observation period from 4:54:15 PM to 4:56:15 PM. The heart rate mostly stayed between 54 and 58 bpm, with a brief dive to 53 early on and a brief rise to 61 toward the end.'),
  /* 2024-08-01 */
  ('2024-08-01',1,'left index finger',60,50,62,96,97,'This was based on a one-minute observation period from 2:53:30 PM to 2:54:30 PM. The impetus for the observation is that I felt like my heart was beating faster than usual. The heart rate started out around 54-56 bpm, dropped to 51 bpm, then rose to 62 bpm, then dropped again down to 50 bpm and then went up a little bit.'),
  /* 2024-08-10 */
  ('2024-08-10',1,'right index finger',60,50,58,94,97,'This reading was taken shortly after blood pressure readings. The observation period was from 9:28:15 AM to 9:29:15 AM. My heart rate rose from around 51 bpm (with a brief dip to 50 bpm) to 58 bpm, then came back down to around 51 bpm. My SpO2 dropped from 97% to 95%, then briefly dipped to 94% before returning to 95%.'),
  /* 2024-08-14 */
  ('2024-08-14',1,'right index finger',120,50,55,97,98,'This reading was taken at night; I observed the reading from 10:13:00 PM to 10:15:00 PM. The reading started around and mostly stayed in the range of 52-53 bpm, with occasional drops to 50 bpm and increases to 55 bpm.'),
  /* 2024-08-18 */
  ('2024-08-18',1,'right index finger',120,42,54,99,99,'This reading was taken in the morning about 25 minutes after being seated and working on my computer after my morning bowel movement. The reading was observed from 8:34:00 AM to 8:36:00 AM. Prior the observation, it had dropped from 58 bpm to 50 bpm, with the initial high likely being due to movements involved in putting the pulse oximeter on. During the observation period, it started at 50 bpm, fluctuated arounf 49-51, then briefly rose to 54 bpm, then dropped to around 45-47 bpm. Right near the end of the observation period, it dropped to 42 bpm. My SpO2 started at 100% before the start of the observation period but was at 99% throughout the observation period.');
