create table frequency_hearing_test_results(
  test_date date,
  index_within_test_date integer,
  conduction_method enum('air','bone'),
  ear enum('left','right'),
  frequency integer,
  minimum_audible_volume integer,
  notes varchar(2000),
  primary key (test_date, index_within_test_date, conduction_method, ear, frequency)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into frequency_hearing_test_results(test_date, index_within_test_date, conduction_method, ear, frequency, minimum_audible_volume, notes) values
  /* See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-29-reduced-hearing-in-left-ear.md for more context on initial tests */
  /* 2024-12-17: first time testing using https://www.resound.com/en-us/online-hearing-test */
  ('2024-12-17',1,'air','left',500,7,'very barely at 7 sometimes, definitely faintly at 8'),
  ('2024-12-17',1,'air','left',1000,8,'definitely faintly at 8'),
  ('2024-12-17',1,'air','left',2000,9,'very faintly at 9'),
  ('2024-12-17',1,'air','left',4000,8,'definitely faintly at 8'),
  ('2024-12-17',1,'air','right',500,6,'very barely at 6 sometimes, definitely faintly at 7'),
  ('2024-12-17',1,'air','right',1000,7,'definitely faintly at 7'),
  ('2024-12-17',1,'air','right',2000,5,'definitely faintly at 5'),
  ('2024-12-17',1,'air','right',4000,2,'definitely faintly at 2'),
  /* 2024-12-21 retest */
  ('2024-12-21',1,'air','left',500,7,'barely at 7 (this is what I selected), more clearly at 8'),
  ('2024-12-21',1,'air','left',1000,8,'barely at 8 (this is what I selected), more clearly at 9'),
  ('2024-12-21',1,'air','left',2000,10,'barely at 10 (this is what I selected), more clearly at 11'),
  ('2024-12-21',1,'air','left',4000,8,'barely at 8 (this is what I selected), more clearly at 9'),
  ('2024-12-21',1,'air','right',500,5,'barely at 5 (this is what I selected), more clearly at 6'),
  ('2024-12-21',1,'air','right',1000,7,'barely at 7 (this is what I selected), more clearly at 8'),
  ('2024-12-21',1,'air','right',2000,4,'barely at 4 (this is what I selected), more clearly at 5'),
  ('2024-12-21',1,'air','right',4000,2,'barely at 2 ( this is what I selected), more clearly at 3'),
  /* 2024-12-25 12:34 AM test after eardrop application */
  ('2024-12-25',1,'air','left',500,7,NULL),
  ('2024-12-25',1,'air','left',1000,8,NULL),
  ('2024-12-25',1,'air','left',2000,9,NULL),
  ('2024-12-25',1,'air','left',4000,8,NULL),
  ('2024-12-25',1,'air','right',500,6,NULL),
  ('2024-12-25',1,'air','right',1000,5,NULL),
  ('2024-12-25',1,'air','right',2000,3,NULL),
  ('2024-12-25',1,'air','right',4000,2,NULL),
  /* 2024-12-25 5:24 PM test -- https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-29-reduced-hearing-in-left-ear.md no longer includes the results */
  ('2024-12-25',2,'air','left',500,6,NULL),
  ('2024-12-25',2,'air','left',1000,8,NULL),
  ('2024-12-25',2,'air','left',2000,9,NULL),
  ('2024-12-25',2,'air','left',4000,8,NULL),
  ('2024-12-25',2,'air','right',500,6,NULL),
  ('2024-12-25',2,'air','right',1000,5,NULL),
  ('2024-12-25',2,'air','right',2000,3,NULL),
  ('2024-12-25',2,'air','right',4000,2,NULL),
  /* 2024-12-28 10:23 AM test */
  ('2024-12-28',1,'air','left',500,6,NULL),
  ('2024-12-28',1,'air','left',1000,8,NULL),
  ('2024-12-28',1,'air','left',2000,8,'very faint here, perhaps 9 would be better'),
  ('2024-12-28',1,'air','left',4000,8,'very clear despite not being audible at all at 7'),
  ('2024-12-28',1,'air','right',500,6,NULL),
  ('2024-12-28',1,'air','right',1000,6,NULL),
  ('2024-12-28',1,'air','right',2000,3,NULL),
  ('2024-12-28',1,'air','right',4000,1,NULL),
  /* 2025-01-01 4:55 PM test */
  ('2025-01-01',1,'air','left',500,6,NULL),
  ('2025-01-01',1,'air','left',1000,8,NULL),
  ('2025-01-01',1,'air','left',2000,9,NULL),
  ('2025-01-01',1,'air','left',4000,8,NULL),
  ('2025-01-01',1,'air','right',500,5,NULL),
  ('2025-01-01',1,'air','right',1000,5,NULL),
  ('2025-01-01',1,'air','right',2000,2,'very faint, perhaps 3 would be better'),
  ('2025-01-01',1,'air','right',4000,1,'it seems like I need to hit the "-" to start the sound; it doesn''t autoplay when I continue to this from the preceding frequency'),
  /* 2025-01-02 7:26 PM test -- first test using bone conduction; unfortunately the overall volume for bone conduction and air conduction are different so the numbers aren't directly comparable but hopefully the trends still are */
  ('2025-01-02',1,'bone','left',500,7,NULL),
  ('2025-01-02',1,'bone','left',1000,9,NULL),
  ('2025-01-02',1,'bone','left',2000,12,NULL),
  ('2025-01-02',1,'bone','left',4000,8,NULL),
  ('2025-01-02',1,'bone','right',500,6,NULL),
  ('2025-01-02',1,'bone','right',1000,8,NULL),
  ('2025-01-02',1,'bone','right',2000,7,NULL),
  ('2025-01-02',1,'bone','right',4000,6,NULL),
  /* 2025-01-06 6 PM test - both air and bone */
  ('2025-01-06',1,'air','left',500,6,NULL),
  ('2025-01-06',1,'air','left',1000,8,NULL),
  ('2025-01-06',1,'air','left',2000,9,NULL),
  ('2025-01-06',1,'air','left',4000,8,NULL),
  ('2025-01-06',1,'air','right',500,7,NULL),
  ('2025-01-06',1,'air','right',1000,6,NULL),
  ('2025-01-06',1,'air','right',2000,4,NULL),
  ('2025-01-06',1,'air','right',4000,1,NULL),
  ('2025-01-06',1,'bone','left',500,6,NULL),
  ('2025-01-06',1,'bone','left',1000,8,NULL),
  ('2025-01-06',1,'bone','left',2000,11,NULL),
  ('2025-01-06',1,'bone','left',4000,8,NULL),
  ('2025-01-06',1,'bone','right',500,6,NULL),
  ('2025-01-06',1,'bone','right',1000,8,NULL),
  ('2025-01-06',1,'bone','right',2000,6,NULL),
  ('2025-01-06',1,'bone','right',4000,6,NULL),
  /* 2025-01-15 7:50 PM test -- both air and bone */
  ('2025-01-15',1,'air','left',500,4,'very faint at 4, slightly clearer at 5'),
  ('2025-01-15',1,'air','left',1000,6,'very faint at 6, clear at 7'),
  ('2025-01-15',1,'air','left',2000,4,'reasonably clear at 4, can''t be sure if I am imagining it at 3'),
  ('2025-01-15',1,'air','left',4000,4,'faint but clear at 4'),
  ('2025-01-15',1,'air','right',500,8,'very clear at 8, not sure I can hear it at 7'),
  ('2025-01-15',1,'air','right',1000,7,'faint but clear at 7, very clear at 8'),
  ('2025-01-15',1,'air','right',2000,2,'very faint at 2, reasonably clear at 3'),
  ('2025-01-15',1,'air','right',4000,1,'faint but clear at 1'),
  ('2025-01-15',1,'bone','left',500,5,'clear at 5, cannot hear at all at 4'),
  ('2025-01-15',1,'bone','left',1000,7,'clear at 7, cannot hear at all at 6'),
  ('2025-01-15',1,'bone','left',2000,6,'faint but audible at 6, cannot hear at all at 5'),
  ('2025-01-15',1,'bone','left',4000,7,'faint but audible at 7, cannot hear at all at 6'),
  ('2025-01-15',1,'bone','right',500,5,'off-and-on audible at 5, continuously audible at 6, cannot hear at all at 4'),
  ('2025-01-15',1,'bone','right',1000,7,'faint but clear at 7, very clear at 8'),
  ('2025-01-15',1,'bone','right',2000,7,'faint but clear at 7, very clear at 8'),
  ('2025-01-15',1,'bone','right',4000,6,'faint but audible at 6, faint but clear at 7'),
  /* 2025-02-23 11:30 AM test -- both air and bone (this is the once-every-two-months periodic test) */
  ('2025-02-23',1,'air','left',500,6,'faint but clear at 6 after first refamiliarizing myself with the sound at 7'),
  ('2025-02-23',1,'air','left',1000,5,'faint but clear at 5'),
  ('2025-02-23',1,'air','left',2000,4,'faint but clear at 4'),
  ('2025-02-23',1,'air','left',4000,2,'faint but clear at 2 after refamiliarizing myself with the sound at 3'),
  ('2025-02-23',1,'air','right',500,5,'very faint at 5 and faint and clear at 6 when I oriented myself so that the street traffic noise direction was orthogonal to my coronal plane. When it was coming from my right side, I needed go up to 7 to hear the sound clearly.'),
  ('2025-02-23',1,'air','right',1000,6,'very faint at 6 and faint and clear at 7 when I oriented myself so that the street traffic noise direction was orthogonal to my coronal plane. When it was coming from my right side, I needed go up to 8 to hear the sound clearly.'),
  ('2025-02-23',1,'air','right',2000,4,'very faint at 4 and faint and clear at 5'),
  ('2025-02-23',1,'air','right',4000,1,'faint and clear at 1'),
  ('2025-02-23',1,'bone','left',500,5,'clear at 5, cannot hear at all at 4'),
  ('2025-02-23',1,'bone','left',1000,7,'clear at 7, cannot hear at all at 6'),
  ('2025-02-23',1,'bone','left',2000,5,'very faint at 5, faint and clear at 6'),
  ('2025-02-23',1,'bone','left',4000,6,'faint and clear at 6; sort of heard at 5 but not consistently and not for the full duration'),
  ('2025-02-23',1,'bone','right',500,6,'very faint at 6, faint but clear at 7'),
  ('2025-02-23',1,'bone','right',1000,8,'faint but clear at 8, could not hear at all at 7'),
  ('2025-02-23',1,'bone','right',2000,7,'faint but clear at 7, very clear at 8; sort of heard at 6 but not consistently and not for the full duration'),
  ('2025-02-23',1,'bone','right',4000,6,'faint but audible at 6, faint but clear at 7');
