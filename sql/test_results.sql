create table test_results(
  `collection` varchar(255),
  `test` varchar(255),
  `units` varchar(255),
  `reference_interval_low_end` float,
  `reference_interval_high_end` float,
  `measured_value` float,
  `diagnosis` varchar(255),
  `notes` varchar(2000),
  unique key ct (`collection`, `test`),
  constraint collection_exists foreign key (collection) references test_sample_collections(collection_slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into test_results(collection, test, units, reference_interval_low_end, reference_interval_high_end, measured_value, diagnosis, notes) values
  /* D3 tests */
  ('November 2017 Columbia Asia vitamin and lipid profile tests','D3','nmol/L',75,250,12.2,'Deficient','This test was taken before starting any regular Vitamin D3 supplementation'),
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','D3','ng/mL',30,100,3,'Deficient','This test was taken before starting any regular Vitamin D3 supplementation'),
  ('September 2018 LabCorp vitamin tests','D3','ng/mL',30,100,35.8,'Sufficient','This test was taken after about 10 months of regular Vitamin D3 supplementation, with the supplement amount mostly 1000 IUs but occasionally going to 2000 IUs'),
  ('June 2021 Quest Diagnostics tests','D3','ng/mL',30,100,62,'Sufficient','This test was taken almost three years after the previous test (reading of 35.8) after supplementation witht 1000 IU and later 2000 IU capsules , and an average of 2+ capsules per day.'),
  /* B12 tests */
  ('November 2017 Columbia Asia vitamin and lipid profile tests','B12','pg/mL',180,914,167,'Intermediate','This test was taken before starting any regular Vitamin B12 supplementation. Guidance says: < 145 pg/mL is deficient, 145-180 is intermediate, and 180-914 is normal'),
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','B12','pg/mL',187,883,173.6,'Deficient','This test was taken before starting any regular Vitamin B12 supplementation'),
  ('September 2018 LabCorp vitamin tests','B12','pg/mL',232,1245,1050,'Sufficient','This test was taken after about 10 months of regular Vitamin B12 supplementation, at 1000 mcg per tablet and a little over 1 tablet per day on average'),
  /* HbA1c tests */
  ('June 2021 Quest Diagnostics tests','HbA1c','%',0,5.7,5.0,'Normal','This test was taken to provide a baseline HbA1c measurement. I had previously gotten a HbA1c only once, as part of a bunch of gastro blood tests in December 2016.'),
  ('June 2021 Quest Diagnostics tests','HbA1c eAG','mg/dL',NULL,NULL,97,NULL,'This test was taken to provide a baseline HbA1c measurement. I had previously gotten a HbA1c only once, as part of a bunch of gastro blood tests in December 2016.'),
  ('June 2021 Quest Diagnostics tests','HbA1c eAG (mmol/L)','mmol/L',NULL,NULL,5.4,NULL,'This test was taken to provide a baseline HbA1c measurement. I had previously gotten a HbA1c only once, as part of a bunch of gastro blood tests in December 2016.'),
  /* Calcium tests */
  ('June 2021 Quest Diagnostics tests','Calcium','mg/dL',8.6,10.3,9.6,'Normal','This test was taken to provide a baseline caclium measurement, after 3.5 years of Vitamin D supplementation and about 2 years of calcium supplementation.'),
  /* Insulin test */
  ('June 2021 Quest Diagnostics tests','Insulin','uIU/L',0,19.6,3.6,'Normal','This test was taken to provide a baseline insulin measurement in light of diabetic tendencies.'),
  /* Omega 3 tests */
  ('June 2021 Quest Diagnostics tests','Omega-3 total','%',5.5,NULL,4.6,'Moderate','The measurement is of the percentage by weight of omega-3 fatty acids. This test was taken to provide a first baseline measurement after almost 1.5 years of supplementation. The provided reference interval for this metric is >= 5.5 for optimal, 3.8-5.4 for moderate and <= 3.7 for high. I fell in the middle of the moderate range. The measurement sums up the values for eicosapentaenoic acid (EPA), docosapentaenoic acid (DPA), and docosahexonic acid (DHA).'),
  ('June 2021 Quest Diagnostics tests','Arachidonic acid/EPA ratio','unitless',3.7,40.7,19.6,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation.'),
  ('June 2021 Quest Diagnostics tests','Omega-6/Omega-3 ratio','unitless',3.7,14.4,8.7,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation.'),
  ('June 2021 Quest Diagnostics tests','EPA','%',0.2,2.3,0.5,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures eicosapentaenoic acid (EPA), one of the omega-3 fatty acids, as a percentage by weight.'),
  ('June 2021 Quest Diagnostics tests','DPA','%',0.8,1.8,0.8,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures docosapentaenoic acid (DPA), one of the omega-3 fatty acids, as a percentage by weight.'),
  ('June 2021 Quest Diagnostics tests','DHA','%',1.4,5.1,3.3,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures docosahexonic acid (DHA), one of the omega-3 fatty acids, as a percentage by weight.'),
  ('June 2021 Quest Diagnostics tests','Omega-6 total','%',NULL,NULL,40.2,NULL,'This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures the total across omega-6 fatty acids; omega-6 is used as a comparison/control for measuring omega-3, which is what the test is about. The two main omega-6 fatty acids are arachidonic acid and linoleic acid.'),
  ('June 2021 Quest Diagnostics tests','Arachidonic acid','%',8.6,15.6,9.8,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures arachidonic acid, one of the omega-6 fatty acids to which omega-3 fatty acids, and in particular EPA, are compared, as a percentage by weight.'),
  ('June 2021 Quest Diagnostics tests','Linoleic acid','%',18.6,29.5,28.1,'Normal','This was part of a set of omega-3 tests taken to provide a first baseline measurement after almost 1.5 years of supplementation. This measures linoleic acid, one of the omega-6 fatty acids to which omega-3 fatty acids are compared, as a percentage by weight.'),
  /* July 2004 blood group test */
  ('July 2004 Eskay Lab blood group test','Blood group',NULL,NULL,NULL,NULL,NULL,'Blood group was measured as O-positive.'),
  /* June 2005 Iravatham Chennai blood profile tests */
  ('June 2005 Iravatham Chennai blood profile tests','Platelets','1000/uL',150,379,172,'Normal','This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Hemoglobin','g/dL',12.6,17.7,13.5,'Normal','This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','WBC','1000/uL',3.4,10.8,10.4,'Normal','This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Neutrophils','%',NULL,NULL,81,NULL,'This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Lymphs','%',NULL,NULL,16,NULL,'This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Eos','%',NULL,NULL,3,NULL,'This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Monocytes','%',NULL,NULL,0,NULL,'This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Basos','%',NULL,NULL,0,NULL,'This test was taken to provide an initial hematology baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','Bilirubin total','mg/dL',0.1,1.2,1.4,'Above normal','This test was taken to provide an initial blood biochemistry baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','AST (SGOT)','IU/L',0,40,20,'Normal','This test was taken to provide an initial blood biochemistry baseline measurement.'),
  ('June 2005 Iravatham Chennai blood profile tests','ALT (SGPT)','IU/L',0,44,28,'Normal','This test was taken to provide an initial blood biochemistry baseline measurement.'),
  /* June 2005 Iravatham Chennai urine profile tests */
  ('June 2005 Iravatham Chennai urine profile tests','Urine clinical pathology','unitless',NULL,NULL,NULL,NULL,'Pale yellow with clear appearance. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Sugar in urine','unitless',0,0,0,'Normal','Having sugar in urine is considered bad (it''s a sign of diabetes). So the absence of sugar was as expected and hoped. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','RBC/HPF','unitless',0,3,1.5,'Normal','Reported range was 1 to 2 RBC / HPF. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Pus cells/HPF','unitless',2,3,5,'Above normal','Reported range was 4 to 6 pus cells / HPF. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Epi cells/HPF','unitless',0,20,0,'Normal','This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Crystals','unitless',0,0,0,'Normal','Having crystals in urine is bad and may indicate a kidney stone. So the absence of crystals was as expected and hoped. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Casts/HPF','unitless',0,5,0,'Normal','This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Bile salts in urine','unitless',0,0,0,'Normal','Bile salts should not be present in urine, and their absence was desired. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Bile pigments in urine','unitless',0,0,0,'Normal','Bile pigments should not be present in urine, and their absence was desired. This test was done to provide an initial urine baseline measurement.'),
  ('June 2005 Iravatham Chennai urine profile tests','Urobilinogen in urine',NULL,NULL,NULL,NULL,'Normal','This test was done to provide an initial urine baseline measurement.'),
  /* Lipid profile tests: April 2004 Dr. Lal */
  ('April 2004 Dr. Lal lipid profile tests','Cholesterol total','mg/dL',0,200,147,'Normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,28,'Below normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Cholesterol LDL','mg/dL',0,100,99,'Normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Cholesterol VLDL','mg/dL',0,35,20,'Normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Serum triglycerides','mg/dL',0,150,154,'Above normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Cholesterol HDL ratio','unitless',1,5,5.25,'Above normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  ('April 2004 Dr. Lal lipid profile tests','Chylomicrons','unitless',0,0,0,'Normal','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: July 2004 Dr. Lal */
  ('July 2004 Dr. Lal lipid profile tests','Cholesterol total','mg/dL',0,200,138,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2004 Dr. Lal lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,39,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2004 Dr. Lal lipid profile tests','Cholesterol LDL','mg/dL',0,100,82,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2004 Dr. Lal lipid profile tests','Cholesterol VLDL','mg/dL',0,35,17,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2004 Dr. Lal lipid profile tests','Serum triglycerides','mg/dL',0,150,104,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2004 Dr. Lal lipid profile tests','Cholesterol HDL ratio','unitless',0,5,3.54,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: December 2004 Gokula Metropolis */
  ('December 2004 Gokula Metropolis lipid profile tests','Cholesterol total','mg/dL',0,200,156,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('December 2004 Gokula Metropolis lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,36,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('December 2004 Gokula Metropolis lipid profile tests','Cholesterol LDL','mg/dL',0,100,108,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('December 2004 Gokula Metropolis lipid profile tests','Cholesterol VLDL','mg/dL',0,35,33,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('December 2004 Gokula Metropolis lipid profile tests','Serum triglycerides','mg/dL',0,150,164,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: July 2005 Gokula Metropolis */
  ('July 2005 Gokula Metropolis lipid profile tests','Cholesterol total','mg/dL',0,200,176,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2005 Gokula Metropolis lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,34,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2005 Gokula Metropolis lipid profile tests','Cholesterol LDL','mg/dL',0,100,121,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2005 Gokula Metropolis lipid profile tests','Cholesterol VLDL','mg/dL',0,35,40.8,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2005 Gokula Metropolis lipid profile tests','Serum triglycerides','mg/dL',0,150,196,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: September 2005 Iravatham Chennai */
  ('September 2005 Iravatham Chennai lipid profile tests','Cholesterol total','mg/dL',0,200,180,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('September 2005 Iravatham Chennai lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,48,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('September 2005 Iravatham Chennai lipid profile tests','Cholesterol LDL','mg/dL',0,100,116,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('September 2005 Iravatham Chennai lipid profile tests','Cholesterol VLDL','mg/dL',0,35,16,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('September 2005 Iravatham Chennai lipid profile tests','Serum triglycerides','mg/dL',0,150,80,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('September 2005 Iravatham Chennai lipid profile tests','Cholesterol HDL ratio','unitless',1,5,3.75,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: July 2006 SRL Bangalore */
  ('July 2006 SRL Bangalore lipid profile tests','Cholesterol total','mg/dL',0,200,164,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2006 SRL Bangalore lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,41.4,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2006 SRL Bangalore lipid profile tests','Cholesterol LDL','mg/dL',0,100,110,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2006 SRL Bangalore lipid profile tests','Cholesterol VLDL','mg/dL',0,35,12.6,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2006 SRL Bangalore lipid profile tests','Serum triglycerides','mg/dL',0,150,63,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2006 SRL Bangalore lipid profile tests','Cholesterol HDL ratio','unitless',1,5,4,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: July 2007 Gokula Metropolis */
  ('July 2007 Gokula Metropolis lipid profile tests','Cholesterol total','mg/dL',0,200,145,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 Gokula Metropolis lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,35.6,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 Gokula Metropolis lipid profile tests','Cholesterol LDL','mg/dL',0,100,105.4,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 Gokula Metropolis lipid profile tests','Cholesterol VLDL','mg/dL',0,35,53,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 Gokula Metropolis lipid profile tests','Serum triglycerides','mg/dL',0,150,265,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile tests: July 2007 SRL Bangalore */
  ('July 2007 SRL Bangalore lipid profile tests','Cholesterol total','mg/dL',0,200,156,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 SRL Bangalore lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,39,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 SRL Bangalore lipid profile tests','Cholesterol LDL','mg/dL',0,100,90,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 SRL Bangalore lipid profile tests','Cholesterol VLDL','mg/dL',0,35,26.6,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 SRL Bangalore lipid profile tests','Serum triglycerides','mg/dL',0,150,133,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('July 2007 SRL Bangalore lipid profile tests','Cholesterol HDL ratio','unitless',1,5,4.0,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Vitamin and lipid profile tests: November 2017 Columbia Asia */
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Cholesterol total','mg/dL',0,200,168,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Cholesterol HDL direct','mg/dL',30,60,51,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Cholesterol LDL','mg/dL',0,100,109.7,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Cholesterol VLDL','mg/dL',0,35,15.8,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Cholesterol HDL ratio','unitless',1,5,3.3,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','Serum triglycerides','mg/dL',0,150,79,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* Lipid profile test: June 2021 Quest Diagnostics */
  ('June 2021 Quest Diagnostics tests','Cholesterol total','mg/dL',0,200,191,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('June 2021 Quest Diagnostics tests','Cholesterol HDL direct','mg/dL',40,NULL,46,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('June 2021 Quest Diagnostics tests','Cholesterol LDL','mg/dL',0,100,122,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('June 2021 Quest Diagnostics tests','Cholesterol HDL ratio','unitless',1,5,4.2,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('June 2021 Quest Diagnostics tests','Cholesterol non-HDL','mg/dL',0,130,145,'Above normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  ('June 2021 Quest Diagnostics tests','Serum triglycerides','mg/dL',0,150,124,'Normal','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.'),
  /* TSH */
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','TSH','muIU/mL',0.35,4.94,2.30,'Sufficient','This test was taken to provide an initial measurement; there was no specific prior reason to believe that the readings would be out of range'),
  /* Gastro blood tests */
  ('December 2016 LabCorp gastro blood tests','WBC','1000/uL',3.4,10.8,4.3,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','RBC','1000000/uL',4.14,5.80,5.19,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Hemoglobin','g/dL',12.6,17.7,15.4,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Hematocrit','%',37.5,51.0,45.9,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','MCV','fL',79,97,88,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','MCH','pg',26.6,33.0,29.7,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','MCHC','g/dL',31.5,35.7,33.6,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','RDW','%',12.3,15.4,13.8,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Platelets','1000/uL',150,379,275,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Neutrophils','%',NULL,NULL,63,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Lymphs','%',NULL,NULL,27,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Monocytes','%',NULL,NULL,7,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Eos','%',NULL,NULL,3,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Basos','%',NULL,NULL,0,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Neutrophils (absolute)','1000/uL',1.4,7.0,2.7,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Lymphocytes (absolute)','1000/uL',0.7,3.1,1.2,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Monocytes (absolute)','1000/uL',0.1,0.9,0.3,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Eosinophils (absolute)','1000/uL',0.0,0.4,0.1,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Basophils (absolute)','1000/uL',0.0,0.2,0.0,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Immature granulocytes','%',NULL,NULL,0,NULL,'The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Immature granulocytes (absolute)','1000/uL',0.0,0.1,0.0,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','HbA1c','%',4.8,5.6,5.5,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','C-Reactive Protein (Cardiac)','mg/L',0.00,3.00,0.21,'Normal; low risk of future cardiovascular event (< 1.00)','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Antigliadin Abs (IgG)',NULL,0,19,2,'Negative','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','t-Transglutaminase (tTG) IgA','U/mL',0,3,2,'Negative','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','t-Transglutaminase (tTG) IgG','U/mL',0,5,2,'Negative','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','BUN','mg/dL',6,20,13,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Serum creatinine','mg/dL',0.76,1.27,0.62,'Low','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Serum creatinine eGFR','mL/min/1.73',59,NULL,133,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Alkaline phosphatase, S','IU/L',39,117,53,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','AST (SGOT)','IU/L',0,40,18,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','ALT (SGPT)','IU/L',0,44,11,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Serum lipase','U/L',0,59,30,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Serum immunoglobulin G','mg/dL',700,1600,765,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro blood tests','Serum immunoglobulin A','mg/dL',90,386,130,'Normal','The test was a part of a battery of gastro tests.'),
  /* Gastro stool tests */
  ('December 2016 LabCorp gastro stool tests','Fecal pancreatic elastase','mug Elast./g',200,NULL,500,'Normal','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro stool tests','Fecal calprotectin','mug/g',0,50,29,'Normal; Ranges: < 16 - 50 is normal, 50 - 120 is borderline and needs retesting, > 120 is abnormal and needs clinical evaluation','The test was a part of a battery of gastro tests.'),
  ('December 2016 LabCorp gastro stool tests','H. pylori stool Ag, EIA',NULL,NULL,NULL,NULL,'Negative','The test was a part of a battery of gastro tests.'),
  /* June 2021 Quest Diagnostics complete blood count */
  ('June 2021 Quest Diagnostics tests','WBC','1000/uL',3.8,10.8,4.2,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','RBC','1000000/uL',4.2,5.8,4.73,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Hemoglobin','g/dL',13.2,17.1,14.3,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Hematocrit','%',38.5,50,43.4,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','MCV','fL',80,100,91.8,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','MCH','pg',27,33,30.2,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','MCHC','g/dL',32,36,32.9,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','RDW','%',11,15,12.8,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Platelets','1000/uL',140,400,258,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','MPV','fL',7.5,12.5,11.5,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Neutrophils (absolute)','cells/uL',1500,7800,2302,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Lymphocytes (absolute)','cells/uL',850,3900,1386,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Monocytes (absolute)','cells/uL',200,950,277,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Eosinophils (absolute)','cells/uL',15,500,227,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Basophils (absolute)','cells/uL',0,200,8,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Neutrophils','%',NULL,NULL,54.8,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Lymphocytes','%',NULL,NULL,33.0,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Monocytes','%',NULL,NULL,6.6,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Eosinophils','%',NULL,NULL,5.4,'Normal','This test was part of a complete blood count (CBC).'),
  ('June 2021 Quest Diagnostics tests','Basophils','%',NULL,NULL,0.2,'Normal','This test was part of a complete blood count (CBC).');
