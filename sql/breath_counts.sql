create table breath_counts(
  measurement_date date,
  index_within_measurement_date integer,
  activity_mode enum('sitting','standing still','standing with light movement','walking','jogging'),
  breath_count integer,
  breath_count_error_margin integer,
  time_period_in_seconds integer,
  notes varchar(2000),
  primary key (measurement_date, index_within_measurement_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into breath_counts(measurement_date, index_within_measurement_date, activity_mode, breath_count, breath_count_error_margin, time_period_in_seconds, notes) values
  ('2026-03-24',1,'standing with light movement',90,0,565,'This was my first formal breath count. I executed this during post-meal cleanup (washing dishes) past midnight from 2026-03-23 to 2026-03-24.'),
  ('2026-03-24',2,'jogging',100,2,422,'This was my second formal breath count. I executed this during indoor jogging on 2026-03-24. The error margin of 2 is because I briefly lost count at about 90 seconds.'),
  ('2026-03-25',1,'standing with light movement',92,0,538,'I executed this during post-meal cleanup (Washing dishes) past midnight from 2026-03-24 to 2026-03-25.'),
  ('2026-03-28',1,'walking',76,0,436,'I executed this when putting food back in the fridge after my meal at night. This involved a lot of walking bck and forth between the dining table and the refrigerator.'),
  ('2026-04-05',1,'jogging',103,3,430,'I executed this during indoor jogging on 2026-04-05.'),
  ('2026-04-14',1,'standing with light movement',65,0,480,'I executed this while washing dishes as part of post-meal cleanup after my second meal on 2026-04-14. The measurement was shortly before midnight.'),
  ('2026-05-08',1,'standing with light movement',104,0,652,'I executed this while washing dishes as part of post-meal cleanup after my second meal on 2026-05-07. The measurement was shortly after midnight going from 2026-05-07 to 2026-05-08.'),
  ('2026-06-20',1,'jogging',100,0,496,'I executed this during indoor jogging on 2026-06-20.'),
  ('2026-07-05',1,'standing with light movement',100,2,590,'I executed this while washing dishes as part of post-meal cleanup after my second meal on 2026-07-04. The measurement was shortly after midnight going from 2026-07-04 to 2026-07-05.'),
  ('2026-09-28',1,'jogging',100,0,489,'I executed this during indoor jogging on 2026-09-28.'),
  ('2026-09-29',1,'standing with light movement',100,2,597,'I executed this while washing dishes as part of post-meal cleanup after my second meal on 2026-09-28. The measurement was shortly after midnight going from 2026-09-28 to 2026-09-29.');
