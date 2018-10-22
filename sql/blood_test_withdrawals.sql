create table blood_test_withdrawals(
  `withdrawal_slug` varchar(255) primary key not null,
  `withdrawal_date` date,
  `fasting` boolean,
  `withdrawal_lab` varchar(255),
  `requester` varchar(255),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into blood_test_withdrawals(withdrawal_slug, withdrawal_date, fasting, withdrawal_lab, requester, notes) values
  ('December 2016 LabCorp gastro tests','2016-12-12',true,'LabCorp','Jeffrey M. Aron','A large number of blood tests were requested by the gastro doctor whom I visited because of stomach pains. Ultimately, no problems were discovered, and the stomach pains had improved after some diet changes, so no further action was necessary based on these tests'),
  ('November 2017 Columbia Asia vitamin and lipid profile tests','2017-11-12',true,'Columbia Asia','Self','Tests for Vitamin B12, Vitamin D3, and basic lipid profile'),
  ('November 2017 Metropolis Healthcare vitamin and TSH tests','2017-11-17',true,'Metropolis Healthcare','Self','Tests for Vitamin B12, Vitamin D3, and Thyroid Stimulating Hormone (TSH). The goal of the B12 and D3 tests was to validate and cross-check the low readings from the test done a few days before it at Columbia Asia'),
  ('September 2018 LabCorp vitamin tests','2018-09-19',true,'LabCorp','Self (via Request A Test)','Tests for Vitamin B12 and Vitamin D3. The goal was to measure the effect of vitamin supplementation on vitamin levels after a few months of taking supplements. Prior to starting supplements, the last test (November 2017) had revealed low readings for both vitamins');
