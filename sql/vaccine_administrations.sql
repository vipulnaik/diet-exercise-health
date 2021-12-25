create table vaccine_administrations(
  `administration_slug` varchar(255) primary key not null,
  `vaccine` varchar(255),
  `location` varchar(255),
  `administration_date` date,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into vaccine_administrations(administration_slug, vaccine, location, administration_date, notes) values
  ('2014 Tdap vaccine','Tdap (whooping cough)','Walgreens (Mission and 16th), San Francisco','2014-12-15','Due to a leg injury, preventive vaccination to address potential risk of tetanus'),
  ('2015 influenza vaccine','Influenza','Walgreens (San Pablo and Ashby), Berkeley','2015-08-29','Annual flu shot. Quadrivalent shot in right arm. No complications (note that payment record says 2015-09-06; I am not sure what the right date is)'),
  ('2016 influenza vaccine','Influenza','Walgreens (San Pablo and Ashby), Berkeley','2016-08-28','Annual flu shot. Quadrivalent shot in right arm Slight weakness in right arm after shot (as expected). No complications'),
  ('2017 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2017-09-23','Annual flu shot. Quadrivalent shot (Flucelvax) in right arm. No complications (note that the payment record says 2017-09-25; I am not sure what the right date is)'),
  ('2018 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2018-09-22','Annual flu shot. Quadrivalent shot in right arm. Spurt of bleeding, but no further complications (note that the payment record says 2018-09-24)'),
  ('2019 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2019-09-07','Annual flu shot. Quadrivalent shot in right arm. No complications (note that the payment record says 2019-09-16)'),
  ('2020 influenza vaccine','Influenza','Walgreens (Gilman St), Berkeley','2020-09-26','Annual flu shot. Quadrivalent shot in right arm. I had a fitful and long sleep the night after I got vaccinated (from around 8:45 PM to around 8 AM), including feeling slightly feverish, feeling very physically fatigued and lethargic, having mild muscle aches, and urinating frequently at night. It is not clear what role the flu shot played in that experience.'),
  ('2021 COVID Pfizer vaccine dose 1','COVID','Safeway, Emeryville','2021-05-27','First dose of my first 2-dose COVID vaccine using the Pfizer vaccine. Unlike my previous influenza vaccine, where I experienced likely side-effects that night, I experienced no noticeable side-effects from the COVID vaccine other than slight reduction in physical energy. Even the reduction in physical energy might have been due to large amounts of walking I did in the days around the COVID shot.'),
  ('2021 COVID Pfizer vaccine dose 2','COVID','Safeway, Emeryville','2021-06-25','Second dose of my first 2-dose COVID vaccine using the Pfizer vaccine. I experienced a slight fever the next day; see https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-06-25-pfizer-covid-vaccine-dose-2.md for more details.'),
  ('2021 Afluria influenza vaccine','Influenza','Walgreens (Gilman St), Berkeley','2021-11-05','Annual flu shut. Afluria shot in right arm. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-11-05-flu-shot.md for details.'),
  ('2021 COVID Pfizer vaccine booster dose','COVID','Walgreens (Gilman St), Berkeley','2021-12-24','Booster dose oof COVID Pfizer, six months after the second dose. I experienced a slight fever that night and the next day; see https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2021-12-24-pfizer-covid-vaccine-booster-dose.md for details.');
