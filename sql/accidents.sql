create table accidents(
  date date,
  cause_of_accident enum('Walking fall','Running fall','Traffic accident'),
  physical_injury_details varchar(2000),
  physical_injury_severity int(11),
  other_damage_details varchar(2000),
  notes_doc varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into accidents(date, cause_of_accident, physical_injury_details, physical_injury_severity, other_damage_details, notes_doc) values
  ('2014-12-15','Running fall','A significant scrape of the knee; this prompted me to get my Tdap vaccine the same day. For a few days, I needed to sit with my knees spread out.',5,NULL,NULL),
  ('2019-09-10','Traffic accident','I fell on my right side and my injuries were mainly to my right arm and a little below the waist. I also had stiffness in a few parts of my body.',4,NULL,'https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-09-10-traffic-accident.md'),
  ('2022-04-05','Running fall','This was a relatively milder fall than my previous running fall; I scraped the side of my right knee as well as my right shoulder, and also got bruises on my left and right palm.',2,'I also cracked my phone screen that I had been holding in my left hand.','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2022-04-05-fall-and-phone-screen-crack.md');
