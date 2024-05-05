create table tests(
  `test_slug` varchar(255) primary key not null,
  `sample_type` enum('Blood','Stool','Urine','Breath'),
  `fasting_required` boolean,
  `recommended_for_acute_issues` boolean,
  `labcorp_url` varchar(255),
  `quest_diagnostics_url` varchar(255),
  `request_a_test_url` varchar(255),
  `typical_units` varchar(255),
  `reference_interval_low_end` float,
  `reference_interval_high_end` float,
  `test_notes` varchar(2000),
  `trajectory_notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into tests(test_slug, sample_type, fasting_required, recommended_for_acute_issues, labcorp_url, quest_diagnostics_url, request_a_test_url, typical_units, reference_interval_low_end, reference_interval_high_end, test_notes, trajectory_notes) values
  ('D3','Blood',false,false,'https://www.labcorp.com/test-menu/36721/vitamin-d-25-hydroxy','https://www.questdiagnostics.com/testcenter/BUOrderInfo.action?tc=17306&labCode=AMD','https://requestatest.com/vitamin-d-25-hydroxy-testing','ng/mL',30,100,'General range: < 10 ng/ML is deficient, 10-30 ng/mL is insufficient, 30-100 ng/mL is sufficient, > 100 ng/mL is toxic. This test is also available as part of several test panels, including a "Vitamin Panel, Basic", "Vitamin Panel, Comprehensive", "Vitamin and Nutrition Panel, Basic", and "Vitamin and Nutrition Panel, Comprehensive"',
  /* trajectory_notes */ 'I first got my Vitamin D3 levels tested in November 2017 while in India; both tests showed a clear-cut deficiency (3 ng/mL and 12.2 nmol/L that would work out to 4.69 ng/mL, compared to a a threshold of 30 ng/mL for sufficiency). I started taking vitamin supplements and got retested in September 2018 by LabCorp; the new test showed 35.8 ng/mL, which is above the sufficiency threshold. My next test in June 2021 (from Quest Diagnostics) yielded a result of 62 ng/mL, which is probably my body''s stable level as I had been taking supplementation for 3.5 years by this time.'),
  ('B12','Blood',true,false,'https://www.labcorp.com/test-menu/36696/vitamin-bsub12-sub','https://www.questdiagnostics.com/testcenter/BUOrderInfo.action?tc=927&labCode=AMD','https://requestatest.com/vitamin-b12-testing','pg/mL',187,1245,'Different websites give different reference intervals for adults. Reference intervals have ranged from 187-885 on the low end, to 200-1100 (Quest Diagnostics) to 232-1245 (LabCorp). This test is also available as part of several test panels, including a "B12 and Folates" panel, "Vitamin Panel, Basic", "Vitamin Panel, Comprehensive", "Vitamin and Nutrition Panel, Basic", and "Vitamin and Nutrition Panel, Ultimate"',
  /* trajectory_notes */ 'I first got my Vitamin B12 levels tested in November 2017 while in India. I got readings of 167 pg/mL and 173.6 pg/mL, both slightly below the threshold. I then started taking regular B12 supplements and got retested in September 2018 by LabCorp; the new test showed 1050 pg/mL, which is on the high end, suggesting that the supplementation worked.'),
  ('Calcium','Blood',true,true,'https://www.labcorp.com/tests/001016/calcium','https://testdirectory.questdiagnostics.com/test/test-detail/303/calcium','https://requestatest.com/calcium-testing','mg/dL',8.2,10.3,'The reference range for Quest Diagnostics is 8.6 to 10.3 mg/dL; the reference range for Sutter Health is 8.2 to 10.2 mg/dL. The calcium test is also available as part of the comprehensive metabolic panel (CMP) as well as several other panels. The CMP as a whole is a good test to help diagnose a variety of issues related to metabolism and digestion, so calcium, as a part of that, is good to test in response to acute issues.',
  /* trajectory_notes */ 'I''ve gotten my calcium levels tested twice: once as part of June 2021 Quest Diagnostics tests, and once as part of a comprehensive metabolic panel (CMP) at Sutter Health in April 2024. The latter was not a fasting test; I had eaten 6.5 hours prior to the test. In both cases, my calcium was around the middle of the reference range, with measurements of 9.6 mg/dL and 9.4 mg/dL respectively.'),
  ('HbA1c','Blood',true,false,'https://www.labcorp.com/tests/001453/hemoglobin-hb-a-sub-1c-sub','https://testdirectory.questdiagnostics.com/test/test-detail/496/hemoglobin-a1c?cc=MASTER','https://requestatest.com/hemoglobin-a1c-with-eag-testing','%',4.8,5.7,'There are variations of this test -- one that just returns HbA1c and one that returns HbA1c with eAG; the two variants have the same cost. In addition, HbA1c is also part of the diabetes panel. It is generally not required for acute issues as a CMP (that I would get in case of acute issues) would include direct glucose measurement that would catch more acute issues.',
  /* trajectory_notes */ 'I first got my HbA1c tested as part of a set of gastro tests through LabCorp in December 2016 and got a reading of 5.5, which is only a little bit below the prediabetic range. I did another measurement in June 2021 and got a reading of 5.0, which is fairly healthy. The difference between the two readings likely reflects changes to the healthiness of my diet, in particular the cutting out of direct sugar (in the form of hot chocolate).');
