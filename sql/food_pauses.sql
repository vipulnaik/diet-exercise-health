create table food_pauses(
  broad_food_type varchar(200),
  pause_date date,
  resume_date date,
  pause_type enum('proactive for upcoming event','proactive after event to prevent adverse health outcomes','reactive to health issue','reasons unrelated to health'),
  best_practices_slug varchar(200),
  notes varchar(2000),
  constraint broad_food_type_exists_for_pause foreign key (broad_food_type) references broad_food_types (broad_food_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into food_pauses(broad_food_type, pause_date, resume_date, pause_type, best_practices_slug, notes) values
  /* Food pauses for abdominal discomfort (2024-07-18 onward) */
  ('Pea','2024-08-03','2024-09-07','reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused peas (afer finishing existing prep with peas) as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. It was not clear to me whether and how much stopping peas helped. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  ('Broccoli','2024-08-15',NULL,'reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused broccoli (after finishing existing prep with broccoli) as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. My impression is that this helped quite a bit with the flatulence aspect, though its role in the overall picture is unclear. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  ('Sauerkraut / Kimchi','2024-07-31','2024-09-09','reactive to health issue','best-practices-around-abdominal-discomfort.md','I paused sauerkraut as a flatulence-producing/FODMAP food in light of abdominal discomfort issues. It is not clear to me whether it helped. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md for a lot more detail.'),
  /* Anal swelling (2024-09-20) */
  ('Walnut','2024-09-21','2024-09-25','reactive to health issue','best-practices-around-anal-irritation.md','This was a stoppage of hard foods due to anal swelling on 2024-09-20; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-20-anal-swelling.md for more. Separately, I also had a mouth bite starting 2024-09-17, and the pausing of walnuts was helpful there as well. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md for details on the mouth bite.'),
  ('Sauerkraut / Kimchi','2024-09-21','2024-09-28','reactive to health issue','best-practices-around-anal-irritation.md','This was a stoppage of intense foods due to anal swelling on 2024-09-20; see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-20-anal-swelling.md for more. Separately, I also had a mouth bite starting 2024-09-17, and the pausing of sauerkraut / kimchi was helpful there as well. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md for details on the mouth bite.'),
  /* Dental cleaning precautions (cleaning 2024-10-09) */
  ('Walnut','2024-10-03','2024-10-11','proactive for upcoming event','best-practices-around-dental-cleaning-appointments.md','I stopped walnuts starting with the second meal on 2024-10-03, six days before my dental cleaning (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-09-dental-cleaning.md for details) to reduce the risk of injury and irritation that would make dental cleaning hard. I resumed two days after the dental cleaning, once I was confident that there were no additional injuries to the mouth (I waited two days because my mouth bite from https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-09-17-mouth-bite.md got a bit reinflamed after the dental cleaning, likely due to the poking around of the area with instruments, so I waited a couple of days to make sure it cleared.'),
  ('Sauerkraut / Kimchi','2024-10-02','2024-10-13','proactive for upcoming event','best-practices-around-dental-cleaning-appointments.md','I had my last sauerkraut / kimchi on 2024-10-01 morning, eight days before my dental cleaning (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-09-dental-cleaning.md for details), so the pause was effective 2024-10-02 (since I have sauerkraut / kimchi only with my morning meal). I resumed four days after the dental cleaning, after making sure that there were no persistent mouth injuries from the cleaning and no excess salivation.'),
  /* Extended conversation and meal delay (2024-10-16) */
  ('Walnut','2024-10-16','2024-10-18','proactive after event to prevent adverse health outcomes','best-practices-around-fasting.md','I paused walnuts consumption on 2024-10-16 after having a lengthy conversation where I talked for over four hours, and a not-totally-planned delay in my meal. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for more details. The adverse outcome I was trying to prevent (sore throat) was avoided, and I resumed walnuts on 2024-10-18.'),
  ('Sauerkraut / Kimchi','2024-10-16','2024-10-19','proactive after event to prevent adverse health outcomes','best-practices-around-fasting.md','I paused sauerkraut / kimchi consumption on 2024-10-16 after having a lengthy conversation where I talked for over four hours, and a not-totally-planned delay in my meal. See https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for more details. The adverse outcome I was trying to prevent (sore throat) was avoided, and I resumed sauerkraut on 2024-10-19.'),
  /* Anal swelling (2024-10-17) */
  ('Walnut','2024-10-20','2024-10-25','reactive to health issue','best-practices-around-anal-swelling.md','I paused walnuts consumption on 2024-10-20 after the anal swelling (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-17-anal-swelling.md for details) that had started on 2024-10-17 got worse. I had paused walnuts during the time of the anal swelling for other reasons (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for details) so walnuts were not causal to the anal swelling, but I think they exacerbated the pain when the swelling was at its peak. I resumed walnuts at 25-35% of a single meal on 2024-10-25, and then ramped back up over the next few days.'),
  ('Sauerkraut / Kimchi','2024-10-20','2024-10-27','reactive to health issue','best-practices-around-anal-swelling.md','I paused sauerkraut consumption on 2024-10-20 after the anal swelling (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-17-anal-swelling.md for details) that had started on 2024-10-17 got worse (I had paused sauerkraut on 2024-10-16 and resumed on 2024-10-19 for other reasons (see https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-10-16-extended-conversation-and-delay-in-meal.md for details) so sauerkraut was not causal, but resuming it did seem to exacerbate the pain when the swelling was at its peak. I resumed sauerkraut at 50% of usual levels on 2024-10-27.'),
  ('Sauerkraut / Kimchi','2024-11-03','2024-11-04','reactive to health issue','best-practices-around-anal-swelling.md','After consuming kimchi on 2024-11-02 (after a few weeks) I experienced anal itching on 2024-11-03, likely due to the reintroduction of capsaicin. For safety, I skipped sauerkraut consumption on 2024-11-03. I seemed to have recovered as of the morning of 2024-11-04, so I returned to consuming sauerkraut.');
