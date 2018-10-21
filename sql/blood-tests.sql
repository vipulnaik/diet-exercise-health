create table blood_test_withdrawals(
  `withdrawal_slug` varchar(255) primary key not null,
  `withdrawal_date` date,
  `fasting` boolean,
  `withdrawal_lab` varchar(255),
  `requester` varchar(255)
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table blood_test_results(
  `withdrawal` varchar(255),
  `test` enum('B12','D3','TSH','Basic lipid profile','WBC','RBC','Hemoglobin','Hematocrit'),
  `units` enum('nmol/L','ng/ml','pg/ml','muIU/ml','1000/muL','1000000/muL','g/dL','%','fL'),
  `reference_interval_low_end` float,
  `reference_interval_high_end` float,
  `measured_value` float,
  `diagnosis` varchar(255),
  `notes` varchar(2000),
  unique key wt (`withdrawal`, `test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into blood_test_withdrawals(withdrawal_slug, withdrawal_date, fasting, withdrawal_lab, requester, notes) values
  ('December 2016 LabCorp gastro tests','2016-12-12',true,'LabCorp','Jeffrey M. Aron','A large number of blood tests were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests'),
  ('November 2017 Columbia Asia vitamin tests','2017-11-12',true,'Columbia Asia','Self','Tests for Vitamin B12, Vitamin D3, and basic lipid profile'),
  ('November 2017 Metropolis Healthcare vitamin tests','2017-11-17',true,'Metropolis Healthcare','Self','Tests for Vitamin B12, Vitamin D3, and Thyroid Stimulating Hormone (TSH). The goal of the B12 and D3 tests was to validate and cross-check the low readings from the test done a few days before it at Columbia Asia'),
  ('September 2018 LabCorp vitamin tests','2018-09-19',true,'LabCorp','Self (via Request A Test)','Tests for Vitamin B12 and Vitamin D3. The goal was to measure the effect of vitamin supplementation on vitamin levels after a few months of taking supplements. Prior to starting supplements, the last test (November 2017) had revealed low readings for both vitamins');

insert into blood_test_results(withdrawal, test, units, reference_interval_low_end, reference_interval_high_end, measured_value, diagnosis, notes) values
  # -- D3 tests
  ('November 2017 Columbia Asia vitamin tests','D3','nmol/L',75,250,12.2,'Deficient','This test was taken before starting any regular Vitamin D3 supplementation'),
  ('November 2017 Metropolis Healthcare vitamin tests','D3','ng/mL',30,100,3,'Deficient','This test was taken before starting any regular Vitamin D3 supplementation'),
  ('September 2018 LabCorp vitamin tests','D3','ng/mL',30,100,35.8,'Sufficient','This test was taken after about 10 months of regular Vitamin D3 supplementation, with the supplement amount mostly 1000 IUs but occasionally going to 2000 IUs'),
  # -- B12 tests
  ('November 2017 Metropolis Healthcare vitamin tests','B12','pg/mL',187,883,173.6,'Deficient','This test was taken before starting any regular Vitamin B12 supplementation'),
  ('September 2018 LabCorp vitamin tests','B12','pg/mL',232,1245,1050,'Sufficient','This test was taken after about 10 months of regular Vitamin B12 supplementation, at 1000 mcg per tablet and a little over 1 tablet per day on average'),
  # -- Lipid profile test (the data is missing?)
  # -- TSH
  ('November 2017 Metropolis Healthcare vitamin tests','TSH','muIU/mL',0.35,4.94,2.30,'Sufficient','This test was taken to provide an initial measurement; there was no specific prior reason to believe that the readings would be out of range'),
  # -- Gastro profile tests
  ('December 2016 LabCorp gastro tests','WBC','1000/muL',3.4,10.8,4.3,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','RBC','1000000/muL',4.14,5.80,5.19,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Hemoglobin','g/dL',12.6,17.7,15.4,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Hematocrit','%',37.5,51.0,45.9,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','MCV','fL',79,97,88,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','MCH','pg',26.6,33.0,29.7,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','MCHC','g/dL',31.5,35.7,33.6,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','RDW','%',12.3,15.4,13.8,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Platelets','1000/muL',150,379,275,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Neutrophils','%',NULL,NULL,63,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Lymphs','%',NULL,NULL,27,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Monocytes','%',NULL,NULL,7,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Eos','%',NULL,NULL,3,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Basos','%',NULL,NULL,0,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Neutrophils (absolute)','1000/muL',1.4,7.0,2.7,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Lymphs (absolute)','1000/muL',0.7,3.1,1.2,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Monocytes (absolute)','1000/muL',0.1,0.9,0.3,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Eos (absolute)','1000/muL',0.0,0.4,0.1,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Basos (absolute)','1000/muL',0.0,0.2,0.0,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Immature granulocytes','%',NULL,NULL,0,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Immature granulocytes (absolute)','1000/muL',0.0,0.1,0.0,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','HbA1c','%',4.8,5.6,5.5,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','C-Reactive Protein (Cardiac)',0.00,3.00,0.21,'Normal; low risk of future cardiovascular event (< 1.00)','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Antigliadin Abs (IgG)',..);
