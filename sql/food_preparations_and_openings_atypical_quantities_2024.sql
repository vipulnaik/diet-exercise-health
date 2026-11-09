update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no carrots' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2024-09-08')
);

update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no eggplant' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2024-11-20')
);
