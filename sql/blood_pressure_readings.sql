create table blood_pressure_readings(
  reading_date date,
  index_within_reading_date integer,
  measurer enum('self','Tang Eye Center','Milvia Urgent Care'),
  measurement_site enum('left arm','right arm'),
  unusual_circumstances boolean,
  systolic_bp_mm_hg integer,
  diastolic_bp_mm_hg integer,
  heart_rate_bpm integer,
  notes varchar(2000),
  primary key (reading_date, index_within_reading_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into blood_pressure_readings(reading_date, index_within_reading_date, measurer, measurement_site, unusual_circumstances, systolic_bp_mm_hg, diastolic_bp_mm_hg, heart_rate_bpm, notes) values
  ('2021-10-29',1,'Tang Eye Center','right arm',false,102,67,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-10-29-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2023-10-04',1,'Tang Eye Center','right arm',false,108,78,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-10-04-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2024-04-30',1,'Milvia Urgent Care','left arm',true,154,83,NULL,'This reading was taken as part of an urgent care visit. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  ('2024-04-30',2,'Milvia Urgent Care','left arm',true,122,84,82,'This wa a second reading taken as part of an urgent care visit, after the first reading was anomalously high. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  /* 2024-05-15 readings */
  ('2024-05-15',1,'self','left arm',false,111,70,58,'I took this reading around 9:15 AM in the morning. This was a little over an hour after bowel movement and at least 45 minutes after drinking water. I had not eaten any food in the morning (my last meal had been finished about 13 hours prior). I had urinated a few minutes prior to the measurement and was in a seated, resting position between urination and measurement. For most of the hour prior to the measurement (other than the urination and briefly getting up to drink water) I was sitting at my computer watching medical YouTube videos. I also did a pulse oximeter measurement of heart rate shortly before this reading, which yielded a heart rate ranging from 52 to 57 bpm.'),
  ('2024-05-15',2,'self','left arm',false,112,70,48,'This was a second blood pressure reading at around 9:15 AM, taken about a minute after my first blood pressure reading with no significant activity in the interim. See the notes for the first reading for more background.'),
  ('2024-05-15',3,'self','left arm',false,112,75,57,'I took this blood pressure reading around 9:55 AM, shortly after doing hand gripper exercises and two breath hold exercises (45 and 54 seconds respectively). In the time since the least measurement, other than these exercises, I had been mostly resting (seated) and still had not consumed any water. The main difference relative to the previous measurements is the slightly higher diastolic blood pressure.'),
  ('2024-05-15',4,'self','left arm',false,115,75,47,'This was a second reading after the previous blood pressure reading around 9:55 AM. The main difference is a lower heart rate (back to a resting heart rate level) combined with a slightly higher systolic blood pressure. The diastolic reading matched up precisely.'),
  /* 2024-05-25 readings */
  ('2024-05-25',1,'self','left arm',false,100,64,65,'I took this morning reading around 9:18 AM. This was more than an hour after bowel movement and at least 45 minutes after drinking water and urination. I had last gotten up about 40 minutes ago. The ambient temperature was a little colder than usual. The motivation for this reading was the recurrence of abdominal pain yesterday. The higher heart rate compared to subsequent readings may be related to the flurry of movement associated with the initial setup of the blood pressure apparatus.'),
  ('2024-05-25',2,'self','left arm',false,99,66,42,'This was a second blood pressure reading around 9:22 AM, a few minutes after my first blood pressure reading but without removing the cuff or getting up in between.'),
  ('2024-05-25',3,'self','right arm',false,102,55,46,'This reading, taken around 9:26 AM, was the first reading I took on my right arm after taking two consecutive readings on my left arm.'),
  ('2024-05-25',4,'self','right arm',false,102,71,45,'This reading, taken around 9:20 AM, was the second reading I took on my right arm after taking two consecutve readings on my left arm.'),
  ('2024-05-25',5,'self','left arm',true,106,67,45,'I took this reading while seated and a minute after completing standing-on-one-leg-with-eyes-closed exercises on both legs. This was to see the effect of standing on the blood pressure immediately afterward.'),
  ('2024-05-25',6,'self','left arm',true,109,71,47,'I took this reading while in a standing position, but with my hand posture similar to that in the seated posture. This was to see the direct effect of standing on blood pressure.'),
  ('2024-05-25',7,'self','left arm',true,100,62,74,'I took this reading at 11:23 AM, a few minutes after returning from my morning jog + walk. The increased heart rate is likely reflective of the recent exercise, as well as the moving around to set up the machine.'),
  ('2024-05-25',8,'self','left arm',true,101,67,63,'I took this reading at 11:25 AM; it was a repeat reading for the post-exercise reading I had taken at 11:23 AM. The heart rate is still elevated relative to my usual level, but lower than the preceding reading, likely because the previous reading was further affected by moving around to hook up the blood pressure machine.'),
  ('2024-05-25',9,'self','left arm',true,102,65,66,'I took this reading at 7:47 PM, about 5-10 minutes after finishing eating. I had drunk water after eating and then urinated, and returned to a seating position about 1-2 minutes prior to the reading.'),
  ('2024-05-25',10,'self','left arm',true,102,66,60,'This reading, taken around 7:50 PM, was a repeat reading for the preceding reading that I had taken shortly after my meal. The readings were similar on blood pressure, with the heart rate being slightly lower, likely because of having been seated for a little longer.'),
  ('2024-05-25',11,'self','left arm',true,103,69,61,'This reading was taken around 8:28 PM as a 30-60 minute followup after eating. I had been seated for all the time since the previous readings that were taken 5-15 minutes after eating (at 7:50 PM and 7:53 PM).'),
  ('2024-05-25',12,'self','left arm',true,99,62,58,'This reading, taken around 8:30 PM, was a repeat reading for the preceding reading for a 30-60 minute followup after eating.'),
  /* 2024-06-02 */
  ('2024-06-02',1,'self','left arm',true,96,63,55,'This reading, taken around 9:50 AM, was over an hour after eating and about 10 minutes after urinating and drinking water. I took this reading as a benchmark after sleep cycle adjustments and before potential upcoming travel.'),
  ('2024-06-02',2,'self','left arm',true,94,59,54,'This reading, taken around 9:53 AM, was a repeat reading for the previous reading.'),
  /* 2024-06-14 */
  ('2024-06-14',1,'self','left arm',false,104,67,46,'This reading, taken around 9:15 AM, was about 50 minutes after I got to my computer in a seated position after bowel movement/urination and drinking water.'),
  ('2024-06-14',2,'self','left arm',false,101,62,47,'This reading, taken around 9:20 AM, was a repeat reading taken about 5 minutes after the previous reading.'),
  /* 2024-07-11 */
  ('2024-07-11',1,'self','left arm',false,97,61,46,'This reading was taken around 9:33 AM, about 30 minutes after I got to my computer in a seated position after bowel movement/urination. I did not drink water between the bowel movement and taking the reading.'),
  ('2024-07-11',2,'self','left arm',false,94,57,47,'This reading, taken around 9:37 AM, was a repeat reading for the previous reading.'),
  /* 2024-07-13 */
  ('2024-07-13',1,'self','left arm',false,92,63,46,'This reading was taken around 9:49 AM, a little over 30 minutes after I got to my computer in a seated position after bowel movement/urination/drinking water. The motivation for taking this reading was to see if there were any effects of the Tdap vaccine I got yesterday.'),
  ('2024-07-13',2,'self','left arm',false,97,65,48,'This reading, taken around 9:53 AM, was a repeat reading for the previous reading.'),
  /* 2024-07-24 */
  ('2024-07-24',1,'self','left arm',true,102,67,61,'This reading was taken around 7:24 PM, about 40 minutes after I got back to my computer after post-dinner cleanup. The motivation for the reading was my recent abdominal pain issues.'),
  ('2024-07-24',2,'self','left arm',true,103,64,60,'This reading, taken around 7:27 PM, was a repeat reading for the previous reading.'),
  /* 2024-08-10 */
  ('2024-08-10',1,'self','left arm',false,100,64,51,'This reading was taken around 9:24 AM, about an hour after I got back to my computer after my morning bowel movement. This was during the recovery phase from abdominal pain issues.'),
  ('2024-08-10',2,'self','left arm',false,93,56,45,'This reading taken around 9:26 AM, was a repeat reading of the previous reading.'),
  /* 2024-08-27 */
  ('2024-08-27',1,'self','left arm',true,95,62,75,'This reading was taken around 3:04 PM. The high heart rate is consistent with pulse oximeter readings taken around the same time. The rest of the blood pressure reading is fairly normal.'),
  ('2024-08-27',2,'self','left arm',true,91,58,68,'This reading,taken around 3:07 PM, was a repeat of the previous reading.'),
  /* 2024-09-21 */
  ('2024-09-21',1,'self','left arm',false,106,70,49,'This reading, taken around 11:11 AM, was a morning reading before eating or exercise, a little over an hour after bowel movement, and about 30 minutes after I last drank water. I tried to get a pulse oximeter reading a minute prior to this, but the pulse oximeter was acting up and not giving a clear reading.'),
  ('2024-09-21',2,'self','left arm',false,104,69,44,'This reading, taken around 11:12 AM, was a followup reading to the previous reading. The slightly lower values compared to the previous reading may reflect my calming down a little bit after being in that position for a little longer.'),
  ('2024-09-21',3,'self','left arm',true,97,68,45,'This reading, taken around 11:38 AM, was taken about 5 minutes after completing mini-exercises including hand gripper exercises and breath holds, all while seated. It looks like my blood pressure and heart rate were both close to the pre-exercise norm.'),
  ('2024-09-21',4,'self','left arm',true,102,70,46,'This reading, taken around 11:39 AM, was a repeat reading for the previous reading, and showed a similar pattern of normal blood pressure and heart rate.'),
  ('2024-09-21',5,'self','left arm',true,106,67,49,'This reading, taken around 12:02 PM, was right after urination. Its goal was to see if urination would result in a lower blood pressure reading than my preceding readings. However, there was no clear effect, likely because the urine pressure wasn''t too high to begin with.'),
  ('2024-09-21',6,'self','left arm',true,100,64,51,'This reading, taken around 12:03 PM, was a repeat of the previous reading, and showed a similar pattern of normal blood pressure and heart rate.'),
  /* 2024-10-13 */
  ('2024-10-13',1,'self','left arm',false,106,67,53,'This reading, taken around 8:42 AM, was a little over 30 minutes after drinking water, which in turn was shortly after my morning bowel movement. It was prior to any exercise or eating. The heart rate of 53 bpm was within the 49-55 bpm range obtained using my pulse oximeter shortly before taking this reading.'),
  ('2024-10-13',2,'self','left arm',false,100,64,49,'This reading, taken around 8:44 AM, was a repeat reading for the previous reading. The blood pressure and heart rate were similar to, but somewhat lower than, the previous reading (as is typical; generally the second reading is slightly lower). The heart rate of 49 bpm was within the 49-55 bpm range obtained using my pulse oximeter shortly before taking this reading.'),
  /* 2024-11-01 */
  ('2024-11-01',1,'self','left arm',false,99,68,44,'This reading, taken around 9:52 AM, was about 45 minutes after drinking water, which in trun wa shortly after my morning bowel movement. It was prior to any exercise or eating. I had the cuff on for about 5 minutes before I took the reading. I was not able to get an accompanying pulse oximeter reading. Compared to the last few readings, it was colder indoors (about 15-16 degrees Celsius).'),
  ('2024-11-01',2,'self','left arm',false,100,65,47,'This reading, taken around 9:56 AM, was a repeat reading of the previous reading. The two readings were fairly similar.'),
  /* 2024-11-20 */
  ('2024-11-20',1,'self','left arm',false,99,65,46,'This reading, started around 11:38 AM and completed around 11:39 AM, was started about five minutes after having the cuff on my left arm, which was about an hour after bowel movement and drinking water, and about five minutes after I last got up (to change the machine''s batteries). It was somewhat cold indoors (around 15 to 16 degrees Celsius). This was my first reading after the battery change.'),
  ('2024-11-20',2,'self','left arm',false,99,63,46,'This reading, started around 11:45 AM and completed around 11:46 AM, was a repeat reading started around five minutes after the previous reading, with the cuff staying on my arm throughout. The two readings were fairly similar.'),
  /* 2024-12-14 */
  ('2024-12-14',1,'self','left arm',true,102,62,60,'This reading, taken around 4:46 PM, was around 2.5 hours after finishing my first meal at 2:16 PM, almost an hour after I last drank water (I finished drinking water by 3:49 PM), at least 30 minutes of being continuously seated (I got to my seat around 4:10 PM), and at least 1 minute after being in position with the blood pressure cuff on. The blood pressure is pretty comparable to past readings; the heart rate is a little higher than my morning readings but comparable to my afternoon readings.'),
  ('2024-12-14',2,'self','left arm',true,93,60,60,'This reading, taken around 4:53 PM, was a repeat reading of the reading taken 4:46 PM. I kept my blood pressure cuff on for the interval, targeting a 5-minute resting period to get a good repeat reading. The reading was fairly similar to the preceding reading.'),
  /* 2024-12-15 */
  ('2024-12-15',1,'self','left arm',false,98,66,49,'This reading, taken around 11:22 AM, was before eating or exercise in the morning. It was after about 50 minutes of being seated after bowel movement and drinking water. I had the blood pressure cuff on for about 2 minutes before I took the reading. Both the blood pressure and the heart rate reading were fairly normal.'),
  ('2024-12-15',2,'self','left arm',false,93,70,48,'This reading, taken around 11:30 AM, was a repeat reading. I kept the blood pressure cuff on between the previous reading and this reading. The reading was fairly normal and was similar to the previous reading.'),
  /* 2024-12-28 */
  ('2024-12-28',1,'self','left arm',false,95,70,56,'This reading, taken aroud 10:57 AM, was before eating or exercise in the morning. It was after a little over 30 minutes of being seated, and over 40 minutes after my last bowel movement and drinking water.  I had the cuff on for 2 minutes before taking the reading. The measured heart rate is a little higher than usual for morning readings, which might reflect some issues or might just be random variation.'),
  ('2024-12-28',2,'self','left arm',false,99,67,61,'This reading, taken around 11:03 AM, was a repeat of the preceding reading taken after staying for 5 minutes with the cuff on, doing light typing and reading work in the interim. It was fairly similar to the preceding rading, though the heart rate was even higher than before.'),
  /* special readings taken to measure impact of hand gripper use on blood pressure and heart rate; two other readings I took gave the E5 error, including one where I tried to do the 150 lbs in the descent phase as well, and one where I tried to grip with the left hand */
  ('2024-12-28',3,'self','left arm',true,125,82,71,'This reading, taken around 11:16 AM, was a reading under the unusual circumstance of using a hand gripper (150 lbs) with my right hand during the blood pressure reading, specifically when the pressure was being incresed on my left arm. By gripping with my right arm, I was effectively increasing the resistance in my right arm, thereby directing more blood flow elsewhere, which would increase pressure systematically. I let the hand gripper loose during the descent phase of pressure.'),
  ('2024-12-28',4,'self','left arm',true,142,98,89,'This reading, taken around 11:19 AM, was a reading under the unusual circumstance of using a hand gripper (100 lbs) with my right hand, with the gripper crushed for abou 20 seconds including the period of rising pressure and part of the descent phase. By gripping with my right arm, I was effectively increasing the resistance in my right arm, thereby directing more blood flow elsewhere, which would increase pressure systematically.'),
  /* readings taken after at-home jogging + strength exercises */
  ('2024-12-28',5,'self','left arm',true,112,66,73,'This reading, taken around 12:30 PM, was taken after completing morning eercises, including at-home jogging and strength exercises. I completed all exercises around 12:23 PM. I put the cuff on just a few seconds before taking the reading. The blood pressure and heart rate roughly match what I would expect under these conditions.'),
  ('2024-12-28',6,'self','left arm',true,98,64,72,'This reading, taken around 12:36 PM, was a repeat reading of the previous reading taken 12:30 PM. I kept the blood pressure cuff on my arm for the period in between and did light reading and typing work in that time. The lower blood pressure than the previous reading is likely reflective of continued recovery after exercise, which I finished at 12:23 PM. It is similar to a reading I took on 2024-05-25 under similar circumstances.'),
  /* 2025-01-18 */
  ('2025-01-18',1,'self','left arm',false,98,66,58,'This reading, taken around 12:15 PM, was taken about five minutes after putting the blood pressure cuff on my left arm. This was a morning reading before any eating or exercise.'),
  ('2025-01-18',2,'self','left arm',false,101,69,60,'This reading, taken around 12:24 PM, was a repeat reading for the preceding reading, taken after a gap of about 8-9 minutes. The readings were fairly similar.'),
  /* 2025-02-18 */
  ('2025-02-18',1,'self','left arm',false,101,62,53,'This reading, taken around 12:41 PM, was taken about five minutes after putting the blood pressure cuff on my left arm. This was a morning reading before any eating or exercise. I had put the blood pressure cuff on after about 1 hour 15 minutes in a seated, resting position, working on my laptop, and without drinking any water. The indoor temperature at the time of this reading was 61 degrees Fahrenheit.'),
  ('2025-02-18',2,'self','left arm',false,97,64,53,'This reading, taken around 12:47 PM, was a repeat reading for the preceding reading, taken after a gap of about 8-9 minutes. The readings were fairly similar. The indoor temperature at the time of this reading was 61 degrees Fahrenheit.'),
  ('2025-02-18',3,'self','left arm',true,115,67,61,'This reading, taken around 12:50 PM, was taken after my regular readings, having the BP cuff on while I did the hand gripper (150 lbs) in my right hand (gripped for about 31 seconds with slight release from full grip in the last few seconds). I released the hand gripper when the cuff pressure was coming down. The indoor temperature at the time of this reading was 61 degrees Fahrenheit.'),
  ('2025-02-18',4,'self','left arm',true,129,89,89,'This reading, taken around 12:53 PM, was taken after my regular readings, having the BP cuff on while I did the hand gripper (100 lbs) in my right hand (gripped for about 44 seconds covering the entire period of cuff pressure rise and fall, and then a few more seconds). The indoor temperature at the time of this reading was 61 degrees Fahrenheit.'),
  /* 2025-03-11 */
  ('2025-03-11',1,'self','left arm',false,94,69,53,'This reading, taken around 12:56 PM, was taken about five minutes after putting the blood pressure cuff on my left arm. This was a morning reading before any eating or exercise. I had put the blood pressure cuff on after about 1 hour in a seated, resting position, working on my laptop, and without drinking any water. The indoor temperature at the time of the reading was about 65 degrees Fahrenheit (having risen from 60 degrees Fahrenheit over the past two hours).'),
  ('2025-03-11',2,'self','left arm',false,98,68,48,'This reading, taken around 1:01 PM, was a repeat reading for the preceding reading, taken after a gap of about 5 minutes. The readings were fairly similar. The indoor temperature at the time of the reading was about 65 degrees Fahrenheit (having risen from 60 degrees Fahrenheit over the past two hours).');
