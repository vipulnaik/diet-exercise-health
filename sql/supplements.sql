create table supplements(
  `supplement_shorthand` varchar(255) primary key not null,
  `supplement_url` varchar(2000),
  `num_pieces` int(11),
  `start_date` date,
  `end_date` date,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into supplements(supplement_shorthand, supplement_url, num_pieces, start_date, end_date, notes) values
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-01-10','2020-03-13','This is the first time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day, excluding days of travel; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-03-01',NULL,'This was not the first time for me taking this supplement; it''s just the first actively recorded start date. I don''t remember the exact start date, so the entered date of 2020-03-01 is an approximate estimate. I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week');
