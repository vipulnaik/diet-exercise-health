# Hearing checklist

Execution log is [here](../logs/hearing-checklist-log.md).

## Quick things I should do in pieces every so often (ideally at least once every 10 days)

For these pieces, I log in my Slack self-chat logs when I execute. I
don't formally follow the checklist; I just do them whenever I happen
to already be listening to the song in question and have a minute to
spare. I record completion in the Slack self-chat logs. I generally do
the normal headphones and bone conduction headphones portion
separately. Search for `lmlyd` in Slack self-chat logs.

So I can skip these during the formal execution. However, if during
formal execution I find that I haven't done them at all for at least
21 days, I should do them along with the formal execution

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

## More advanced portion of test with formal recording, that I should do formally at the periodic interval

These pieces require more active concentration as well as
documentation steps, so I should do these only as part of the periodic
execution (about once every two months) or if diagnosing a specific
issue or suspected issue.

- Run through and record results for online hearing test at https://www.resound.com/en-us/online-hearing-test (using normal headphones for air conduction and bone conduction headphones for bone conduction) in SQL; compare with the previous results to see if there is any concerning loss of hearing, and if so, schedule a followup test for a week later
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
- Do a max frequency hearing test using https://www.youtube.com/watch?v=zUmbmssqHOY
  - [ ] Normal headphones, start the video, setting volume to half the max
  - [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, note current time, and hit space bar
  - [ ] Increase volume as sound gets fainter, and open eyes when sound gets inaudible even at max volume
    - Pause video if it is still playing
    - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
    - In the case that the recommendations were already populated, look at the time; if it is between 81 and 84 seconds after I closed my eyes, I am fine and I got to 20 kHz; otherwise, redo the test
    - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
    - Final frequency estimate: ???
  - [ ] Bone conduction headphones, start the video, setting volume to half the max
  - [ ] Right before the GO point, put finger on space bar and fingers of right hand on volume controls, close eyes, note current time, and hit space bar
  - [ ] Increase volume as sound gets fainter, and open eyes when sound gets inaudible even at max volume
    - Pause video if it is still playing
    - If video stopped, do I see the next video recommendations populate right as I open my eyes? That's confirmation that I stopped hearing the sound right when it finished playing. If they are already populated, that might mean that I was hearing phantom noises after the video stopped.
    - In the case that the recommendations were already populated, look at the time; if it is between 81 and 84 seconds after I closed my eyes, I am fine and I got to 20 kHz; otherwise, redo the test
    - If I paused the video before getting to 20 kHz, do play/pause testing to see if I can hear a clear play/pause difference, and use that to refine my estimate of max frequency
    - Final frequency estimate: ???
