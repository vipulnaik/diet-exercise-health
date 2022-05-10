create table accidents(
  date date,
  date_precision enum('day','month','quarter','year'),
  cause_of_accident enum('Walking fall','Running fall','Traffic accident','Object drop'),
  physical_injury_details varchar(2000),
  physical_injury_severity int(11),
  other_damage_details varchar(2000),
  notes_doc varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into accidents(date, date_precision, cause_of_accident, physical_injury_details, physical_injury_severity, other_damage_details, notes_doc) values
  ('2014-12-15','day','Running fall','A significant scrape of the knee; this prompted me to get my Tdap vaccine the same day. For a few days, I needed to sit with my knees spread out.',5,NULL,NULL),
  ('2019-09-10','day','Traffic accident','I fell on my right side and my injuries were mainly to my right arm and a little below the waist. I also had stiffness in a few parts of my body.',4,NULL,'https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-09-10-traffic-accident.md'),
  ('2020-07-01','quarter','Object drop',NULL,NULL,'I dropped one of my glass food storage containers. I had placed it near the edge of the countertop due to the lack of space on the countertop near the sink (with stuff from my housemates having used up all the space), and it fell after a slight perturbation.',NULL),
  ('2022-04-05','day','Running fall','This was a relatively milder fall than my previous running fall; I scraped the side of my right knee as well as my right shoulder, and also got bruises on my left and right palm.',2,'I also cracked my phone screen that I had been holding in my left hand.','https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2022-04-05-fall-and-phone-screen-crack.md'),
  ('2022-04-21','day','Object drop',NULL,NULL,'While putting stuff in and out of my vegetable tray in the refrigerator at my new place, I failed to realize that the capacity of this vegetable tray is smaller, so it dropped. Though a very small drop, it caused a crack in the tray (albeit not one that could be felt) and also a chipping in a door handle facing the tray.',NULL);
