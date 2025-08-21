create table food_waste(
  `waste_date` date not null,
  `food_type` varchar(200),
  `quantity` decimal(8,4),
  `after_preparation_or_opening` boolean,
  `notes` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- I started keeping track of food waste on 2021-10-31!

insert into food_waste(waste_date, food_type, quantity, after_preparation_or_opening, notes) values
  ('2021-10-31','Eggplant',1,false,'The eggplant had spoiled, so I threw it away.'),
  ('2021-11-06','Green bell pepper',1,false,'The bell pepper had spoiled, so I threw it away.'),
  ('2021-12-09','TJ Baby Spinach',0.3,true,'Some left-over spinach had spoiled, so I threw it away.'),
  ('2024-05-04','TJ Whole Wheat Lavash',4.25,true,'I had cut down my wheat consumption significantly after the abdominal pain https://github.com/vipulnaik/diet-exercise-health/blob/master/events/2024/2024-04-25-abdominal-pain.md and as a result the lavash that I had purchased immediately prior to that had gotten four days past its best buy date of 2024-04-30. In my experience, the bread starts becoming difficult to consume about 5 days past its best by date, and given my anecdotal experience that wheat might be a little more difficult to digest in my not-yet-fully-recovered condition, it seemed unlikely that there would be overlap between the time period the bread stayed good and the time period I would be able to consume it. So, to simplify matters for myself (though with a lot of reluctance since I don''t like to waste food) I threw away the bread. I did look into food banks but based on the information online it seemed unlikely that foods banks would accept it past its best by date.'),
  ('2024-05-06','TJ Baby Spinach',0.5,false,'I had decided the previous week to use kale instead of spinach for my meal prep that week, in order to keep oxalates in check (out of concern that my abdominal pain might be due to kidney issues), and left the spinach for use later. However, the spinach ended up spoiling. In the future, this kind of situation is less likely as I shouldn''t be changing my mind *after* purchasing, and in any case should not be overstocking spinach now that I''ve decided to mix it up with kale.'),
  ('2024-05-16','TJ Whole Wheat Lavash',0.22,true,'I had to throw out two out of the six pieces in one pack of lavash after it crossed its best by date as I had a negative reaction to the consumption of the rest of the lavash.'),
  ('2024-05-16','Near East Couscous',1,false,'I had to throw this out as it was a few months past its best buy date. I had purchased it ten months ago on 2023-07-12.'),
  ('2024-06-05','India House Oregon rice',0.3,true,'I threw out a little of the left-over rice as I didn''t feel like eating it.'),
  ('2024-06-05','India House Oregon aloo sag',0.3,true,'I threw out a little of the left-over aloo sag as I didn''t feel like eating it.'),
  ('2024-06-07','TJ Sauerkraut',0.6,true,'I left behind this sauerkraut in the hotel room in Portland as I wasn''t able to finish it and it seemed too messy to carry back.'),
  ('2024-06-28','TJ Kale',0.1,true,'Some of the kale fell out while I was trying to empty the kale into the pot for cooking.'),
  ('2024-06-28','Beefsteak tomato',2,false,'I noticed two of the four left-over beefsteak tomatoes had spoiled so I threw them out.'),
  ('2024-08-12','TJ Green Lentils',0.9,true,'I had soaked these lentils on 2024-08-07 (to start eating on 2024-08-08) when I felt recovered from my abdominal pain issues, and thinking that lentils would be lower in FODMAP than peas, that I had seemed to tolerate reasonably okay. But I seemed to have a bad reaction to the lentils on 2024-08-08 after eating an amount that would be a bit lower than my usual amount (I consumed about 10% of the lentils on that first day). I decided to wait for two good days before gently resuming. But by 2024-08-12 it became clear that the earliest I could resume the lentils would be 2024-08-15, which would be at the one-week mark, by which time spoilage starts becoming a concern. Given the fridge space and glass food storage these were using up, I decided to throw them out and free up the fridge space and the glass food storage as well as close this chapter out.'),
  ('2024-08-29','Beefsteak tomato',0.5,false,'I threw off some tomato pieces that were smelling a little weird when doing food preparation, totaling to about half a tomato.'),
  ('2024-09-19','TJ English Shelled Peas',0.2,false,'A few peas fell off (about 20% of one packet) from the packet when I opened it in order for use.'),
  ('2024-09-28','TJ Green Lentils',0.08,false,'When I was draining the water used to soak the green lentils, some of the lentils on top fell out.'),
  ('2024-09-30','TJ English Shelled Peas',0.1,false,'A few peas fell off (about 10% of one packet) from the packet when I peeled off the paperboard label prior to opening for use.'),
  ('2024-10-30','Beefsteak tomato',0.25,true,'A few tomato pieces fell out from an overloaded pot at various points of time in the cooking process.'),
  ('2024-10-30','TJ Kale',0.05,true,'Some of the kale I poured into the pot fell out as part of the pouring process.'),
  ('2024-11-16','Gold potatoes 5 lb',0.97,false,'I had stored these in the freezer and then moved them to the fridge. The potatoes became mush and leaked into the vegetable tray I had to throw them out. One potato that I had used with the previous prep was excluded from this discard.'),
  ('2025-01-01','TJ Kale',0.05,false,'A little bit of kale dropped when dumping it into the pot for preparation.'),
  ('2025-03-23','Beefsteak tomato',1,false,'The tomato had spoiled quite a bit so I threw it out rather than use it for potatoes prep.'),
  ('2025-04-02','Beefsteak tomato',1,false,'The tomato had spoiled quite a bit so I threw it out rather than use it for potatoes prep.'),
  ('2025-05-01','Beefsteak tomato',1,false,'The tomato had spoiled quite a bit so I threw it out rather than use it for my custom tomatoes prep.'),
  ('2025-06-05','Urban Platter Sauerkraut',0.6,true,'About 60% of the sauerkraut bottle was still left when I had to stop consuming it as I left India. The contents are strictly not wasted as I expect it to get consumed by others, but in terms of my own food accounting I should consider this wasted.'),
  ('2025-06-22','Red bell pepper',0.25,false,'Some part of the red bell pepper purchased 2025-06-20 appeared to have blackened. I threw out that and some of the surrounding area.'),
  ('2025-08-10','Eggplant',0.1,false,'The bottom part of the eggplant had developed indentations, so I threw it out.'),
  ('2025-08-20','Eggplant',0.1,false,'The bottom part of the eggplant had developed indentations, so I threw it out.');
  /* Double-check the date before committing */
