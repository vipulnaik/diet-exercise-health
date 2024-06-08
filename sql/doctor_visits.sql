create table doctor_visits(
  `visit_date` date,
  `doctor` enum('Jeffrey M. Aron','Tang Eye Center','Total Health Dental Care','Milvia Urgent Care'),
  `specialty` enum('gastro','eye','dental','urgent care'),
  `visit_notes` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into doctor_visits(visit_date, doctor, specialty, visit_notes) values
  ('2016-12-05','Jeffrey M. Aron','gastro','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2016/2016-11-to-2016-12-stomach-pain-and-resolution.md'),
  ('2019-01-08','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-01-08-dentist-visit.md'),
  ('2021-08-11','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-08-11-dental-cleaning-trip.md'),
  ('2021-09-29','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-09-29-periodontal-therapy-first-appointment.md'),
  ('2021-10-06','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-10-06-periodontal-therapy-second-appointment.md'),
  ('2021-10-29','Tang Eye Center','eye','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-10-29-eye-exam.md'),
  ('2021-12-15','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2021/2021-12-15-periodontal-therapy-followup-appointment.md'),
  ('2022-06-15','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2022/2022-06-15-dental-cleaning.md'),
  ('2022-12-21','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2022/2022-12-21-dental-cleaning.md'),
  ('2023-07-05','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-07-05-wisdom-tooth-removal-left-side.md'),
  ('2023-08-23','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-08-23-wisdom-tooth-removal-right-side.md'),
  ('2023-09-27','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-09-27-dental-cleaning.md'),
  ('2023-10-04','Tang Eye Center','eye','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2023/2023-10-04-eye-exam.md'),
  ('2024-04-03','Total Health Dental Care','dental','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-03-dental-cleaning.md'),
  ('2024-04-30','Milvia Urgent Care','urgent care','https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-30-urgent-care-visit-and-tests.md');
