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
  ('2024-05-04','TJ Whole Wheat Lavash',4.25,'I had cut down my wheat consumption significantly after the abdominal pain https://github.com/vipulnaik/diet-exercise-health/blob/master/notes/2024-04-25-abdominal-pain.md and as a result the lavash that I had purchased immediately prior to that had gotten four days past its best buy date of 2024-04-30. In my experience, the bread starts becoming difficult to consume about 5 days past its best by date, and given my anecdotal experience that wheat might be a little more difficult to digest in my not-yet-fully-recovered condition, it seemed unlikely that there would be overlap between the time period the bread stayed good and the time period I would be able to consume it. So, to simplify matters for myself (though with a lot of reluctance since I don''t like to waste food) I threw away the bread. I did look into food banks but based on the information online it seemed unlikely that foods banks would accept it past its best by date.');
