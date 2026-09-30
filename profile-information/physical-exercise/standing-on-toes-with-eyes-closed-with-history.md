# Standing on toes with eyes closed (with history)

## Goal and functional relevance of exercise

### Maintain standing-on-toes-with-eyes-closed duration at at least 170 seconds

The ability to sustain weight on toes is important for balance, as we
lift off from our toes, and when jogging, we are lifting off from the
toes of just one foot. The eyes-closed version of the exercise just
raises the stakes so as to get more bang per second of exercise.

When I started standing-on-toes-with-eyes-closed on 2024-09-09, I set
a threshold of 15 seconds. Even this threshold, I was not able to
consistently clear on the first try, leading to me doing 3 or 5 tries
on many days. As of 2026-09-29 the first attempt threshold (that I aim
to hit most of the time on the first attempt) is 170 seconds.

I don't have standard benchmarks for this, but I think a threshold of
170 seconds is reasonable and I don't have plans to increase the
threshold, though if my performance continues to improve organically,
I may increase the threshold further.

## Protocol

* Stand on my toes (both feet). Both the toes and the portion of the
  foot right before the toe can be in contact with the ground.

* Close my eyes when the seconds counter hits a multiple of 5; note
  the current time.

* Try to stay in that position for as long as possible, without
  repositioning either foot. Lifting or sliding either foot is not
  allowed, and contact of the rest of the foot with the floor is also
  not allowed. A little bit of rocking is permitted.  Continue to try
  to stand until I lose balance and have to lift one of my feet and
  place it elsewhere; open my eyes and note the elapsed time.

My goal is to keep trying (up to 5 attempts) until I clear the
attempt-specific threshold on at least one attempt.

The sequence of attempt-specific thresholds is as follows: 170 seconds
for the first try, 149 seconds for the second try, 132 seconds for the
third try, 119 seconds for the fourth try, and 110 seconds for the fifth
try. The sequence of thresholds is a quadratic sequence with initial
first difference of -21 seconds and constant second difference of 4
seconds (the second difference being constant and nonzero is what
makes it a quadratic sequence). The first try threshold of 170 seconds
represents what I should be able to achieve in a good starting state
without fatigue, and the fifth try threshold of 110 seconds represents
what I should be able to achieve even under adverse conditions.

## Triggers for overall exercise

The practice 2025-11-24 onward is to do this exercise during rice
preps as part of the [balance exercise
cycle](balance-exercise-cycle-with-history.md). I expect to get
through the cycle every 2 to 3 rice preps, so the approximate
frequency is once every 9 to 15 days.

## History

### History of threshold durations

Date of change | Baseline threshold duration (seconds) | Baseline threshold duration increase since last time (seconds) | Retry adjustment (seconds) (second try threshold minus first try threshold, difference of differences) | Number of rounds since last time (exclusive of start date, inclusive of end date) | Increase in seconds per round | Days since last change | Increase in seconds per day
-- | -- | -- | -- | -- | -- | -- | --
2024-09-09 |  15 |  N/A (first threshold) | N/A | N/A (first threshold) | N/A (first threshold) | N/A (first threshold) | N/A (first threshold)
2024-10-14 |  18 |  3 | N/A | unavailable | unavailable | 35 | 0.09
2024-11-05 |  21 |  3 | N/A | unavailable | unavailable | 22 | 0.14
2024-11-17 |  24 |  3 | N/A | unavailable | unavailable | 12 | 0.25
2025-01-16 |  27 |  3 | N/A | >= 22 (recording started 2024-12-21) | unavailable | 60 | 0.05
2025-02-03 |  30 |  3 | N/A |  8 | 0.38 | 18 | 0.17
2025-03-06 |  35 |  5 | N/A | 17 | 0.29 | 31 | 0.16
2025-04-12 |  50 | 15 | N/A |  8 | 1.88 | 37 | 0.41
2025-06-02 |  60 | 10 | N/A | 10 | 1.00 | 51 | 0.20
2025-06-22 |  65 |  5 | N/A |  3 | 1.67 | 20 | 0.25
2025-11-11 |  80 | 15 | N/A | 12 | 1.25 | 142| 0.11
2025-12-13 |  90 | 10 | N/A |  3 | 3.33 | 32 | 0.31
2025-12-28 | 105 | 15 | N/A |  1 | 15.0 | 15 | 1.00
2026-02-24 | 115 | 10 | N/A |  5 | 2.0  | 58 | 0.17
2026-03-24 | 125 | 10 | -20, 5 | 1 | 10.0 | 28 | 0.36
2026-06-07 | 130 |  5 | -21, 4 | 10 (4 of these were redo rounds on two days, both of which were days where my first round succeeded on the second attempt) | 0.50 | 75 | 0.07
2026-07-31 | 140 | 10 | -21, 4 | 3 | 3.33 | 54 | 0.19
2026-09-29 | 170 | 30 | -21, 4 | 2 | 15.0 | 60 | 0.50

A few key insights that can be gleaned from the table:

* The rate of threshold increase over time seems to be about 15 to 30
  seconds per quarter (which translates to the increase in seconds per
  day column ranging from 0.17 to 0.33, which indeed it does for most
  part). Progress was slightly below that level early on and in the
  period from 2025-06-22 to 2025-11-11. The seemingly slow early
  progress early on might be explained by progress in reducing
  retries. Overall, progress seems to fit a linear model better than
  an exponential one, but more data points are needed for clarity.

* At least since the time I have been logging individual rounds
  (2024-12-21), the linear rate of progress relative to number of
  rounds seems to be something roughly on the order of 1.5 seconds per
  round, but individual updates are fairly noisy. The fluctuations may
  partly be driven by rounding conventions and fluctuations in when I
  document and how much margin I leave relative to the actual
  attempts, which are much noisier and leave a lot of room for
  interpretation in terms of how to adjust thresholds.

  While the rate of progress over time seems to be roughly steady over
  the whole time range, the rate of progress per round seems to be
  going up. In other words, the reduction in the frequency of doing
  the exercise doesn't seem to have translated to a reduction in the
  overall rate of progress, because I am compensating by making more
  progress per round. This might partly be because progress is driven
  by factors other than doing the specific exercise.

A few additional notes covering nuances not directly visible in the
table:

* The frequency of retries, as well as the number of iterations when I
  do have to retry, have both been going down over time, though most
  of the improvement was prior to 2024-12-21 (the date I started
  recording individual attempts). In recent times, the reduced
  frequency of retries is partly a result of conservatism in threshold
  increases. The reduction in number of iterations of retries when I
  do have to retry is due to changes to retry policies that I describe
  in the [How the threshold durations are
  used](#how-the-threshold-durations-are-used) subsection.

* On 2025-03-06, I increased the threshold to 35 seconds but felt that
  in principle I could increase the threshold to 40 seconds. However,
  I wanted to be cautious and stay at under 20% for each incremental
  change so I have time to observe for a while if the new threshold
  works across days.

* The big threshold increase from 2026-07-31 to 2026-09-29 was a
  release of latent improvements in performance over the past few
  months that had not been properly reflected in past thresholds due
  to a few low-scorin attempts early in Q2 2026 that I wanted to get
  far enough behind me to be sure that the improvements were genuine
  enough to reflect in a binding threshold going forward.

### How the threshold durations are used

#### Change from median to maximum on 2024-11-19

Prior to 2024-11-19, I was using median instead of maximum, but
maximum makes more sense given the increased threshold.

#### Switch to attempt-specific thresholds on 2026-03-24

Prior to 2026-03-24, I had a single threshold across all attempts. On
2026-03-24, I introduced a concept of attempt-specific thresholds,
where the threshold to achieve in the nth attempt goes down as n
increases from 1 to 5. The goal of this change is to account for the
fatigue effect of earlier attempts on achievable thresholds in later
attempts and also account for "off" days where I am not able to hit a
high threshold, perhaps due to fatigue from other stuff. The hope is
still to succeed on the first attempt on most days, while striking a
balance in terms of imposing a real but not unbearable consequence for
initial failure.

### History of triggers for overall exercise

Right from the start of this exercise on 2024-09-09, I set this
exercise to be done ater the standing-on-one-leg-with-eyes-closed
exercise that I had started a long time ago.

#### Settings 2024-09-09 to 2025-01-19

Over this period, I did the exercise (at least once) daily, following
the standing-on-one-leg-with-eyes-closed exercise.

#### Settings 2025-01-20 to 2025-07-04

Over this period, I did the exercise once every 3 days, specifically
the days I was skipping strength exercises, following the
standing-on-one-leg-with-eyes-closed exercise.

#### Settings 2025-07-05 to end of July 2025

Starting 2025-07-05, I now do the exercise after
standing-on-one-leg-with-eyes-closed exercise on alternating days that
I skip strength exercises. The effective frequency is once every 6 days.

#### Settings 2025-10-13 onward

In August and September 2025, I was very erratic with doing this
exercise, partly as a result of a general squeeze on exercise time due
to things being busy. Specifically, in light of the [best practices
around exercise adjustment during hectic
times](../../best-practices/best-practices-around-exercise-adjustment-during-hectic-times.md#balance-exercises-and-other-niche-exercises),
I deprioritized this exercise during the hectic t imes.

The few times I was able to do the exercise were mostly during rice
prep, while waiting for water to be filtered by the water filter
before putting it on the rice. This eventually led me to decide to
just do this exercise during that time in general. The previous
exercise frequency was once every alternating period of 3 days (so
effectively once every 6 days). If I switched over to doing this
exercise at every alternating rice prep, that would roughly be once
every 7 to 9 days, which is a little less frequent, but probably fine.

So the practice 2025-10-13 onward is to do this exercise roughly every
alternating rice prep, so about once every 7 to 9 days. With that
said, some rice preps I might use for more niche occasional exercises,
which might displace a few slots, so effectively this might be a
little less frequent. Also, if the
standing-on-one-leg-with-eyes-closed exercise ends up taking more
time, I might displace the standing-on-toes-with-eyes-closed to the
next rice prep along with the other set of exercises, so the execution
pattern can be somewhat erratic.

#### Slight tweak to settings documented 2025-11-24

Rather than have specific exercise bundles to do in alternating rice
preps, I've decided to just cycle through a list of exercises over
rice preps, which might mean doing a variable number in a given rice
prep, and occasionally throw in more niche exercises. See [balance
exercise cycle (with history)](balance-exercise-cycle-with-history.md)
for the list.
