create table test_sample_collections(
  `collection_slug` varchar(255) primary key not null,
  `collection_date` date,
  `sample_type` enum('Blood','Stool'),
  `fasting` boolean,
  `collection_lab` varchar(255),
  `requester` varchar(255),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into test_sample_collections(collection_slug, collection_date, sample_type, fasting, collection_lab, requester, notes) values
  ('December 2016 LabCorp gastro blood tests','2016-12-12','Blood',true,'LabCorp','Jeffrey M. Aron','A large number of blood tests were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests'),
  ('December 2016 LabCorp gastro stool tests','2016-12-17','Stool',true,'LabCorp','Jeffrey M. Aron','A few stool tests (along with a larger number of blood tests) were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','2017-11-12','Blood',true,'Columbia Asia','Self','Tests for Vitamin B12, Vitamin D3, and basic lipid profile'),
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','2017-11-17','Blood',true,'Metropolis Healthcare','Self','Tests for Vitamin B12, Vitamin D3, and Thyroid Stimulating Hormone (TSH). The goal of the B12 and D3 tests was to validate and cross-check the low readings from the test done a few days before it at Columbia Asia'),
  ('September 2018 LabCorp vitamin tests','2018-09-19','Blood',true,'LabCorp','Self (via Request A Test)','Tests for Vitamin B12 and Vitamin D3. The goal was to measure the effect of vitamin supplementation on vitamin levels after a few months of taking supplements. Prior to starting supplements, the last test (November 2017) had revealed low readings for both vitamins');
