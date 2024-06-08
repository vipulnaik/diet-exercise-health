create table supplements(
  `supplement_shorthand` varchar(255) not null,
  `supplement_url` varchar(2000),
  `num_pieces` int(11),
  `start_date` date,
  `end_date` date,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into supplements(supplement_shorthand, supplement_url, num_pieces, start_date, end_date, notes) values
  /* Omega-3: Freshfield Vegan Omega-3 */
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-01-10','2020-03-13','This is the first time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day, excluding days of travel; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-03-14','2020-05-08','This is the second time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-05-09','2020-06-27','This is the third time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-06-28','2020-08-09','This is the fourth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-08-10','2020-10-07','This is the fifth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-10-08','2020-11-23','This is the sixth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. End date is approximate and may be off by a couple of days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2020-11-24','2021-01-13','This is the seventh time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. Start date is approximate and may be off by a couple of days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-01-14','2021-03-01','This is the eighth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-03-02','2021-04-18','This is the ninth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-04-19','2021-06-01','This is the tenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-06-02','2021-07-14','This is the eleventh time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-07-15','2021-09-14','This is the twelfth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I took more than one some days and none on other days. I averaged about one per day. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-09-15','2021-12-15','End date is highly approximate. This is the thirteeenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I accidentally started consuming another bottle in parallel so the consumption time for this seems longer than usual, but the actual consumption rate is pretty similar to usual. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2021-12-16','2022-01-04','Start date is highly approximate, end date may be off by a few days. This is the fourteeenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; I had actually started consuming this bottle earlier, before finishing the previous one, but don''t have an exact start date. The consumption period therefore seems shorter than usual, but the actual consumption rate is pretty similar to usual. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-01-05','2022-03-22','Start date may be off by a few days, end date may be off by a day. This is the fifteenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking about one per day; my average seems to have worked out to a little lower. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-03-23','2022-05-03','This is the fifteenth time I am taking this supplement (or any omega-3 supplement for that matter). I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-05-04','2022-06-18','I targeted taking a little over one per day; my average seems to have matched my target. I was also able to finish the bottle within its month of expiration (June 2022); I had consumed the bottles in an incorrect order due to having lost/misplaced the bottles and discovered them later. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-06-20','2022-07-25','I targeted taking a little over one per day. It looks like I averaged substantially higher; I''m not sure of the reasons and it''s possible that the bottle had actually been started a while back? See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-07-26','2022-09-16','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-09-18','2022-11-10','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2022-11-11','2023-01-01','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-01-03','2023-02-25','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-02-26','2023-04-23','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-04-23','2023-06-20','I targeted taking a little over one per day; my average seems to have matched my target. The end date is not exact and has been interpolated since I missed recording this end. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-06-21','2023-08-16','I targeted taking a little over one per day; my average seems to have matched my target. The start date is not exact and has been interpolated since I missed recording the end of the previous bottle. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-08-17','2023-10-13','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-10-14','2023-12-11','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2023-12-12','2024-02-06','I targeted taking a little over one per day; my average seems to have matched my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2024-02-07','2024-04-30','I targeted taking a little over one per day. I started a new bottle in India on 2024-02-18, and then after my return may have used both bottles. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  ('Freshfield Vegan Omega-3','https://www.amazon.com/gp/product/B07H9GL3Y8/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1',60,'2024-02-18','2024-06-01','I targeted taking a little over one per day. There was consumption overlap between this bottle and another started 2024-02-07 (the different bottles were due to the 2024-02-18 one having been started in India). When combining the two, the overall rate of consumption of 120 over 116 days closely matches my target. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md'),
  /* next bottle started 2024-06-02 */
  /* Vitamin D3: Finest Nutrition 2000 IU Vitamin D3 */
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-03-01','2020-05-31','This was not the first time for me taking this supplement; it''s just the first actively recorded start date. I don''t remember the exact start date, so the entered date of 2020-03-01 is an approximate estimate. I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 92 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-06-01','2020-08-24','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 85 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Finest Nutrition 2000 IU Vitamin D3','https://www.walgreens.com/store/c/finest-nutrition-d3-vitamin-2000-iu-dietary-supplement-softgels/ID=prod6112628-product',220,'2020-08-25','2020-12-04','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 109 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Nature Made Vitamin D3 2000 IU','https://www.walgreens.com/store/c/nature-made-vitamin-d3-2000-iu/ID=prod6148394-product',220,'2020-12-05','2021-03-28','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 114 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Nature Made Vitamin D3 2000 IU','https://www.walgreens.com/store/c/nature-made-vitamin-d3-2000-iu/ID=prod6148394-product',220,'2021-03-29','2021-07-08','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (220 over 114 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  /* Vitamin D3: Doctor's Best */
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-07-12','2021-08-07','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 27 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-08-08','2021-09-15','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 38 days) it looks like the mean consumption was way higher than my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-09-16','2021-11-04','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 49 days) it looks like the mean consumption was at the high end of my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-11-05','2021-12-19','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 45 days) it looks like the mean consumption was a little above the high end of my expected average consumption.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2021-12-22','2022-02-12','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was around the middle of my target.'),
  ('Doctor''s Best Vegan D3 2500 IU','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-02-14','2022-04-07','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was around the middle of my target.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-04-08','2022-05-20','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 43 days) it looks like the mean consumption was at the high end of my target range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-05-21','2022-06-22','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 33 days) it looks like the mean consumption was quite high.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-06-23','2022-08-11','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 50 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-08-12','2022-09-30','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 50 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-10-03','2022-11-27','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 56 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2022-11-28','2023-01-20','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 54 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-01-21','2023-03-16','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 55 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-03-18','2023-05-11','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-05-13','2023-07-10','The end date is approximate as I failed to record the end of this bottle. My estimate of the end date is based on my general average of taking about 1 gel a day.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-07-11','2023-08-19','The start date is approximate as I failed to record the start of this bottle. I generally target taking 1 gel a day. However, due to digestive issues and then a sore throat, I took this a little more frequently than once a day for part of the duration.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-08-20','2023-10-05','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 53 days) it looks like the mean consumption was within the expected range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-10-06','2023-11-30','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 55 days) it looks like the mean consumption was within the expected range. Note that my end date might be slightly off.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2023-12-01','2024-01-15','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. Looking at the total consumption (60 over 46 days) it looks like the mean consumption was within the expected range, albeit at the higher end of that range.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2024-01-16','2024-04-30','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. In this case, I used another bottle when in India so those 28 days in between I didn''t consume this particualr bottle. Also, after my return, I may have taken things from both bottles.'),
  ('Doctor''s Best Vegan D3 2500 UI','https://www.amazon.com/gp/product/B00E816ROU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1',60,'2024-02-18','2024-05-05','I target taking 1 gel a day, but err on the side of taking more so I expect average consumption to be 7 to 10 per week. In this case, I started this bottle in India and then continued it after my return, but I had another unfinished bottle that I also needed to finish, and I worked on both of them together. My combined rate of consumption on the two bottles was close to my target.'),
  /* Vitamin B12 */
  ('Finest Nutrition 500 mcg Vitamin B12','https://www.walgreens.com/store/c/finest-nutrition-b-12-vitamin-500-mcg-dietary-supplement-tablets/ID=prod6109062-product',300,'2020-06-26','2021-08-14','This was not the first time for me taking this supplement; it''s just the first actively recorded start date.'),
  ('Finest Nutrition 500 mcg Vitamin B12','https://www.walgreens.com/store/c/finest-nutrition-b-12-vitamin-500-mcg-dietary-supplement-tablets/ID=prod6109062-product',300,'2021-08-16','2022-08-25','While I should be taking one per day, I was lazy about this one especially in the first nine months or so, before I switched to the practice of putting everything out on my plate prior to eating. I ended up averaging about 0.8 per day, which is probably still more than enough to keep my B12 levels high.'),
  ('Nature Made Time Release B12','https://www.walgreens.com/store/c/nature-made-vitamin-b12-1000-mcg-time-release-tablets/ID=prod6090975-product',160,'2022-08-27','2023-01-28','At 160 tablets over 156 days, this came very close to my target average of 1 tablet per day.'),
  ('Walgreens B12 500 mcg','https://www.walgreens.com/store/c/walgreens-vitamin-b12-500-mcg-tablets/ID=300429200-product',300,'2023-01-30','2023-11-30','At 300 tablets over about 300 days, this came very close to my target average of 1 tablet per day. Note that the end date is likely off by a few days.'),
  /* Vitamin C */
  ('Nature Made Chewable C 500 mg','https://www.walgreens.com/store/c/nature-made-chewable-vitamin-c-500-mg-tablets-orange/ID=prod987243-product',60,'2020-04-18','2020-09-11','I bought Chewable Vitamin C from Walgreens. The goal was not to consume regularly, but rather to keep in order to be able to fight off colds and anything that may seem like the coronavirus. I consumed one chewable tablet roughly for every day I took a trip to an indoor crowded environment, such as a grocery store or convenience store. The bottle lasted me about five months, as expected given that my outside trips were once every 2.5 days or so on average.'),
  ('Nature Made C 500 mg','https://www.walgreens.com/store/c/nature-made-vitamin-c-500-mg-caplets/ID=prod3511-product',120,'2020-09-14','2024-05-31','I bought two bottles (buy one get one free) of 60 caplets each, for use after my bottle of chewable Vitamin C would finish. The goal was not to consume regularly, but rather to keep in order to be able to fight off colds and anything that may seem like the coronavirus. I consumed one tablet roughly for every day I took a trip to an indoor crowded environment, such as a grocery store or convenience store. I used one bottle fully but had to throw out almost the entirety of the second bottle as it went past its expiration date of April 2024.'),
  ('Walgreens Vitamin C 500 mg with natural rose hips','https://www.walgreens.com/store/c/walgreens-vitamin-c-with-natural-rose-hips-500-mg-tablets/ID=300428294-product',200,'2024-05-31',NULL,'I bought a bottle of 200 tablets. The goal is to consume as needed either when I have cold-like symptoms or when traveling out of town (where I might not get my usual level of nutrition) or in a situation of increased exposure risk. The bottle expires December 2028, so even if I don''t use any of it, the degree of waste is relatively small.'),
  /* Calcium/Magnesium/Zinc */
  ('Nature Made Calcium Magnesium Zinc','https://www.walgreens.com/store/c/nature-made-calcium,-magnesium-zinc-with-vitamin-d3/ID=prod3388-product',300,'2020-10-07','2021-08-18','I previously had calcium-only supplements, but switched to a multi-mineral supplement in order to avail the benefits of magnesium and zinc. I expected to take this supplement approximately daily, and it looks like that is roughly what my intake rate of the supplement averaged to.'),
  ('Nature Made Calcium Magnesium Zinc','https://www.walgreens.com/store/c/nature-made-calcium,-magnesium-zinc-with-vitamin-d3/ID=prod3388-product',300,'2021-08-19','2022-07-04','I expected to take this supplement approximately daily, and it looks like that is roughly what my intake rate of the supplement averaged to.'),
  ('Nature Made Calcium Magnesium Zinc','https://www.walgreens.com/store/c/nature-made-calcium,-magnesium-zinc-with-vitamin-d3/ID=prod3388-product',300,'2022-07-05','2023-04-23','I expected to take this supplement approximately daily, and it looks like that is roughly what my intake rate of the supplement averaged to.'),
  ('Nature Made Calcium Magnesium Zinc','https://www.walgreens.com/store/c/nature-made-calcium,-magnesium-zinc-with-vitamin-d3/ID=prod3388-product',300,'2023-04-24','2024-02-16','I expected to take this supplement approximately daily, and I finished 300 tablets over 299 days (with 2 tablets on the last day) so I very closely adhered to my target intake rate.'),
  /* Vitamin B complex */
  ('Walgreens Super B-Complex with Vitamin C','https://www.walgreens.com/store/c/walgreens-super-b-complex-with-vitamin-c-tablets/ID=300429181-product',120,'2024-05-31',NULL,'I am planning to experiment with taking this about 2-3 times a week when at home and daily when traveling and with less control over my diet. With an expiration of March 2026, I should be able to finish the bottle at that consumption rate. The goal is to fill in potential slight deficiencies in my regular diet, as well as potential bigger deficiencies when in less control of my diet. Since the amounts for all ingredients except Vitamin C are in excess of daily values, this pattern of supplementation should work.');
