create table blood_test_results(
  `withdrawal` varchar(255),
  `test` varchar(255),
  `units` varchar(255),
  `reference_interval_low_end` float,
  `reference_interval_high_end` float,
  `measured_value` float,
  `diagnosis` varchar(255),
  `notes` varchar(2000),
  unique key wt (`withdrawal`, `test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ('December 2016 LabCorp gastro tests','Eos (absolute)','1000/muL',0.0,0.4,0.1,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Basos (absolute)','1000/muL',0.0,0.2,0.0,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Immature granulocytes','%',NULL,NULL,0,NULL,'The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Immature granulocytes (absolute)','1000/muL',0.0,0.1,0.0,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','HbA1c','%',4.8,5.6,5.5,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','C-Reactive Protein (Cardiac)','mg/L',0.00,3.00,0.21,'Normal; low risk of future cardiovascular event (< 1.00)','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Antigliadin Abs (IgG)',NULL,0,19,2,'Negative','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','t-Transglutaminase (tTG) IgA','U/mL',0,3,2,'Negative','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','t-Transglutaminase (tTG) IgG','U/mL',0,5,2,'Negative','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Serum creatinine','mg/dL',0.76,1.27,0.62,'Low','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Alkaline phosphate','IU/L',39,117,53,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','AST (SGOT)','IU/L',0,40,18,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','ALT (SGPT)','IU/L',0,44,11,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Serum lipase','U/L',0,59,30,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Serum immunoglobulin G','mg/dL',700,1600,765,'Normal','The test was a part of a battery of gastro tests'),
  ('December 2016 LabCorp gastro tests','Serum immunoglobulin A','mg/dL',90,386,130,'Normal','The test was a part of a battery of gastro tests');
