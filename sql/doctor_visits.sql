create table doctor_visits(
  `visit_date` date,
  `doctor` enum('Jeffrey M. Aron','Tang Eye Center','Total Health Dental Care'),
  `specialty` enum('gastro','eye','dental'),
  `visit_notes` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into doctor_visits(visit_date, doctor, specialty, visit_notes) values
  ('2016-12-05','Jeffrey M. Aron','gastro','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2016-11-to-2016-12-stomach-pain-and-resolution.md'),
  ('2019-01-08','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-01-08-dentist-visit.md'),
  ('2021-08-11','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-08-11-dental-cleaning-trip.md'),
  ('2021-09-29','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-09-29-periodontal-therapy-first-appointment.md'),
  ('2021-10-06','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-10-06-periodontal-therapy-second-appointment.md'),
  ('2021-10-29','Tang Eye Center','eye','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-10-29-eye-exam.md'),
  ('2021-12-15','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-12-15-periodontal-therapy-followup-appointment.md'),
  ('2022-06-15','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2022-06-15-dental-cleaning.md');
