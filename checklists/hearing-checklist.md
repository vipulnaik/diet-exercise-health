# Hearing checklist

Execution log is [here](../logs/hearing-checklist-log.md).

## Quick things I should do in pieces every so often (ideally at least once every 10 days)

### Quick minimum audible volume and balance tests

For these pieces, I log in my Slack self-chat logs when I execute. I
don't formally follow the checklist; I just do them whenever I happen
to already be listening to the song in question and have a minute to
spare. I record completion in the Slack self-chat logs. I generally do
the normal headphones and bone conduction headphones portion
separately. Search for `lmlyd` in Slack self-chat logs.

So I can skip these during the formal execution. However, if during
formal execution I find that I haven't done them at all for at least
21 days, I should do them along with the formal execution.

- Play https://www.youtube.com/watch?v=eVVaqFDG6Fo and determine minimum audible volume with normal headphones (expected to be 1/64 system volume at <= 50% YouTube volume) and with bone conduction headphones (expected to be 1/16 system volume at <= 50% for Yomdud)
  - normal headphones: log message (if passed) `lmlyd minimum audible volume test passed (both ears) with normal headphones`, otherwise document in more detail and determine followup actions
    - [ ] Make sure that within-YouTube volume is set to max
    - [ ] Left ear with normal headphones (if the headphones are oriented wrong, re-wear the headphones)
    - [ ] Right ear with normal headphones
    - [ ] Reduce within-YouTube volume to 50%
    - [ ] Left ear with normal headphones (if the headphones are oriented wrong, re-wear the headphones)
    - [ ] Right ear with normal headphones
  - bone conduction headphones: log message: `lmlyd minimum audible volume test passed (both ears) with bone conduction headphones`, otherwise document in more detail and determine followup actions
    - [ ] Make sure that within-YouTube volume is set to max
    - [ ] Left ear with bone conduction headphones
    - [ ] Right ear with bone conduction headphones
    - [ ] Reduce within-YouTube volume to 50%
    - [ ] Left ear with bone conduction headphones
    - [ ] Right ear with bone conduction headphones
- Check for balance when I play https://www.youtube.com/watch?v=eVVaqFDG6Fo
  - normal headphones: log message: `lmlyd balance test passed with normal headphones`, otherwise document in more detail and determine followup actions
    - [ ] Normal headphones, when set to balanced, feel centered rather than skewed to one side
    - [ ] For normal headphones, switching back and forth between all left to all right does not change perceived loudness
  - bone conduction headphones: log message: `lmlyd balance test passed with bone conduction headphones`, otherwise document in more detail and determine followup actions
    - [ ] Bone conduction headphones, when set to balanced, feel centered rather than skewed to one side
    - [ ] For bone conduction headphones, switching back and forth between all left to all right does not change perceived loudness

END OF SECTION: Quick minimum audible volume and balance tests

### Quick max frequency hearing test

This is a quick version of the max frequency hearing test described in
a later section. Instead of playing the whole 2-minute video
https://www.youtube.com/watch?v=zUmbmssqHOY I just start about 10 to
15 seconds prior to the end (With some variability in exactly when I
start), listen to it with my eyes closed, and confirm that I open my
eyes right after the clip ends. I should do the left and right ear
separately.

I should log this to Slack as `quick max frequency hearing test passed
(both ears) with normal headphones` or `quick max frequency hearing
test passed (both ears) with bone conduction headphones`.

Remember to return to normal volume and set balance back to neutral.

END OF SECTION: Quick max frequency hearing test

## More advanced portion of test with formal recording, that I should do formally at the periodic interval

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

### (1) Frequency-specific hearing test in the normal frequency range (500 Hz to 4000 Hz)

Run through and record results for online hearing test at
https://www.resound.com/en-us/online-hearing-test (using normal
headphones for air conduction and bone conduction headphones for bone
conduction) in SQL; compare with the previous results to see if there
is any concerning loss of hearing, and if so, schedule a followup test
for a week later.

- [ ] Put on normal headphones
- [ ] Make sure that the volume of the computer is set to max
- [ ] Check that the left speaker is on the left ear and the right speaker is on the right ear (this might require temporary balance adjustment)
- [ ] Switch balance back to the middle
- [ ] Do the Resound online test and record results as you go along
- [ ] Put on bone conduction headphones
- [ ] Make sure that the volume of the computer is set to max
- [ ] Check that the left speaker is on the left ear and the right speaker is on the right ear (this might require temporary balance adjustment)
- [ ] Switch balance back to the middle
- [ ] Do the Resound online test and record results as you go along

END OF SECTION: (1) Frequency-specific hearing test in the normal frequency range (500 Hz to 4000 Hz)

### (2) Max frequency hearing test

Do a max frequency hearing test using https://www.youtube.com/watch?v=zUmbmssqHOY

This is a fuller version of the quick max frequency hearing test. It differs from the quick version in the following respects:

* We start from the beginning frequencies so we get a clearer picture
  of how the minimum audible volume changes with frequency.

* We also record the point at which musical tonality is lost, which
  tends to be way below the point at which the sound becomes inaudible
  (current estimate of loss of musical tonality is about 13500 Hz at
  max volume, whereas the sound stays audible to me right till the
  end).

Normal headphones, left ear only:

- [ ] Normal headphones, start the video, setting volume to half the max and balance to all on left ear
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

Normal headphones, right ear only:

- [ ] Normal headphones, start the video, setting volume to half the max and balance to all on right ear
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

Wrap up normal headphones:

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

Wrap up bone conduction headphones:

- [ ] Remember to set volume back to low so that I don't get a blast in my ears the next time I play using the headphones

END OF SECTION: (2) Max frequency hearing test

### (3) Speech in noise test

Run through and report results of https://www.medel.com/en-us/about-hearing/hearing-test/speech-in-noise

Adjust volume through the test for what lets me hear best.

- [ ] Normal headphones, left ear
- [ ] Normal headphones, right ear
- [ ] Bone conduction headphones, left ear
- [ ] Bone conduction headphones, right ear

END OF SECTION: (3) Speech in noise test
