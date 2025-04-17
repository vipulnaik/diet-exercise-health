create table food_pauses(
  broad_food_type varchar(200),
  pause_date date,
  pause_meal_index integer,
  resume_date date,
  resume_meal_index integer,
  pause_type enum('proactive for upcoming event','proactive after event to prevent adverse health outcomes','proactive for upcoming event and after event to prevent adverse health outcomes','reactive to health issue','reasons unrelated to health'),
  best_practices_slug varchar(200),
  notes varchar(2000),
  check(pause_date <= resume_date),
  check((pause_date, pause_meal_index) < (resume_date, resume_meal_index)),
  constraint broad_food_type_exists_for_pause foreign key (broad_food_type) references broad_food_types (broad_food_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_pauses(broad_food_type, pause_date, pause_meal_index, resume_date, resume_meal_index, pause_type, best_practices_slug, notes) values
  /* Food pauses for abdominal discomfort (2024-07-18 onward) */
  ('Pea','2024-08-03',NULL,'2024-09-07',NULL,'reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused peas (afer finishing existing prep with peas) as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. It was not clear to me whether and how much stopping peas helped. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  ('Broccoli','2024-08-15',NULL,NULL,NULL,'reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused broccoli (after finishing existing prep with broccoli) as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. My impression is that this helped quite a bit with the flatulence aspect, though its role in the overall picture is unclear. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  ('Sauerkraut / Kimchi','2024-07-31',NULL,'2024-09-09',NULL,'reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused sauerkraut as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. It is not clear to me whether it helped. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  /* Anal swelling (2024-09-20) */
  ('Walnut','2024-09-21',NULL,'2024-09-25',NULL,'reactive to health issue','best-practices-around-anal-irritation.md','This was a stoppage of hard foods due to anal swelling on 2024-09-20; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-20-anal-swelling.md for more. Separately, I also had a mouth bite starting 2024-09-17, and the pausing of walnuts was helpful there as well. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md for details on the mouth bite.'),
  ('Sauerkraut / Kimchi','2024-09-21',NULL,'2024-09-29',2,'reactive to health issue','best-practices-around-anal-irritation.md','This was a stoppage of intense foods due to anal swelling on 2024-09-20; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-20-anal-swelling.md for more. Separately, I also had a mouth bite starting 2024-09-17, and the pausing of sauerkraut / kimchi was helpful there as well. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md for details on the mouth bite.'),
  /* Dental cleaning precautions (cleaning 2024-10-09) */
  ('Walnut','2024-10-03',1,'2024-10-11',NULL,'proactive for upcoming event','best-practices-around-dental-cleaning-appointments.md','I stopped walnuts starting with the second meal on 2024-10-03, six days before my dental cleaning (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-09-dental-cleaning.md for details) to reduce the risk of injury and irritation that would make dental cleaning hard. I resumed two days after the dental cleaning, once I was confident that there were no additional injuries to the mouth (I waited two days because my mouth bite from https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md got a bit reinflamed after the dental cleaning, likely due to the poking around of the area with instruments, so I waited a couple of days to make sure it cleared.'),
  ('Sauerkraut / Kimchi','2024-10-02',1,'2024-10-13',1,'proactive for upcoming event','best-practices-around-dental-cleaning-appointments.md','I had my last sauerkraut / kimchi on 2024-10-01 morning, eight days before my dental cleaning (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-09-dental-cleaning.md for details), so the pause was effective 2024-10-02 (since I have sauerkraut / kimchi only with my morning meal). I resumed four days after the dental cleaning, after making sure that there were no persistent mouth injuries from the cleaning and no excess salivation.'),
  /* Extended conversation and meal delay (2024-10-16) */
  ('Walnut','2024-10-16',1,'2024-10-18',NULL,'proactive after event to prevent adverse health outcomes','best-practices-around-fasting.md','I paused walnuts consumption on 2024-10-16 after having a lengthy conversation where I talked for over four hours, and a not-totally-planned delay in my meal. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for more details. The adverse outcome I was trying to prevent (sore throat) was avoided, and I resumed walnuts on 2024-10-18.'),
  ('Sauerkraut / Kimchi','2024-10-16',1,'2024-10-19',1,'proactive after event to prevent adverse health outcomes','best-practices-around-fasting.md','I paused sauerkraut / kimchi consumption on 2024-10-16 after having a lengthy conversation where I talked for over four hours, and a not-totally-planned delay in my meal. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for more details. The adverse outcome I was trying to prevent (sore throat) was avoided, and I resumed sauerkraut on 2024-10-19.'),
  /* Anal swelling (2024-10-17) */
  ('Walnut','2024-10-20',1,'2024-10-25',NULL,'reactive to health issue','best-practices-around-anal-swelling.md','I paused walnuts consumption on 2024-10-20 after the anal swelling (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-17-anal-swelling.md for details) that had started on 2024-10-17 got worse. I had paused walnuts during the time of the anal swelling for other reasons (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for details) so walnuts were not causal to the anal swelling, but I think they exacerbated the pain when the swelling was at its peak. I resumed walnuts at 25-35% of a single meal on 2024-10-25, and then ramped back up over the next few days.'),
  ('Sauerkraut / Kimchi','2024-10-20',1,'2024-10-27',1,'reactive to health issue','best-practices-around-anal-swelling.md','I paused sauerkraut consumption on 2024-10-20 after the anal swelling (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-17-anal-swelling.md for details) that had started on 2024-10-17 got worse (I had paused sauerkraut on 2024-10-16 and resumed on 2024-10-19 for other reasons (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for details) so sauerkraut was not causal, but resuming it did seem to exacerbate the pain when the swelling was at its peak. I resumed sauerkraut at 50% of usual levels on 2024-10-27.'),
  ('Sauerkraut / Kimchi','2024-11-03',1,'2024-11-04',1,'reactive to health issue','best-practices-around-anal-swelling.md','After consuming kimchi on 2024-11-02 (after a few weeks) I experienced anal itching on 2024-11-03, likely due to the reintroduction of capsaicin. For safety, I skipped sauerkraut consumption on 2024-11-03. I seemed to have recovered as of the morning of 2024-11-04, so I returned to consuming sauerkraut.'),
  ('Sauerkraut / Kimchi','2024-11-06',1,'2024-11-09',1,'proactive for upcoming event','best-practices-around-intense-and-hard-food-consumption.md','I paused consumption of sauerkraut and kimchi to avoid spice/acid overload while eating takeout food from Udupi Palace (takeout done evening of Wednesday 2024-11-06, pause started morning of 2024-11-06; takeout food consumption completed on Friday 2024-11-08). Additionally, I wanted to conserve the stock I had left since I had not been able to get more of these from Trader Joe''s.'),
  ('Walnut','2024-11-09',2,'2024-11-10',2,'proactive after event to prevent adverse health outcomes','','I paused consumption of walnuts in the evening meal for 2024-11-09 and the morning meal for 2024-11-10 to prevent sore throat issues after a long call of over 3 hours on 2024-11-09 where I spoke for a little over 50% of the time. I resumed walnuts at about 50% capacity in the evening meal on 2024-11-10, and went up to close to 100% capacity in the morning meal on 2024-11-11.'),
  ('Sauerkraut / Kimchi','2024-11-10',1,'2024-11-15',1,'proactive after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','I paused sauerkraut consumption temporarily after a long conversation on 2024-11-09, then in anticipation of and after another long conversation on 2024-11-13. I resumed on 2024-11-15 after everything seemed fine.'),
  ('Sauerkraut / Kimchi','2024-11-27',1,'2024-12-02',1,'reactive to health issue','best-practices-around-anal-irritation.md','I paused sauerkraut consumption on 2024-11-27 in light of anal swelling that started on 2024-11-25 and got worse on 2024-11-26. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-11-25-anal-swelling.md for details. I resumed on 2024-12-02 as the recovery trajectory seemed well under way.'),
  ('Sauerkraut / Kimchi','2024-12-09',1,'2024-12-12',1,'proactive for upcoming event','best-practices-around-intense-and-hard-food-consumption.md','I paused sauerkraut consumption starting 2024-12-09 in preparation for a meeting 2024-12-11 where I expected to talk at length. I ended up not talking enough in the meeting to warrant continued precautions after the meeting, so I resumed sauerkraut the next day (2024-12-12).'),
  ('Sauerkraut / Kimchi','2024-12-19',1,'2024-12-21',1,'proactive after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','I had takeout food from Udupi Palace (spinach masala dosa) on the evening of 2024-12-18 and finished leftovers from that food on 2024-12-19 (remaining portion of sambhar) and 2024-12-20 (remaining portion of chutney). As of the morning of 2024-12-18, I was not intending to have the takeout food, so I did not skip sauerkraut on the morning. However, on 2024-12-19 and 2024-12-20, in light of the recent and ongoing consumption of intense takeout food, I paused sauerkraut consumption. I resumed sauerkraut consumption on 2024-12-21.'),
  ('Sauerkraut / Kimchi','2024-12-28',1,'2024-12-29',1,'reactive to health issue','best-practices-around-anal-irritation.md','On the morning of 2024-12-28, I noticed blood when wiping the anus, though there wasn''t pain and only a little irritation when I deliberately contracted the anus. As a precautionary measure, I paused sauerkraut consumption for that day. The next day, after confirming that I no longer had bleeding, and the irritation was gone, I resumed sauerkraut consumption.'),
  ('Sauerkraut / Kimchi','2024-12-31',1,'2025-01-03',1,'proactive for upcoming event','best-practices-around-intense-and-hard-food-consumption.md','I paused sauerkraut consumption on 2024-12-31 in preparation for a meeting 2025-01-02 where I expected to talk at length. I ended up not talking enough in the meeting to warrant continued precautions after the meeting, so I resumed sauerkraut the next day (2025-01-03).'),
  ('Sauerkraut / Kimchi','2025-01-11',1,'2025-01-12',1,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','I was experiencing symptoms of slight throat soreness and reflux which I attribute to kimchi consumption on 2025-01-07 and 2025-01-10. To facilitate faster recovery, I skipped sauerkraut and walnuts for the first meal on 2025-01-11. After experiencing recovery to quite an extent, I resumed walnuts for the second meal on 2025-01-11 and resumed sauerkraut on 2025-01-12. I plan to refrain from kimchi for a couple of weeks and then gingerly retry it.'),
  ('Walnut','2025-01-11',1,'2025-01-11',2,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','I was experiencing symptoms of slight throat soreness and reflux which I attribute to kimchi consumption on 2025-01-07 and 2025-01-10. To facilitate faster recovery, I skipped sauerkraut and walnuts for the first meal on 2025-01-11. After experiencing recovery to quite an extent, I resumed walnuts for the second meal on 2025-01-11 and resumed sauerkraut on 2025-01-12. I plan to refrain from kimchi for a couple of weeks and then gingerly retry it.'),
  ('Sauerkraut / Kimchi','2025-02-10',1,'2025-02-16',1,'proactive for upcoming event and after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','Starting Monday 2025-02-10, I paused the consumption of sauerkraut in light of an upcoming meeting on Wednesday 2025-02-12 where I expected to talk for a long time. This also offset some of the reflux / sore throat effects potentially from the lentils that I ate from 2025-02-10 to 2025-02-12. I did end up talking quite a bit on 2025-02-12 (and the meeting was in the evening), so I extended the pause till Saturday 2025-02-15 and resumed sauerkraut consumption on Sunday 2025-02-16.'),
  ('Almond','2025-02-12',2,'2025-02-15',1,'proactive after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','On Wednesday 2025-02-12, I ended up talking quite a bit in a meeting in the evening. I felt throat fatigue after that. Following my best practices, I paused the consumption of almonds (the nuts I have been consuming recently because walnuts have been out of stock) starting the evening of 2025-02-12, and continuing into 2025-02-13 and 2025-02-14. I resumed almonds on the morning of Saturday 2025-02-15.'),
  ('Sauerkraut / Kimchi','2025-03-03',1,'2025-03-05',1,'proactive after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','I got takeout food from Udupi Palace on 2025-03-02 evening. As I was finished leftovers over the next two days, I skipped sauerkraut consumption on those two days. I resumed sauerkraut consumption on 2025-03-05.'),
  ('Sauerkraut / Kimchi','2025-03-08',1,'2025-03-12',1,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','I paused sauerkraut in response to a sore throat that I attriute to exessive cayenne pepper with my potatoes prep on 2025-03-07. The situation improved a lot on 2025-03-09 after I added extra cumin to my next meal prep, with the cumin helping clear my throat. By 2025-03-12, I felt confident to resume sauerkraut, and it seems to have worked fine.'),
  ('Walnut','2025-03-15',2,'2025-03-17',1,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','In response to sore throat issues starting the evening of 2025-03-14 (which might have been a followup to incompletely fixed sore throat issues from 2025-03-07 onward) I reduced my walnuts consumption in the first meal on 2025-03-15, and then stopped completely starting with the second meal on 2025-03-15. With the first meal of 2025-03-17, after feeling mostly recovered, I resumed walnuts consumption but in a very small quantity.'),
  ('Seafood','2025-03-15',2,'2025-03-17',2,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','In response to sore throat issues starting the evening of 2025-03-14 (which might have been a followup to incompletely fixed sore throat issues from 2025-03-07 onward) I paused seaweed consumption with my second meal of 2025-03-15. Seaweed is not currently listed as one of the foods to pause for a sore throat, but I wanted to try pausing it to see if it helps. I continued the pause on 2025-03-16 and resumed on 2025-03-17 (I generally have seaweed only with the second meal so the resumption was with the second meal). I am not fully decided on whether to include seaweed in future pauses for sore throat.'),
  ('Walnut','2025-03-19',1,'2025-03-20',1,'proactive after event to prevent adverse health outcomes','best-practices-around-intense-and-hard-food-consumption.md','After a long conversation (a little over 3 hours) with work colleagues on the morning of Wednesday 2025-03-19, where I may have talked about 40-60% of the time, I felt a bit of throat tightness/fatigue, so I skipped walnut consumption on that day. By the time of my first meal the next day (2025-03-20) I was feeling fine, so I resumed walnut consumption albeit still at a slightly lower level than usual.'),
  ('Sauerkraut / Kimchi','2025-03-16',1,'2025-03-22',1,'reactive to health issue','best-practices-around-intense-and-hard-food-consumption.md','In response to sore throat issues starting the evening of 2025-03-14 (which might have been a followup to incompletely fixed sore throat issues from 2025-03-07 onward) I paused sauerkraut consumption on Sunday 2025-03-16. While my throat recovered, I continued the pause in light of an anticipated long chat with work colleagues on 2025-03-19 and then for a couple of days after that long chat. On 2025-03-22, I resumed sauerkraut, albeit at a lower level than normal.'),
  ('Walnut','2025-04-11',1,'2025-04-17',1,'proactive for upcoming event and after event to prevent adverse health outcomes','best-practices-around-dental-cleaning-appointments.md','I started my pause of walnuts consumption on Friday 2025-04-11, 5 days before my dental cleaning appointment on 2025-04-16. I resumed on Thursday 2025-04-17, a day after the dental cleaning appointment, after confirming no injuries or sensitivity after the appointment. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2025/2025-04-16-dental-cleaning.md for more details regarding the dental cleaning.');
