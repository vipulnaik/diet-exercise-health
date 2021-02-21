create table test_sample_collections(
  `collection_slug` varchar(255) primary key not null,
  `collection_date` date,
  `sample_type` enum('Blood','Stool','Urine'),
  `fasting` boolean,
  `collection_lab` varchar(255),
  `requester` varchar(255),
  `notes` varchar(2000),
  `report_filename` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into test_sample_collections(collection_slug, collection_date, sample_type, fasting, collection_lab, requester, notes, report_filename) values
  ('April 2004 Dr. Lal lipid profile tests','2004-04-26','Blood',true,'Dr. Lal Delhi','Self','This test was taken to provide an initial baseline for periodic measurement, in light of family diabetic tendencies.',NULL),
  ('July 2004 Eskay Lab blood group test','2004-07-21','Blood',false,'Eskay Lab Delhi','Self','This test was taken to provide an official confirmation of my blood group, that was already pretty much determined by my genetics.',NULL),
  ('July 2004 Dr. Lal lipid profile tests','2004-07-21','Blood',true,'Dr. Lal Delhi','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('December 2004 Gokula Metropolis lipid profile tests','2004-12-18','Blood',true,'Gokula Metropolis Bangalore','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('June 2005 Iravatham Chennai blood profile tests','2005-06-15','Blood',true,'Dr. Iravatham Clinical Lab Chennai','Self','This test was done to provide an initial measurement of hematology and blood biochemistry.',NULL),
  ('June 2005 Iravatham Chennai urine profile tests','2005-06-15','Urine',true,'Dr. Iravatham Clinical Lab Chennai','Self','This test was done to provide an initial urine baseline measurement.',NULL),
  ('July 2005 Gokula Metropolis lipid profile tests','2005-07-23','Blood',true,'Gokula Metropolis Bangalore','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('September 2005 Iravatham Chennai lipid profile tests','2005-09-15','Blood',true,'Dr. Iravatham Clinical Lab Chennai','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('July 2006 SRL Bangalore lipid profile tests','2006-07-16','Blood',true,'SRL Bangalore','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('July 2007 Gokula Metropolis lipid profile tests','2007-07-03','Blood',true,'Gokula Metropolis Bangalore','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('July 2007 SRL Bangalore lipid profile tests','2007-07-04','Blood',true,'SRL Bangalore','Self','This test was taken to provide a periodic measurement, in light of family diabetic tendencies.',NULL),
  ('December 2016 LabCorp gastro blood tests','2016-12-12','Blood',false,'LabCorp','Jeffrey M. Aron','A large number of blood tests were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests','201612-labcorp-gastro-blood.pdf'),
  ('December 2016 LabCorp gastro stool tests','2016-12-17','Stool',false,'LabCorp','Jeffrey M. Aron','A few stool tests (along with a larger number of blood tests) were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests','201612-labcorp-gastro-stool.pdf'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','2017-11-12','Blood',true,'Columbia Asia','Self','Tests for Vitamin B12, Vitamin D3, and basic lipid profile','201711-columbia-asia-b12-d-lipid-profile.pdf'),
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','2017-11-17','Blood',true,'Metropolis Healthcare','Self','Tests for Vitamin B12, Vitamin D3, and Thyroid Stimulating Hormone (TSH). The goal of the B12 and D3 tests was to validate and cross-check the low readings from the test done a few days before it at Columbia Asia','201711-metropolis-healthcare-b12-d-tsh.pdf'),
  ('September 2018 LabCorp vitamin tests','2018-09-19','Blood',true,'LabCorp','Self (via Request A Test)','Tests for Vitamin B12 and Vitamin D3. The goal was to measure the effect of vitamin supplementation on vitamin levels after a few months of taking supplements. Prior to starting supplements, the last test (November 2017) had revealed low readings for both vitamins','201809-labcorp-b12-d.pdf');
