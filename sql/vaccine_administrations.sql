create table vaccine_administrations(
  `administration_slug` varchar(255) primary key not null,
  `vaccine` varchar(255),
  `location` varchar(255),
  `administration_date` date,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into vaccine_administrations(administration_slug, vaccine, location, administration_date, notes) values
  ('2014 Tdap vaccine','Tdap (whooping cough)','Walgreens (Mission and 16th), San Francisco','2014-12-15','Due to a leg injury, preventive vaccination to address potential risk of tetanus'),
  ('2015 influenza vaccine','Influenza','Walgreens (San Pablo and Ashby), Berkeley','2015-08-29','Annual flu shot. Quadrivalent shot in right arm. No complications'),
  ('2016 influenza vaccine','Influenza','Walgreens (San Pablo and Ashby), Berkeley','2016-08-28','Annual flu shot. Quadrivalent shot in right arm Slight weakness in right arm after shot (as expected). No complications'),
  ('2017 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2017-09-23','Annual flu shot. Quadrivalent shot (Flucelvax) in right arm. No complications'),
  ('2018 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2018-09-22','Annual flu shot. Quadrivalent shot in right arm. Spurt of bleeding, but no further complications'),
  ('2019 influenza vaccine','Influenza','Walgreens (Shattuck and Allston), Berkeley','2019-09-07','Annual flu shot. Quadrivalent shot in right arm. No complications');

