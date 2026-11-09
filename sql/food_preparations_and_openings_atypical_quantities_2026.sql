update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no eggplant' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2026-06-06') or
  (preparation_or_opening_date between '2026-06-26' and '2026-07-04') or
  (preparation_or_opening_date between '2026-08-07' and '2026-08-16') or
  (preparation_or_opening_date between '2026-09-13' and '2026-10-12') or
  (preparation_or_opening_date = '2026-11-08')
);

update food_preparations_and_openings set atypical_quantity_reason = 'compensation for tomato shortfall' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2026-10-22')
);
