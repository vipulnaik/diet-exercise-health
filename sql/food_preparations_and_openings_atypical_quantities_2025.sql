update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no eggplant' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2025-01-01')
);

update food_preparations_and_openings set atypical_quantity_reason = 'compensation for no green bell peppers' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2025-01-07') or
  (preparation_or_opening_date between '2025-04-10' and '2025-05-02')
);

update food_preparations_and_openings set atypical_quantity_reason = 'partial spoilage' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date = '2025-06-22')
);

update food_preparations_and_openings set atypical_quantity_reason = 'unusual purchased quantities' where food_type = 'Red bell pepper' and (
  (preparation_or_opening_date between '2025-08-01' and '2025-08-03')
);
