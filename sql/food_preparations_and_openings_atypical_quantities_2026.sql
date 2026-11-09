update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no eggplant' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date preparation_or_opening_date between '2026-09-13' and '2026-10-12') or
  (preparation_or_opening_date = '2026-11-08')
);

update food_preparations_and_openings set atypical_quantity_reason = 'compensation for tomato shorfall' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2026-10-22')
);
