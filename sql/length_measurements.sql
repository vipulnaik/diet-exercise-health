create table length_measurements(
  measurement_date date,
  measurement_type varchar(200),
  side enum('left','right','N/A'),
  measurement_value_in_cm decimal(5,1),
  primary key (measurement_date, measurement_type, side),
  constraint length_measurement_type_exists foreign key (measurement_type) references length_measurement_types (type_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into length_measurements(measurement_date, measurement_type, side, measurement_value_in_cm) values
  /* foot measurements taken 2025-06-20 for shoe sizing */
  ('2025-06-20','foot length','left',26.2),
  ('2025-06-20','foot width','left',10),
  ('2025-06-20','foot length','right',26.5),
  ('2025-06-20','foot width','right',10),
  /* measurements taken 2025-12-20 */
  ('2025-12-20','waist circumference after normal expiration','N/A',72),
  ('2025-12-20','waist circumference after normal inspiration','N/A',75),
  ('2025-12-20','lower neck circumference','N/A',33),
  ('2025-12-20','height from glabella to central hairline','N/A',7.5),
  ('2025-12-20','height from outer edge of eyebrow to hairline above it','left',8.0),
  ('2025-12-20','height from outer edge of eyebrow to hairline above it','right',8.0),
  /* measurements taken 2025-12-21 */
  ('2025-12-21','wrist circumference','left',16),
  ('2025-12-21','wrist circumference','right',16),
  /* measurements taken 2026-04-01 */
  ('2026-04-01','height from glabella to central hairline','N/A',7),
  ('2026-04-01','vellus band width of central hairline','N/A',0.5),
  ('2026-04-01','height from outer edge of eyebrow to hairline above it','left',7.5),
  ('2026-04-01','vellus band width of temple hairline','left',1.5),
  ('2026-04-01','height from outer edge of eyebrow to hairline above it','right',7.5),
  ('2026-04-01','vellus band width of temple hairline','right',1.5),
  /* measurements taken 2026-10-21 */
  ('2026-10-21','wrist circumference','left',16),
  ('2026-10-21','wrist circumference','right',16),
  ('2026-10-21','height from glabella to central hairline','N/A',6),
  ('2026-10-21','vellus band width of central hairline','N/A',1.5),
  ('2026-10-21','height from outer edge of eyebrow to hairline above it','left',6),
  ('2026-10-21','vellus band width of temple hairline','left',2), /* most of the vellus band hairs are stubble-length */
  ('2026-10-21','height from outer edge of eyebrow to hairline above it','right',6),
  ('2026-10-21','vellus band width of temple hairline','right',2), /* the vellus hairs are notably longer on the right side where they are a few cm long */
  ('2026-10-21','lower neck circumference','N/A',36), /* suspiciously larger than the previous measurement, which might be due to measurement precision issues, though I did do multiple measurements and always got in the 35.5-38 range */
  ('2026-10-21','foot length','left',25.7),
  ('2026-10-21','foot width','left',10),
  ('2026-10-21','foot length','right',26.3),
  ('2026-10-21','foot width','right',10),
  ('2026-10-21','waist circumference after normal expiration','N/A',75), /* initial reading came to 79, but I did a later reading with tighter wrapping and got 75 */
  ('2026-10-21','waist circumference after normal inspiration','N/A',77); /* initial reading came to 81, but I did a later reading with tighter wrapping and got 77 */
