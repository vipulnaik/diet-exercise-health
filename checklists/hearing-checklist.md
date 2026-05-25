# Hearing checklist

The execution log is [here](../logs/hearing-checklist-log.md).

A [private Claude
conversation](https://claude.ai/chat/0afeed5f-bc22-4411-9658-8426e77de3a3)
helped inform several tweaks to the checklist after its initial
construction, and was also a key input to the parking lot section.

## Quick things I should do in pieces every so often (ideally at least once every 10 days)

### Quick minimum audible volume and balance tests

For these pieces, I log in my Slack self-chat logs when I execute. I
don't formally follow the checklist; I just do them whenever I happen
to already be listening to the song in question and have a minute to
spare. I record completion in the Slack self-chat logs. I generally do
the over-ear headphones and bone conduction headphones portion
separately. Search for `lmlyd` in Slack self-chat logs.

So I can skip these during the formal execution. However, if during
formal execution I find that I haven't done them at all for at least
21 days, I should do them along with the formal execution.

- Play https://www.youtube.com/watch?v=eVVaqFDG6Fo and determine minimum audible volume with over-ear headphones (expected to be 1/64 system volume at about 25% YouTube volume) and with bone conduction headphones (expected to be 1/16 system volume at <= 50% for Yomdud)
  - over-ear headphones: log message (if passed) `lmlyd minimum audible volume test passed (both ears) with over-ear headphones`, otherwise document in more detail and determine followup actions
    - [ ] Make sure that within-YouTube volume is set to max
    - [ ] Left ear with over-ear headphones (if the headphones are oriented wrong, re-wear the headphones)
    - [ ] Right ear with over-ear headphones
    - [ ] Reduce within-YouTube volume to 50%
    - [ ] Left ear with over-ear headphones (if the headphones are oriented wrong, re-wear the headphones)
    - [ ] Right ear with over-ear headphones
  - bone conduction headphones: log message: `lmlyd minimum audible volume test passed (both ears) with bone conduction headphones`, otherwise document in more detail and determine followup actions
    - [ ] Make sure that within-YouTube volume is set to max
    - [ ] Left ear with bone conduction headphones
    - [ ] Right ear with bone conduction headphones
    - [ ] Reduce within-YouTube volume to 50%
    - [ ] Left ear with bone conduction headphones
    - [ ] Right ear with bone conduction headphones
- Check for balance when I play https://www.youtube.com/watch?v=eVVaqFDG6Fo
  - over-ear headphones: log message: `lmlyd balance test passed with over-ear headphones`, otherwise document in more detail and determine followup actions
    - [ ] Over-ear headphones, when set to balanced, feel centered rather than skewed to one side
    - [ ] For over-ear headphones, switching back and forth between all left to all right does not change perceived loudness
  - bone conduction headphones: log message: `lmlyd balance test passed with bone conduction headphones`, otherwise document in more detail and determine followup actions
    - [ ] Bone conduction headphones, when set to balanced, feel centered rather than skewed to one side
    - [ ] For bone conduction headphones, switching back and forth between all left to all right does not change perceived loudness

END OF SECTION: Quick minimum audible volume and balance tests

### Quick max frequency hearing test (intended only for over-ear headphones)

This is the part of the long max frequency hearing test that is
focused only on confirming that I can still hear till 20000 Hz.

Play https://www.youtube.com/watch?v=zUmbmssqHOY starting around 1:40
to 1:50 (20 to 10 seconds prior to the end), listen to it with my eyes
closed, and confirm that I open my eyes right after the clip ends. I
should do the left and right ear separately.

I should log this to Slack as `quick max frequency hearing test passed
(both ears) with over-ear headphones`.

Remember to return to normal volume and set balance back to neutral.

If I notice that the sound volume differs significantly between the
ears (even if the test passes), do the followup high-frequency balance
disruption check.

END OF SECTION: Quick max frequency hearing test

### Quick tonal loss point test (intended only for over-ear headphones)

This is a part of the long max frequency hearing test that is focused
only on confirming that I can my tonal loss point is at or above 13000
Hz.

Play https://www.youtube.com/watch?v=zUmbmssqHOY starting 1:28 and
make sure I can hear clear tonality in both left and right ear for a
few seconds after that. Finding the exact tonal loss point is not
important.

I should log this to Slack as `quick tonal loss point test passed
(both ears) with over-ear headphones`.

Remember to return to normal volume and set balance back to neutral.

If I notice that the sound volume differs significantly between the
ears (even if the test passes), do the followup high-frequency balance
disruption check.

END OF SECTION: Quick tonal loss point test

### Followup high-frequency balance disruption check

This is a followup check to either the quick max frequency hearing
test or the quick tonal loss point test that I should do if either
test surfaces imbalances in sound volume between the ears. The goal is
to find out the frequency at which the imbalance starts materializing.

Play https://www.youtube.com/watch?v=zUmbmssqHOY starting around 0:40
and monitor how the sound imbalance evolves. Identify the point at
which there is a clear shift in the direction of the expected ear.

I should log this to Slack as `quick high-frequency balance
disruption: around <frequency> starting toward <left/right, whichever
is louder> ear`.

Remember to return to normal volume and set balance back to neutral.

It's worth noting that at low frequencies, with over-ear headphones, and
absent significant earwax accumulation, I have a slight bias toward
sounds being louder in the left ear, which is likely driven by better
middle ear processing. I want to get beyond this -- at around 4000 Hz
that middle ear processing advantage should disappear and things
should be roughly neutral. Note whether there's a shift toward either
ear after that.

I've historically found shifts at around 8000 Hz toward the right ear,
which I suspect to be due to subclinical levels of earwax
accumulation, but more data is needed.

END OF SECTION: Followup high-frequency balance disruption check

### Quick auditory reaction time test (intended only for over-ear headphones)

Test to play: https://playback.fm/audio-reaction-time

This test should be done with over-ear headphones, since bone conduction
headphones have a latency of a few hundred milliseconds.

Play this once with the left ear and once with the right ear, and
record in Slack self-chat logs with message of the format: `auditory
reaction time: <number> ms with left ear, <number> ms with right
ear`. Note that I may not always add a space between `<number>` and
ms.

The values should be around 300 ms or lower; values above 350 ms are
concerning and might call for a replay.

## More advanced portion of test with formal recording, that I should do formally at the periodic interval

### Audit portion

This portion is an audit of the quick tests and my regular sound habits.

- [ ] Check recent sound volume patterns by searching `/16` in Slack self-chat logs, summarize here, and confirm that these are within the guidelines in [best practices around sound](../best-practices/best-practices-around-sound.md)
- [ ] Verify that I have been doing the quick minimum audible volume and balance tests regularly with over-ear headphones (search Slack self-chat logs for `lmlyd over-ear`)
- [ ] Verify that I have been doing the quick minimum audible volume and balance tests regularly with bone conduction headphones (search Slack self-chat logs for `lmlyd bone`)
- [ ] Verify that I have been doing the quick max freuqency hearing test regularly with over-ear headphones (search Slack self-chat logs for `quick max frequency`)
- [ ] Verify that I have been doing the quick tonal loss point test regularly with over-ear headphones (search Slack self-chat logs for `quick tonal loss`)
- [ ] Verify that I have been doing the quick auditory reaction time test regularly with over-ear headphones (search Slack self-chat logs for `auditory reaction time`)

END OF SECTION: Audit portion

### Cycling portion

These pieces require more active concentration as well as
documentation steps, so I should do these only as part of the periodic
execution (about once every two months) or if diagnosing a specific
issue or suspected issue.

By default, I should cycle between these test sets at every periodic
checklist execution. Each test set is expected to take 15 to 30
minutes. For instance, if I do the checklist every 2 months, and there
are 3 test sets to cycle between, then I'll effectively do each test
every 6 months. If I skip a 2-month execution, then at the next
execution I should cover two test sets to make up. If I skip two or
more consecutive 2-month executions, I should do all test sets at the
next execution.

Remember after each test set to return the volume and balance to
normal. This is important to avoid getting a "blast" of noise when I
next use the headphones.

#### (1) Frequency-specific hearing test in the normal frequency range (500 Hz to 4000 Hz)

Run through and record results in SQL for online hearing test at
https://www.resound.com/en-us/online-hearing-test

**Night time is preferred due to less ambient noise. Wait for troughs
  in outdoor noise to confirm readings.**

- [ ] Put on over-ear headphones
- [ ] Make sure that the volume of the computer is set to max
- [ ] Check that the left speaker is on the left ear and the right speaker is on the right ear (this might require temporary balance adjustment)
- [ ] Switch balance back to the middle
- [ ] Do the Resound online test and record results as you go along
- [ ] Put on bone conduction headphones
- [ ] Make sure that the volume of the computer is set to max
- [ ] Check that the left speaker is on the left ear and the right speaker is on the right ear (this might require temporary balance adjustment)
- [ ] Switch balance back to the middle
- [ ] Do the Resound online test and record results as you go along
- [ ] Compare with previous results
  - [ ] If there is significant degradation compared to the previous results, schedule a followup test for a week later

END OF SECTION: (1) Frequency-specific hearing test in the normal frequency range (500 Hz to 4000 Hz)

#### (2) Max frequency hearing test

Do a max frequency hearing test using
https://www.youtube.com/watch?v=zUmbmssqHOY

This is a fuller version of the quick max frequency hearing test. It
differs from the quick version in the following respects:

* We start from the beginning frequencies so we get a clearer picture
  of how the minimum audible volume changes with frequency.

* We also record the point at which musical tonality is lost, which
  tends to be way below the point at which the sound becomes inaudible
  (current estimate of loss of musical tonality is about 13500 Hz at
  max volume, whereas the sound stays audible to me right till the
  end).

over-ear headphones, left ear only:

- [ ] Over-ear headphones, start the video, setting volume to half the max and balance to all on left ear
- [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, and hit space bar; keep increasing volume as needed as the sound gets fainter and fainter
- [ ] Estimate the point at which I lose all sense of musical tone
  - Open eyes once I can no longer sense musical tone (and it just sounds like noise) even at max volume
  - Pause the video if it is still playing
  - Frequency estimate: ??
- [ ] Reposition fingers, resume play, and close eyes, to now estimate the point at which I cannot hear anything at all
  - IMPORTANT NOTE: Only open eyes when I definitely feel like I can't hear sound; if I feel a bit in doubt, keep eyes closed.
  - Pause video if it is still playing (only *after* opening eyes)
  - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
  - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
  - Final frequency estimate: ???

over-ear headphones, right ear only:

- [ ] Over-ear headphones, start the video, setting volume to half the max and balance to all on right ear
- [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, and hit space bar; keep increasing volume as needed as the sound gets fainter and fainter
- [ ] Estimate the point at which I lose all sense of musical tone
  - Open eyes once I can no longer sense musical tone (and it just sounds like noise) even at max volume
  - Pause the video if it is still playing
  - Frequency estimate: ??
- [ ] Reposition fingers, resume play, and close eyes, to now estimate the point at which I cannot hear anything at all
  - IMPORTANT NOTE: Only open eyes when I definitely feel like I can't hear sound; if I feel a bit in doubt, keep eyes closed.
  - Pause video if it is still playing (only *after* opening eyes)
  - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
  - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
  - Final frequency estimate: ???

Wrap up over-ear headphones:

- [ ] Remember to set volume back to low and balance to neutral

Bone conduction headphones, left ear:

- [ ] Bone conduction headphones, start the video, setting volume to half the max and balance to all on left ear
- [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, and hit space bar; keep increasing volume as needed as the sound gets fainter and fainter
- [ ] Estimate the point at which I lose all sense of musical tone
  - Open eyes once I can no longer sense musical tone (and it just sounds like noise) even at max volume
  - Pause the video if it is still playing
  - Frequency estimate: ??
- [ ] Reposition fingers, resume play, and close eyes, to now estimate the point at which I cannot hear anything at all
  - IMPORTANT NOTE: Only open eyes when I definitely feel like I can't hear sound; if I feel a bit in doubt, keep eyes closed.
  - Pause video if it is still playing (only *after* opening eyes)
  - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
  - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
  - Final frequency estimate: ???

Bone conduction headphones, right ear:

- [ ] Bone conduction headphones, start the video, setting volume to half the max and balance to all on right ear
- [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, and hit space bar; keep increasing volume as needed as the sound gets fainter and fainter
- [ ] Estimate the point at which I lose all sense of musical tone
  - Open eyes once I can no longer sense musical tone (and it just sounds like noise) even at max volume
  - Pause the video if it is still playing
  - Frequency estimate: ??
- [ ] Reposition fingers, resume play, and close eyes, to now estimate the point at which I cannot hear anything at all
  - IMPORTANT NOTE: Only open eyes when I definitely feel like I can't hear sound; if I feel a bit in doubt, keep eyes closed.
  - Pause video if it is still playing (only *after* opening eyes)
  - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
  - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
  - Final frequency estimate: ???

Wrap up bone conduction headphones:

- [ ] Remember to set volume back to low so that I don't get a blast in my ears the next time I play using the headphones

END OF SECTION: (2) Max frequency hearing test

#### (3) Speech in noise test

Run through and report results of
https://www.medel.com/en-us/about-hearing/hearing-test/speech-in-noise

Adjust volume through the test for what lets me hear best.

- [ ] Over-ear headphones, left ear
- [ ] Over-ear headphones, right ear
- [ ] Over-ear headphones, balanced
- [ ] Bone conduction headphones, left ear (okay to press against skin)
- [ ] Bone conduction headphones, right ear (okay to press against skin)
- [ ] Bone conduction headphones, balanced (okay to press against skin)

END OF SECTION: (3) Speech in noise test

## Parking lot: potential tests that did not make it to the regular checklist

### Sound localization tests

Sound localization refers to the process of determining the location a
sound is coming from. For sounds from moving sources, this can also be
extended to the process of determining the movement trajectory of the
sound source.

#### The auditory, subcortical, and cortical techniques used for sound localization

The purely auditory aspect of sound localization for stationary
objects has two main pieces:

* Interaural time differences (ITDs): Sound reaches the ears at
  slightly different times, because of different distances from the
  sound source to ears. This works best for low frequencies (below
  about 1500-1700 Hz) since these frequencies can wrap around the head
  (diffraction), so that the time difference between the ears is
  indicative of the physical distance of the sound source from the two
  ears. Also, particularly in the case of sounds that are uniform over
  time, a lower frequency means a clearer phase difference that allows
  the time difference to be calculated precisely; at higher
  frequencies, the time difference is large enough to cover several
  iterations of the sound wave, so that the phase difference doesn't
  accurately capture the time difference.

  1500-1700 Hz is roughly the frequency at which the wavelength of
  sound equals the diameter of the head, which is the relevant
  threshold for both the diffraction effect and phase-based
  calculation to work.

* Interaural level differences (ILDs): Sound reaches the ears at
  different amplitudes and hence different perceived loudness. This
  works best for high frequencies. These frequencies cannot diffract
  around the head, which means that the "head shadow effect" operates
  -- the ear opposite the sound doesn't get the sound directly from
  the sound source because the head blocks delivery. Instead, it'll
  usually get a fainter sound coming from diffraction in the air or
  reflection off of other objects; such sound will be noticeably lower
  in volume.

  1500-1700 Hz is roughly the threshold at which ILD takes over from
  ITD as the dominant method for localization. However, it's only at
  frequencies above 8000 Hz that ILD starts shining.

ITDs and ILDs are good for lateral sound localization -- is it coming
from the left or the right, at what angle, and at what distance? The
dorsal-ventral axis and superior-inferior axis are not directly
well-covered by these, so head rotations as well as the pinna help
with sound localization here.

In addition to the purely auditory aspect of localization for
stationary sound sources, there are two other sources of information
in practice:

* Doppler effects for moving sound sources: The brain can process
  subtle frequency changes to estimate the direction and speed of
  movement of a sound source , though sequential localization of the
  sound source across time is still the main way that motion is
  inferred.

* Visual cues: There is a phenomenon of "visual capture" where, when
  visual cues are present, they can override auditory cues. If both
  are in agreement, that is great, but if they come apart, the visual
  cues can mislead. Examples include ventiloquism and how it's easy to
  believe that the sound in a video is coming from the mouths of the
  people speaking.

* Other information: The brain uses other information to infer a sound
  source. For instance, gross localization might say that a sound is
  coming from the right, but knowledge of a specific likely source for
  that kind of sound that's roughly in the area might lead to a more
  precise identification of the sound source.

There are many other nuances, including reverb/echo correction (using
subcortical techniques suchas the precedence effect), room acoustics
learning (where reverb prediction in an environment gets better over
time as one learns the environment better), and the challenge of
dealing with sound diffracting in through doors and windows. These are
covered more in the Claude conversation.

#### Naturalistic sound localization

A lot of day-to-day sound localization is helped by visual cues and
other information. For instance, I know that the refrigerator hum
comes from the refrigerator, so my ability to locate it precisely is
not a proof of sound localization.

The one day-to-day experience that tests my sound localization
repeatedly in the real world: approaching intersections while walking,
I usually already have a decent sense of whether there are any
vehicles that are likely to be near the intersection by the time I
arrive. This is a real-world test that involves localizing the source
of sound, using volume and Doppler cues to determine whether the
vehicle is moving toward or away from the intersection, and
integrating all of this into an estimate of where things will be by
the time I arrive. I am rarely surprised by vehicles suddenly emerging
that I didn't expect, though the reverse mistake -- thinking there's
an approaching vehicle but it's actually just getting into or out of
parking, does happen from time to time. In any case, I think my
real-world performance here is good enough.

#### Potential sound localization test 1: spin and then determine orientation based on sound

For this test, I spin around with eyes closed for several iterations
till I don't know which way I am facing. I then use the sound coming
into my ears to determine which way I am facing. Then I open my eyes
and verify.

Important gotchas:

* I need to make sure there are no other direction-providing cues,
  such as light level (even with eyes closed, this may be non-uniform
  across directions, so I might need to do further light blocking with
  my forearm) and floor or ground texture.

* There should be enough sound with a known directional pattern that
  using sound is a reliable way of inferring direction.

This can be done indoors near a door or window withe enough outdoor
noise, or outdoors near an intersection or road that provides sound in
particular directions. Indoors is safer.

#### Potential sound localization test 2: close eyes near an intersection and form a map of the surroundings based on sound

Close eyes near a busy intersection; keep closed for a minute or so,
then infer based on the sounds which way traffic is flowing, where the
vehicles are, and what the traffic light situation is. Then open eyes
and confirm. This has to be done outdoors but in a context where it's
reasonably safe and not disruptive of other pedestrian traffic.

#### Why I don't do these as regular checklist items

There are several reasons:

* I think my naturalistic sound localization practice is frequent
  enough and high-stakes enough that I expect to get early feedback if
  my gross localization skills deteriorate significantly. In
  particular, predicting vehicles at intersections as I approach them
  is something I do regularly insofar as I go jogging outdoors and
  walk for shopping trips. I already log cases of road surprises, and
  if auditory failure is a driver, I mention it in those logs.

* I already have a fair amount of hearing checklist items geared at
  specific frequencies, so for the most common path to localization
  deterioration, namely, hearing loss at specific frequencies, I am
  reasonably well-covered. In particular, the max frequency hearing
  test is helpful for making sure I don't lose the ILD signals.

* The particular sound localization tests are a bit awkward to do, and
  even if I do do them, I don't gain a huge amount of quantifiable
  insight that can meaningfully be compared across executions.

#### Partial versions of these that I might do

I might do partial versions of these while doing balance exercises,
without doing them at full rigor.

* Variants of potential sound localization test 1 might fit well with
  balance exercises, such as [standing-on-one-leg-with-eyes-closed at
  home](../profile-information/physical-exercise/standing-on-one-leg-with-eyes-closed-with-history.md), where I might in some cases lose balance, catch it, and not be
  sure which way I am facing. A prediction based on sound before the
  final balance loss and eye opening can help make use of the partial
  balance loss to test sound localization.

* Variants of potential sound localization test 2 might fit well with
  standing-on-one-leg-with-eyes-closed with
  shoes](../profile-information/physical-exercise/standing-on-one-leg-with-eyes-closed-with-shoes-with-history.md)
  at intersections, where I try to predict based on the traffic sounds
  whether the traffic light transition has happened.

The partial versions differ from the full versions in three respects
that pull in opposite directions:

* I am focused on something else (balance) which means I can't devote
  the entirety of my cognitive bandwidth to the sound localization
  task.

* The circumstances may not be ideal for detection. The partial
  balance loss at home (mimicking test 1) relies on ambient sound
  levels, which may not be that high or consistent in particular
  directions, whereas for deliberate execution, I can use a fixed
  sound cue like sound on laptop speakers or a phone placed in a
  specific location. The balance exercise at intersections (mimicking
  test 2) suffers from the problem that the traffic pattern at the
  specific intersection may be too low to be ideal for test 2.

* The circumstances are less controlled, so I might have more
  hints. For instance, the partial balance loss situation at home
  (mimicking test 1) is one where I haven't spun enough to lose
  orientation memory fully. The balance exercises at intersections
  (mimicking test 2) don't involve waiting long enough to lose my time
  sense, so I am relying not just on sound localization but also my
  memory on the signal state when I closed my eyes, plus how long I
  think elapsed since then.

#### What might make me do the full tests

I might do the full tests for one of four reasons:

* At a whim, just because I feel like it and have the time and energy
  to spare.

* In response to a partial test (of the sort mentioned above) flagging
  a localization issue.

* In response to naturalistic sound localization failures, such as not
  identifying a car at an intersection as I walk up to it, or missing
  the sound of a turning car near me.

* In response to reductions in hearing ability, particularly at high
  frequencies given their important role in sound localization.
