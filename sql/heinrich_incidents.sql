/* In honor of Heinrich's law, these are incidents where there is no ultimate damage but that got close;
   Heinrich's law woud suggest that these are about 300x as frequent as accidents with damage.
   In some cases, there are implications for protocol updates, but in many others, the frequency is within
   the range of expectations, or the situation is sufficiently unusual, that no clear protocol updates
   are needed.
*/

create table heinrich_incidents(
  date date,
  date_precision enum('day','month','quarter','year'),
  incident_type enum('Walking stumble','Running stumble','Object near-drop','Object drop without damage'),
  incident_details varchar(2000),
  protocol_updates varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* I started systematically recording these in 2022-05; the list of backfilled historical incidents
   is probably incomplete. */
insert into heinrich_incidents(date, date_precision, incident_type, incident_details, protocol_updates) values
  ('2017-04-01','quarter','Object drop without damage','While placing my phone on a countertop or removing it (I don''t remember) I dropped the phone. It fell on its corner; there was no visible internal or external damage. The height of drop was about 3 feet.','I resolved to be more careful about placing the phone carefully on surfaces.'),
  ('2021-10-01','quarter','Object drop without damage','I was talking on the phone with headphones plugged in while cooking. When I got up to take my food to the kitchen, I pulled on the headphones getting up, pulling the phone causing it to drop (face up) onto the floor. This drop of approximately 3 feet did no visible damage to the phone. The phone was about six months old at the time.','I resolved to be more mindful of whether I''m talking on the phone when getting up.'),
  ('2022-04-20','day','Object near-drop','While putting on my mask because others were nearby, while holding my phone, my phone slipped from my hand, but I was able to catch it quickly.','(1) Remove the phone from my hand when using the hand to do other stuff (I violated this once later in a similar situation where I held my phone while trying to put on a mask). (2) Grip the phone strongly particularly when it''s more than a foot above the surface below or the surface below is rough, and particularly if multiplexing (I continued to follow this even for the violation of (1)). (3) Get a screen protector for my phone since screen damage is the most likely damage from falls from small heights, based on both my personal experience and phone drop test data available online.'),
  ('2022-04-30','day','Object drop without damage','While taking out rotting potatoes when cleaning out my old place, I failed to notice a glass tray attached to the bottom of the potatoes. The tray came apart and fell to the floor but did not break.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-04','day','Object drop without damage','When moving an appliance to the living room in my old place, I failed to notice a glass mug for measurements that was hanging from the wires. It fell without damage.','This is a highly unusual situation where I was cleaning out stuff that I wasn''t familiar with. It''s important to be careful in such cases, but it is not a typical situation.'),
  ('2022-05-10','day','Running stumble','While running on Russell Street, one of my feet hit a bumpy surface and slipped slightly. I did not lose my balance and continued running forward.','No general protocol changes identified yet; I''m already moderately careful and plan to continue being more mindful.');

