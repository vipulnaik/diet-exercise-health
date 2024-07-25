create table blood_pressure_readings(
  reading_date date,
  index_within_reading_date integer,
  measurer enum('self','Tang Eye Center','Milvia Urgent Care'),
  measurement_site enum('left arm','right arm'),
  systolic_bp_mm_hg integer,
  diastolic_bp_mm_hg integer,
  heart_rate_bpm integer,
  notes varchar(2000),
  primary key (reading_date, index_within_reading_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into blood_pressure_readings(reading_date, index_within_reading_date, measurer, measurement_site, systolic_bp_mm_hg, diastolic_bp_mm_hg, heart_rate_bpm, notes) values
  ('2021-10-29',1,'Tang Eye Center','right arm',102,67,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-10-29-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2023-10-04',1,'Tang Eye Center','right arm',108,78,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-10-04-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2024-04-30',1,'Milvia Urgent Care','left arm',154,83,NULL,'This reading was taken as part of an urgent care visit. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  ('2024-04-30',2,'Milvia Urgent Care','left arm',122,84,82,'This wa a second reading taken as part of an urgent care visit, after the first reading was anomalously high. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  /* 2024-05-15 readings */
  ('2024-05-15',1,'self','left arm',111,70,58,'I took this reading around 9:15 AM in the morning. This was a little over an hour after bowel movement and at least 45 minutes after drinking water. I had not eaten any food in the morning (my last meal had been finished about 13 hours prior). I had urinated a few minutes prior to the measurement and was in a seated, resting position between urination and measurement. For most of the hour prior to the measurement (other than the urination and briefly getting up to drink water) I was sitting at my computer watching medical YouTube videos. I also did a pulse oximeter measurement of heart rate shortly before this reading, which yielded a heart rate ranging from 52 to 57 bpm.'),
  ('2024-05-15',2,'self','left arm',112,70,48,'This was a second blood pressure reading at around 9:15 AM, taken about a minute after my first blood pressure reading with no significant activity in the interim. See the notes for the first reading for more background.'),
  ('2024-05-15',3,'self','left arm',112,75,57,'I took this blood pressure reading around 9:55 AM, shortly after doing hand gripper exercises and two breath hold exercises (45 and 54 seconds respectively). In the time since the least measurement, other than these exercises, I had been mostly resting (seated) and still had not consumed any water. The main difference relative to the previous measurements is the slightly higher diastolic blood pressure.'),
  ('2024-05-15',4,'self','left arm',115,75,47,'This was a second reading after the previous blood pressure reading around 9:55 AM. The main difference is a lower heart rate (back to a resting heart rate level) combined with a slightly higher systolic blood pressure. The diastolic reading matched up precisely.'),
  /* 2024-05-25 readings */
  ('2024-05-25',1,'self','left arm',100,64,65,'I took this morning reading around 9:18 AM. This was more than an hour after bowel movement and at least 45 minutes after drinking water and urination. I had last gotten up about 40 minutes ago. The ambient temperature was a little colder than usual. The motivation for this reading was the recurrence of abdominal pain yesterday. The higher heart rate compared to subsequent readings may be related to the flurry of movement associated with the initial setup of the blood pressure apparatus.'),
  ('2024-05-25',2,'self','left arm',99,66,42,'This was a second blood pressure reading around 9:22 AM, a few minutes after my first blood pressure reading but without removing the cuff or getting up in between.'),
  ('2024-05-25',3,'self','right arm',102,55,46,'This reading, taken around 9:26 AM, was the first reading I took on my right arm after taking two consecutive readings on my left arm.'),
  ('2024-05-25',4,'self','right arm',102,71,45,'This reading, taken around 9:20 AM, was the second reading I took on my right arm after taking two consecutve readings on my left arm.'),
  ('2024-05-25',5,'self','left arm',106,67,45,'I took this reading while seated and a minute after completing standing-on-one-leg-with-eyes-closed exercises on both legs. This was to see the effect of standing on the blood pressure immediately afterward.'),
  ('2024-05-25',6,'self','left arm',109,71,47,'I took this reading while in a standing position, but with my hand psture similar to that in the seated posture. This was to see the direct effect of standing on blood pressure.'),
  ('2024-05-25',7,'self','left arm',100,62,74,'I took this reading at 11:23 AM, a few minutes after returning from my morning jog + walk. The increased heart rate is likely reflective of the recent exercise, as well as the moving around to set up the machine.'),
  ('2024-05-25',8,'self','left arm',101,67,63,'I took this reading at 11:25 AM; it was a repeat reading for the post-exercise reading I had taken at 11:23 AM. The heart rate is still elevated relative to my usual level, but lower than the preceding reading, likely because the previous reading was further affected by moving around to hook up the blood pressure machine.'),
  ('2024-05-25',9,'self','left arm',102,65,66,'I took this reading at 7:47 PM, about 5-10 minutes after finishing eating. I had drunk water after eating and then urinated, and returned to a seating position about 1-2 minutes prior to the reading.'),
  ('2024-05-25',10,'self','left arm',102,66,60,'This reading, taken around 7:50 PM, was a repeat reading for the preceding reading that I had taken shortly after my meal. The readings were similar on blood pressure, with the heart rate being slightly lower, likely because of having been seated for a little longer.'),
  ('2024-05-25',11,'self','left arm',103,69,61,'This reading was taken around 8:28 PM as a 30-60 minute followup after eating. I had been seated for all the time since the previous readings that were taken 5-15 minutes after eating (at 7:50 PM and 7:53 PM).'),
  ('2024-05-25',12,'self','left arm',99,62,58,'This reading, taken around 8:30 PM, was a repeat reading for the preceding reading for a 30-60 minute followup after eating.'),
  /* 2024-06-02 */
  ('2024-06-02',1,'self','left arm',96,63,55,'This reading, taken around 9:50 AM, was over an hour after eating and about 10 minutes after urinating and drinking water. I took this reading as a benchmark after sleep cycle adjustments and before potential upcoming travel.'),
  ('2024-06-02',2,'self','left arm',94,59,54,'This reading, taken around 9:53 AM, was a repeat reading for the previous reading.'),
  /* 2024-06-14 */
  ('2024-06-14',1,'self','left arm',104,67,46,'This reading, taken around 9:15 AM, was about 50 minutes after I got to my computer in a seated position after bowel movement/urination and drinking water.'),
  ('2024-06-14',2,'self','left arm',101,62,47,'This reading, taken around 9:20 AM, was a repeat reading taken about 5 minutes after the previous reading.'),
  /* 2024-07-11 */
  ('2024-07-11',1,'self','left arm',97,61,46,'This reading was taken around 9:33 AM, about 30 minutes after I got to my computer in a seated position after bowel movement/urination. I did not drink water between the bowel movement and taking the reading.'),
  ('2024-07-11',2,'self','left arm',94,57,47,'This reading, taken around 9:37 AM, was a repeat reading for the previous reading.'),
  /* 2024-07-13 */
  ('2024-07-13',1,'self','left arm',92,63,46,'This reading was taken around 9:49 AM, a little over 30 minutes after I got to my computer in a seated position after bowel movement/urination/drinking water. The motivation for taking this reading was to see if there were any effects of the Tdap vaccine I got yesterday.'),
  ('2024-07-13',2,'self','left arm',97,65,48,'This reading, taken around 9:53 AM, was a repeat reading for the previous reading.'),
  /* 2024-07-24 */
  ('2024-07-24',1,'self','left arm',102,67,61,'This reading was taken around 7:24 PM, about 40 minutes after I got back to my computer after post-dinner cleanup. The motivation for the reading was my recent abdominal pain issues.'),
  ('2024-07-24',2,'self','left arm',103,64,60,'This reading, taken around 7:27 PM, was a repeat reading for the previous reading.');
