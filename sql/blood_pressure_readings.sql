create table blood_pressure_readings(
  reading_date date,
  index_within_reading_date integer,
  measurer enum('self','Tang Eye Center','Milvia Urgent Care'),
  measurement_site enum('left arm','right arm'),
  systolic_bp_mm_hg integer,
  diastolic_bp_mm_hg integer,
  heart_rate_bpm integer,
  notes varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into blood_pressure_readings(reading_date, index_within_reading_date, measurer, measurement_site, systolic_bp_mm_hg, diastolic_bp_mm_hg, heart_rate_bpm, notes) values
  ('2021-10-29',1,'Tang Eye Center','right arm',102,67,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-10-29-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2023-10-04',1,'Tang Eye Center','right arm',108,78,NULL,'This reading was taken as part of an eye exam. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2023-10-04-eye-exam.md for details. I believe this was on my right arm (based on the geography of the room) but I''m not totally sure.'),
  ('2024-04-30',1,'Milvia Urgent Care','left arm',154,83,NULL,'This reading was taken as part of an urgent care visit. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  ('2024-04-30',2,'Milvia Urgent Care','left arm',122,84,82,'This wa a second reading taken as part of an urgent care visit, after the first reading was anomalously high. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2024-04-30-urgent-care-visit-and-tests.md for details. This was on my left arm, as I remember that my right arm was being used for the pulse oximeter measurement.'),
  ('2024-05-15',1,'self','left arm',111,70,58,'I took this reading around 9:15 AM in the morning. This was a little over an hour after bowel movement and at least 45 minutes after drinking water. I had urinated a few minutes prior to the measurement and was in a seated, resting position between urination and measurement. For most of the hour prior to the measurement (other than the urination and briefly getting up to drink water) I was sitting at my computer watching medical YouTube videos. I also did a pulse oximeter measurement of heart rate shortly before this reading, which yielded a heart rate ranging from 52 to 57 bpm.'),
  ('2024-05-15',2,'self','left arm',112,70,48,'This was a second blood pressure reading at around 9:15 AM, taken about a minute after my first blood pressure reading with no significant activity in the interim.');
