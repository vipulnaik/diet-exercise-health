create table length_measurement_types(
  type_name varchar(200) primary key,
  sided boolean,
  notes varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into length_measurement_types(type_name, sided, notes) values
  ('waist circumference after normal expiration',false,'Waist circumference is considered a measure of obesity and adiposity and therefore of metabolic health. Waist circumference can vary by anywhere from 1 to 4 inches based on where one is in the breathing cycle. The measurement standard for waist circumference is after normal expiration, where it is at a minimum.'),
  ('waist circumference after normal inspiration',false,'Waist circumference is considered a measure of obesity and adiposity and therefore of metabolic health. While the standard for measuring waist circumference is after normal expiration, it''s helpful to also record the value after normal inspiration to give a sense of the range of potential waist circumference values.'),
  ('lower neck circumference',false,'Circumference of the lower neck is a helpful overall measurement. Both neck muscle and neck fat can contribute to high values; the former is generally good and the latter is generally bad.'),
  ('foot length',true,'The length of my foot is relevant for shoe sizing.'),
  ('foot width',true,'The width of my foot is relevant for shoe sizing.'),
  ('wrist circumference',true,'Wrist circumference is a helpful overall measurement. Muscle and fat can both contribute to wrist circumference; increased wrist circumference due to fat is indicative of insulin resistance.'),
  ('height from glabella to central hairline',false,'This is a measure of forehead height. Changes to this measurement are indicative of hairline recession.'),
  ('height from outer edge of eyebrow to hairline above it',true,'This is a measure of temple height. Changes to this measurement are indicative of hairline recession in the temple areas (which are an area of early hairline recession). Differences between this height and the corresponding central height (from glabella to central hairline) reflect relative recession of the temples.');
