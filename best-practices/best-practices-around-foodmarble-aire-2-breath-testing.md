# Best practices around FoodMarble Aire 2 breath testing

Related documents:

* [2024-08-21: FoodMarble Aire 2 purchase decision process](2024-08-21-foodmarble-aire-2-purchase-decision-process.md)
* [2024-08-24: FoodMarble Aire 2 setup](2024-08-21-foodmarble-aire-2-setup.md)
* [foodmarble_aire_2_breath_tests.sql](foodmarble_aire_2_breath_tests.sql)

## General cautions

* Generally, try to keep a gap of at least 1 hour between successive
  attempts, including failed attempts.

* Do not cancel an attempt even if it's not accurate; try to go
  through with it and just discard or discount it.

* Try to not do more than 7 attempts in a day, including failed
  attempts. Unless plotting a time series, try to keep to 3 or fewer
  attempts a day.

* Don't rely on any individual result for diagnostic purposes, and be
  prepared for the device to fail to produce a reading at any given
  attempt.

* If doing successive attempts within a few hours, and keeping the
  device out, keep it in its case to protect from moisture. If
  charging, keep it partiaully within its case.

## Things to do in advance of the breath testing

* Keep track of the time of finishing the last meal, as this will be
  part of the information I log.

* It is advisable to not do this between food consumption and the
  post-consumption saltwater rinse and floss. In other words, make
  sure to finish the saltwater rinse. This reduces the risk of oral
  bacteria affecting the results.

* It is advisable to not drink water and not use lip balm for at least
  15 minutes prior to the reading.

## Starting about 10 minutes prior to the test time

* Get my phone out.

* Get the device out. The phone and device should be close by for the
  duration of the recording. Keep the device in its case until shortly
  before the test, but remove it from the box.

* Open the FoodMarble app on my phone, click the + button at the
  bottom, and select Breath.

* Double-tap on the device and watch the phone connect to it.

* If prompted, double-tap again.

## For the actual breath test, once the device is ready

* If I had put the device on charging, unplug it first. It'll be hard
  to unplug once I start the other steps.

* If the device is in its case, remove it from its case.

* Swallow saliva right before the test to reduce the risk of drool on
  the mouthpiece. Wipe my lips if they are wet.

* After slightly less than a full normal breath out (i.e., maybe only
  go something like 75% of the way to the breath out), hold your
  breath for at least three seconds by pinching the nose, while
  pressing the button on the device.

  * Doing a full normal breath out runs the risk of not having enough
    air to blow into the device later.

  * On the other hand, doing a breath in runs the risk of there being
    too much outside air.

* While keeping the nose pinched, put the mouth on the mouthpiece and
  breathe out slowly until the phone says that the breath is completed
  and shows the fermentation scores.

## If the breath test fails

* If the response had shown that it had started receiving my breath
  but didn't get enough, it's likely that breathing in a bit more or
  breathing out a bit less would work.

* If, on the other hand, the response had shown no ack of my breathing
  out, then it's likely a technical error. Before the next try, I
  should fully charge, unpair, and hard reset.

* If I do not need a measurement immediately, it is recommended to
  wait at least 20 minutes before trying again, and preferable to wait
  about 2-3 hours or more.

## After the breath test

* Save the breath test results in the SQL file.

* Remove the mouthpiece and wipe **only the outer side** with hand
  sanitizer (don't wipe the inner side as that will touch the device
  directly when I put it back on; also do not pump hand sanitizer
  directly onto the mouthpiece but spread it with a finger). Leave it
  to dry for at least 20 minutes before reattaching.

* Charge up the device while waiting for the mouthpiece to dry.

## Putting it back

* Before affixing the mouthpiece back, make sure that it is completely
  dry. Complete drying takes somewhere between 15 minutes and 45
  minutes.

* Put the mouthpiece back on the device and put it in the case.

* Put it back in the box.

* If I took the USB charging cable out, put that back in too.
