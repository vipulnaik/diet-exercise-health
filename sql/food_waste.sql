create table food_waste(
  `waste_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(11,2),
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- I started keeping track of food waste on 2021-10-31!

insert into food_waste(waste_date, food_type, quantity, notes) values
  ('2021-10-31','Eggplant',1,'The eggplant had spoiled, so I threw it away.'),
  ('2021-11-06','Green bell pepper',1,'The bell pepper had spoiled, so I threw it away.'),
  ('2021-12-09','TJ Baby Spinach',0.3,'Some left-over spinach had spoiled, so I threw it away.'),
  ('2024-05-04','TJ Whole Wheat Lavash',4.25,'I had cut down my wheat consumption significantly after the abdominal pain https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2024-04-25-abdominal-pain.md and as a result the lavash that I had purchased immediately prior to that had gotten four days past its best buy date of 2024-04-30. In my experience, the bread starts becoming difficult to consume about 5 days past its best by date, and given my anecdotal experience that wheat might be a little more difficult to digest in my not-yet-fully-recovered condition, it seemed unlikely that there would be overlap between the time period the bread stayed good and the time period I would be able to consume it. So, to simplify matters for myself (though with a lot of reluctance since I don''t like to waste food) I threw away the bread. I did look into food banks but based on the information online it seemed unlikely that foods banks would accept it past its best by date.'),
  ('2024-05-06','TJ Baby Spinach',0.5,'I had decided the previous week to use kale instead of spinach for my meal prep that week, in order to keep oxalates in check (out of concern that my abdominal pain might be due to kidney issues), and left the spinach for use later. However, the spinach ended up spoiling. In the future, this kind of situation is less likely as I shouldn''t be changing my mind *after* purchasing, and in any case should not be overstocking spinach now that I''ve decided to mix it up with kale.'),
  ('2024-05-16','TJ Whole Wheat Lavash',0.25,'I had to throw out this lavash after it crossed its best by date as I had a negative reaction to the consumption of the rest of the lavash.'),
  ('2024-05-16','Near East Couscous',1,'I had to throw this out as it was a few months past its best buy date. I had purchased it ten months ago on 2023-07-12.');
