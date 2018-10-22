create table tests(
  `test_slug` varchar(255) primary key not null,
  `sample_type` enum('Blood','Stool'),
  `fasting_required` boolean,
  `labcorp_url` varchar(255),
  `quest_diagnostics_url` varchar(255),
  `typical_units` varchar(255),
  `reference_interval_low_end` float,
  `reference_interval_high_end` float,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into tests(test_slug, sample_type, fasting_required, labcorp_url, quest_diagnostics_url, typical_units, reference_interval_low_end, reference_interval_high_end, notes) values
  ('D3','Blood',false,'https://www.labcorp.com/test-menu/36721/vitamin-d-25-hydroxy','https://www.questdiagnostics.com/testcenter/BUOrderInfo.action?tc=17306&labCode=AMD','ng/mL',30,100,'General range: < 10 ng/ML is deficient, 10-30 ng/mL is insufficient, 30-100 ng/mL is sufficient, > 100 ng/mL is toxic'),
  ('B12','Blood',true,'https://www.labcorp.com/test-menu/36696/vitamin-bsub12-sub','https://www.questdiagnostics.com/testcenter/BUOrderInfo.action?tc=927&labCode=AMD','pg/mL',187,1245,'Different websites give different reference intervals for adults. Reference intervals have ranged from 187-885 on the low end, to 200-1100 (Quest Diagnostics) to 232-1245 (LabCorp)');
