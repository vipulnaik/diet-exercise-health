create table frequency_hearing_test_results(
  test_date date,
  index_within_test_date integer,
  ear enum('left','right'),
  frequency integer,
  minimum_audible_volume integer,
  notes varchar(2000),
  primary key (test_date, index_within_test_date, ear, frequency)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into frequency_hearing_test_results(test_date, index_within_test_date, ear, frequency, minimum_audible_volume, notes) values
  /* See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-29-reduced-hearing-in-left-ear.md for more context on initial tests */
  /* 2024-12-17: first time testing using https://www.resound.com/en-us/online-hearing-test */
  ('2024-12-17',1,'left',500,7,'very barely at 7 sometimes, definitely faintly at 8'),
  ('2024-12-17',1,'left',1000,8,'definitely faintly at 8'),
  ('2024-12-17',1,'left',2000,9,'very faintly at 9'),
  ('2024-12-17',1,'left',4000,8,'definitely faintly at 8'),
  ('2024-12-17',1,'right',500,6,'very barely at 6 sometimes, definitely faintly at 7'),
  ('2024-12-17',1,'right',1000,7,'definitely faintly at 7'),
  ('2024-12-17',1,'right',2000,5,'definitely faintly at 5'),
  ('2024-12-17',1,'right',4000,2,'definitely faintly at 2'),
  /* 2024-12-21 retest */
  ('2024-12-21',1,'left',500,7,'barely at 7 (this is what I selected), more clearly at 8'),
  ('2024-12-21',1,'left',1000,8,'barely at 8 (this is what I selected), more clearly at 9'),
  ('2024-12-21',1,'left',2000,10,'barely at 10 (this is what I selected), more clearly at 11'),
  ('2024-12-21',1,'left',4000,8,'barely at 8 (this is what I selected), more clearly at 9'),
  ('2024-12-21',1,'right',500,5,'barely at 5 (this is what I selected), more clearly at 6'),
  ('2024-12-21',1,'right',1000,7,'barely at 7 (this is what I selected), more clearly at 8'),
  ('2024-12-21',1,'right',2000,4,'barely at 4 (this is what I selected), more clearly at 5'),
  ('2024-12-21',1,'right',4000,2,'barely at 2 ( this is what I selected), more clearly at 3'),
  /* 2024-12-25 12:34 AM test after eardrop application */
  ('2024-12-25',1,'left',500,7,NULL),
  ('2024-12-25',1,'left',1000,8,NULL),
  ('2024-12-25',1,'left',2000,9,NULL),
  ('2024-12-25',1,'left',4000,8,NULL),
  ('2024-12-25',1,'right',500,6,NULL),
  ('2024-12-25',1,'right',1000,5,NULL),
  ('2024-12-25',1,'right',2000,3,NULL),
  ('2024-12-25',1,'right',4000,2,NULL),
  /* 2024-12-25 5:24 PM test -- https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-29-reduced-hearing-in-left-ear.md no longer includes the results */
  ('2024-12-25',2,'left',500,6,NULL),
  ('2024-12-25',2,'left',1000,8,NULL),
  ('2024-12-25',2,'left',2000,9,NULL),
  ('2024-12-25',2,'left',4000,8,NULL),
  ('2024-12-25',2,'right',500,6,NULL),
  ('2024-12-25',2,'right',1000,5,NULL),
  ('2024-12-25',2,'right',2000,3,NULL),
  ('2024-12-25',2,'right',4000,2,NULL),
  /* 2024-12-28 10:23 AM test */
  ('2024-12-28',1,'left',500,6,NULL),
  ('2024-12-28',1,'left',1000,8,NULL),
  ('2024-12-28',1,'left',2000,8,'very faint here, perhaps 9 would be better'),
  ('2024-12-28',1,'left',4000,8,'very clear despite not being audible at all at 7'),
  ('2024-12-28',1,'right',500,6,NULL),
  ('2024-12-28',1,'right',1000,6,NULL),
  ('2024-12-28',1,'right',2000,3,NULL),
  ('2024-12-28',1,'right',4000,1,NULL),
  /* 2025-01-01 4:55 PM test */
  ('2025-01-01',1,'left',500,6,NULL),
  ('2025-01-01',1,'left',1000,8,NULL),
  ('2025-01-01',1,'left',2000,9,NULL),
  ('2025-01-01',1,'left',4000,8,NULL),
  ('2025-01-01',1,'right',500,5,NULL),
  ('2025-01-01',1,'right',1000,5,NULL),
  ('2025-01-01',1,'right',2000,2,'very faint, perhaps 3 would be better'),
  ('2025-01-01',1,'right',4000,1,'it seems like I need to hit the "-" to start the sound; it doesn''t autoplay when I continue to this from the preceding frequency');
