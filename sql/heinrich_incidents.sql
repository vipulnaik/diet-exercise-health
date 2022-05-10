/* In honor of Heinrich's law, these are incidents where there is no ultimate damage but that got close */

create table heinrich_incidents(
  date date,
  incident_type enum('Walking stumble','Running stumble','Object near-drop','Object drop without damage'),
  incident_details varchar(2000),
  protocol_updates varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into heinrich_incidents(date, incident_type, incident_details, protocol_updates) values
  ('2022-04-20','Object near-drop','While putting on my mask because others were nearby, while holding my phone, my phone slipped from my hand, but I was able to catch it quickly.','(1) Remove the phone from my hand when using the hand to do other stuff (I violated this once later in a similar situation where I held my phone while trying to put on a mask). (2) Grip the phone strongly particularly when it''s more than a foot above the surface below or the surface below is rough, and particularly if multiplexing (I continued to follow this even for the violation of (1)). (3) Get a screen protector for my phone since screen damage is the most likely damage from falls from small heights, based on both my personal experience and phone drop test data available online.'),
  ('2022-04-30','Object drop without damage','While taking out rotting potatoes when cleaning out my old place, I failed to notice a glass tray attached to the bottom of the potatoes. The tray came apart and fell to the floor but did not break.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-04','Object drop without damage','When moving an appliance to the living room in my old place, I failed to notice a glass mug for measurements that was hanging from the wires. It fell without damage.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-10','Running stumble','While running on Russell Street, one of my feet hit a bumpy surface and slipped slightly. I did not lose my balance and continued running forward.','No general protocol changes identified yet; I''m already moderately careful and plan to continue being more mindful.');

