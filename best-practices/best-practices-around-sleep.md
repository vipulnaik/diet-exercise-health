# Best practices around sleep

This document outlines my best practices around sleep.

The document was revised in September 2025 to incorporate changes to
my routine and more data-driven timing insights that I lacked when I
originally fleshed out the document in October 2024.

## Important time points

This is a new section added in September 2025, based on improved
logging I have been doing regarding sleep, that was partly inspired by
the original version of the document. I've been adding this logging
gradually.

### Sequence of events for going to sleep

The sequence of events related to sleep and waking up is as follows:

* `grtcfs` = getting ready to close for sleep. This is the time when,
  generally while working on my laptop, I decide to start executing my
  night checklist with the intention of closing my laptop after that.

* `cfs` = closing for sleep. This is after I have completed my night
  checklist and right before I close my laptop. A final night
  urination shortly after closing for sleep is expected and is not
  recorded.

* Activities that often, but not always, occur in between:

  * `bfbt` = back from brushing teeth. This is after I finish the
    final brushing of my teeth for the night. In some cases, I may
    brush my teeth before `grtcfs`.

  * `fs` = finished shaving. On some nights, I shave after brushing my
    teeth. Other days, I might skip shaving (I generally shave on
    alternating days except during times when I have a lot of social
    interactions, at which times I shave daily). In some cases, I
    shave during the day time.

  * `wfb` = went for bath. On most days, I have a bath at night.

  * `bfb` = back from bath

* `gib` = got into bed. This is when I get into bed with the intent of
  not getting out of bed. I spend a few minutes on my phone.

* Activities that often, but not always, occur in between:

  * `smd` = scalp massage done. After getting into bed, I generally do
    scalp massage with one hand while usin my phone in the other. This
    may last anywhere from 5 minutes to 30 minutes.

  * `mmd` = masseter massage done. The masseter massage is brief,
    about 1 to 2 minutes.

  * `nsed` = neck strength exercises done (only on some days).

* `wts` = went to sleep. This is the final thing I log before closing
  my eyes and lying down to sleep.

The gaps are generally in the ranges described below:

* [grtcfs, cfs] can vary between 4 minutes and 20 minutes, depending
  on how much new stuff comes up in the night checklist. Generally, if
  it is longer than 20 minutes, I consider it a cancellation of my
  original intent to get ready to close for sleep. In cases where I am
  determined to sleep early, I can generally keep it to 8 minutes or
  less.

* [cfs, bfbt] is generally somewhere between 8 minutes and 15
  minutes. That's because it includes additional unlogged steps
  including vaseline application and final urination.

* [bfbt, fs] is about 12 to 20 minutes on days that it happens.

* [fs, wfb] is about 1 to 6 minutes; when there is no `fs`, then
  `[bfbt, wfb] is about 1 to 6 minutes. The intervening time might be
  used to catch up on phone messages and notifications.

* [wfb, bfb] can vary between 17 and 30 minutes.

* [bfb, gib] is about 2 to 5 minutes; this includes a few final checks.

* [gib, wts] can be anywhere between 5 and 30 minutes, depending on
  how sleepy I am, whether I need to go to sleep soon, and whether
  there are loose ends I want to wrap up for mental closure (that can
  be done in bed on the phone).

### Sequence of events for mid-sleep urination

For mid-sleep urination, I generally have:

* `wtu` = went to urinate. This is the time I got out of bed to
  urinate.

* In some cases, where I think I might need to go back to sleep and
  may wake up rather late, I might have these two:

  * `smcp` = started morning checklist (phone). This means checking
    email and messages on my phone.

  * `fmcp` = finished morning checklist (phone).

* `wbts` = went back to sleep. This is right before I close my eyes
  and lay down.

### Waking up

Waking up is recorded as `wu`. A urination right after waking up is
expected and is not recorded separately.

## Background on my sleep and waking-up pattern

### My default pattern

Outside of winter months, I generally go to sleep some time between 10
PM and 1 AM and wake up some time between 6 AM and 8:30 AM. In the
winter months, my sleep time and waking-up time might be a little
delayed as it's very cold in the mornings. Also, during the hottest
months as well, my sleep time and waking-up time might also be delayed
as the mornings are the coolest times when it's tolerable to be in
bed.

My default sleep duration is about 7.5-8 hours. Generally, going down
to 7 hours on a day doesn't have significant repercussions.

#### Default minimum gap between last meal and sleeping

I default to a minimum gap of 3 hours between the end of my last meal
and sleeping, with the gap being larger in some cases. I also aim for
a gap of at least 2 hours between the last meal and
shower/bath. Aspirationally, I try for at least 4 hours from end of
last meal to sleep, and at least 3 hours from end of last meal to
shower/bath, but I'm not strict about these under ordinary conditions
(more on the reason for the gap later in the doc).

### Sleeping late and getting up naturally

This may happen, for instance, in cases that I am really hooked to
some task or need continuous attention to it, causing me to sleep
late. It also sometimes happens due to induced laundry delays, or
planning issues with my day.

In such cases, even though I get up naturally, I will very likely not
have gotten my full worth of sleep. The reason is that my body is used
to waking up within a specific time range, so if I sleep late, it'll
still wake up around the time range even if the body's sleep needs are
not fully met. A crude heuristic is that if I sleep x hours later than
usual, I will likely wake up about x/3 hours later than usual, so that
I sleep about 2x/3 hours less than usual.

Despite the slight sleep backlog built by sleeping late and getting up
naturally, this is still relatively low-risk as the body has likely
finished the most important functions that it needs to carry out in
its sleep, assuming x isn't too large. For instance, sleeping 2 hours
late, and therefore waking up about 40 minutes late, I have about 1
hour 20 minutes less sleep than usual, but my body was able to give up
the 1 hour 20 minutes of repair work that were least important.

### Interrupted sleep -- waking up suddenly (usually due to an alarm or alert, sometimes due to some pain)

I generally set my alarms and alert settings so that they are likely
to go off only after I wake up naturally. However, there are a few
scenarios where these might go off earlier:

* Alerts for some services at work are on at night, as they relate to
  critical infrastructure that needs to be up continuously. The
  frequency of triggering is very low, but it can still happen.

* In some cases, I may set an alarm for an early time, due to some
  early-morning activity I need to do. My general goal, where I have
  enough advance notice, is to adjust my sleep cycle gradually. But in
  some cases that isn't feasible.

Separate from these, I might get up sometimes to urinate or due to
some pain or bad dream. Usually, I'm able to go right back to sleep,
but sometimes I can't. As of October 2024, it's common for me to wake
up to urinate around 1-2 hours before officially waking up, and to be
able to go back to a sleepy or semi-sleepy state immediately
afterward. It is relatively rare for me to wake up spontaneously well
before my natural waking time and be unable to get back into a restful
state.

The case of waking up suddenly tends to be worse in terms of bowel
disruption than the case of sleeping late, likely because the body's
plans are disrupted. Waking up suddenly more than 1 hour prior to my
natural waking-up time can cause symptoms such as grogginess and
fatigue; waking up more than 2 hours prior can cause symptoms such as
constipation and bowel cycle disruption.

### Sleeping with an overnight emotional or physical stress

As a general rule, *unresolved* emotional stress (for something that I
was not able to resolve), or physical stress of some sort, increase my
sleep needs. The general increase range is about 1 hour. However, in
case of infections that my body needs to actively fight, I may need to
increase by 2 or 3 hours.

This therefore changes the goalposts in terms of the approximate
thresholds given in the earlier subsections.

## Best practices to follow during normal times

By normal times I'm referring to times when I'm not facing a health
situation that requires extra sleep, and I am not trying to adjust my
sleep cycle.

### When to get into bed

Outside of cold winter days, the latest time by which I should be in
bed should be the earliest among these:

* At least 7 hours before the beginning of the range of time at which
  I naturally wake up; for instance, if I naturally wake up between 7
  AM and 7:30 AM these days, I should aim to be in bed by midnight.

* At least 8 hours before the time I have set my alarm for

* At least 9 hours before the time I absolutely need to get out of bed

Worked example: Let's say that these days, I tend to get up around 8
AM, I need to be up by 9:30 AM for a work meeting at 10:30 AM, and my
alarm is set for 8:45 AM. The respective latest sleeping time
constraints imposed by these are 1 AM, 1:30 AM, and 12:45 AM. The
earliest of these is 12:45 AM, so the latest time I can get in bed is
12:45 AM.

During cold winter days, I should expect to need 1 to 2 additional
hours of sleep. As a rule of thumb, add one hour to the first
constraint, 45 minutes to the second constraint, and 30 minutes to the
third constraint:

* At least 8 hours before the beginning of thr range of time at which
  I naturally wake up

* At least 8 hours 45 minutes before the time I have set my alarm for

* At least 9.5 hours before the time I absolutely need to get out of bed

The earliest time by which I should be in bed is 2 hours earlier than
the latest time, unless I am feeling fatigue that makes me want to go
to bed earlier than that.

Also, **don't get into bed less than 3 hours after finishing my last
meal**.

### Urinate right before going to bed

Urine pressure is one reason I sometimes prematurely wake up. So,
urinating right before going to bed, even if I don't feel like I have
enough urine built up, can help reduce that. This is not always
necessary, but is a best practice.

### Sleeping in

* If I have completed at least 7 hours of sleep, feel awake and alert,
  and want to get out of bed, I should get out of bed.

* On the other hand, if I have completed fewer than 7 hours of sleep,
  then I should try to get some extra time in bed (even if not fully
  asleep) until I hit 7 hours. If I have urine pressure build-up I
  should go and urinate first so the remainder of my time in bed can
  be more relaxed.

* If I have significant bowel pressure already (before getting to an
  upright position) then it may be better to have a bowel movement and
  then spend some extra time in bed. However, generally speaking,
  bowel pressure doesn't become significant at less than 7 hours of
  sleep until I spend some time in a seated or upright position, so in
  order to get extra sleep I should try to avoid getting in a seated
  position.

### Reducing the incidence of unplanned late sleep

As far as reducing unplanned late sleep goes, there are two related
goals:

* Sleep by the latest time described in [When to get into
  bed](#when-to-go-to-sleep).

* Have the flexibility to sleep earlier if I feel sleepy or if other
  new information comes up; as much as possible I should not feel
  "trapped" to stay awake by choices made earlier in the day, if I
  feel cognitively or physically too fatigued to be awake or do useful
  things while awake.

#### Have clarity every day as to the latest time I can go to sleep (`wts` time)

Right when I wake up in the morning, I should have clarity on the
latest time I can go to sleep (what I log as the `wts` time). This
should be at the back of my mind and can influence my decisions
throughout the day. In some cases, new information such as weather
details, planned house maintenance, or developments in terms of
meetings can change the time a little bit.

For instance, in the worked example in [When to go to
sleep](#when-to-go-to-sleep), I worked out that I need to go to sleep
by 12:45 AM. I should have awareness of that piece of
information. Also, I should adjust it based on any sleep backlog or
need for additional seep.

#### Aim for a `grtcfs` time of 1 hour 10 minutes prior to the target `wts` time, adding 15 minutes if I plan to shave after that

Empirically, the gap from `cfs` to `wts` is about 1 hour if not
shaving in that time, and the gap from `grtcfs` to `cfs` is about 4 to
20 minutes and I can generally keep it under 10 minutes if I want. If
I also shave in the time, I need to add 15 minutes.

Aiming for a grtcfs time of about 1 hour 10 minutes if not shaving,
and 1 hour 25 minutes if shaving, allows me to go to sleep at the
target `wts` time without rushing through any steps.

#### Calculating backwards to determine the feasibility and latest start time for activities within the day

Based on my target `grtcfs` and `wts` times, I can calculate backwards
to figure out the latest start time for various activities, such as
meals, and also figure out if starting an activity would be feasible
on the given day.

As an illustrative example, use the following:

* 4 hours minimum gap between end of second meal and going to sleep

* 4 hours minimum gap between end of first meal and beginning of
  second meal

* 1 hour time budget for meal consumption

* 1 hour gap between end of morning exercise and beginning of first meal

* 1 hour duration for morning exercise

Based on these, I would need to start my morning exercise at least 12
hours before going to sleep. With a goal of being able to sleep by
11:30 PM), that means I need to start my morning exercise by 11:30 AM,
just using the minimum gaps. (Now, likely, the time budget for meal
consumption can be shrunk and time gap between meals can be reduced to
3 hours, exercise can be shortened etc. when on a time crunch, but
this is illustrative of the calculation using reasonably relaxed and
safe numbers).

I include more detailed calculations in this spirit in a private
repository for my own reference.

### Reducing the incidence of sudden waking up

* If possible, make sure the alarm is set to a reasonable time, at
  least 30 minutes after when I expect to wake up naturally.

* To the extent possible, configure alerts so that they don't phone me
  before my natural waking-up time. On occasions where I need to sleep
  in a bit more due to going to sleep late, I may want to tweak the
  alert settings temporarily.

## The role of temperature, light, and sound in my sleep cycle

### The role of weather and ambient indoor temperature

I had some empirical observations that make sense in the context of
[temperature minimum as described by Andrew
Huberman](https://ai.hubermanlab.com/s/qymYMnCJ). According to
Huberman, the body reaches its minimum temperature around 1.5 hours
before the natural time of waking up.

My sleeping context is one where I generally draw curtains so that I
don't get a lot of light streaming in (though there is enough for me
to "know" that it's morning), but I don't have temperature
control. The result is that temperature is likely the driving factor
affecting my sleep cycle. In particular, my sleep cycle naturally
gravitates to one where my temperature minimum coincides with the time
that the indoor temperature is minimum.

Interestingly, the temperature-based constraints are strongest during
the hottest and coldest days. During the hottest days, the range of
time where it is tolerably cool enough for me to sleep is narrow,
forcing me to sleep during that time. This can be something like 1 AM
to 9 AM, because indoor temperatures lag outdoor temperatures so that
they don't get down to a sleep-compatible range until 1 AM. During the
coldest days, I get a similar range of 1 AM to 9 AM, or even a little
later (1:30 AM to 9:30 AM) because it takes until about 8 AM for the
indoor temperature to start rising meaningfully.

In mid-range weather (neither too hot or too cold) I can play
temperature a little bit by keeping the window open earlier in the
night, and then waking up and closing it around the time I want to hit
my temperature minimum. Of course, this requires me to get up, which
isn't possible if I am fast asleep or too cold to even get out of
bed. This lever isn't available when it's too hot (the window is open
throughout) or too cold (the window is closed throughout).

### The role of light

When using light in connection with sleep cycle, I need to factor in
my light sensitivity. See the document on [best practices around
light](best-practices-around-light.md). Generally speaking, I try not
to maipulate light specifically for sleep during normal times, but I
do use increased light sensitivity as a hint of potential sleep
backlog. I might use light when deliberately adjusting sleep cycle by
a nontrivial amount (more than 15 minutes per day).

## Best practices to follow during health issues

### When to go to sleep

When I'm experiencing health issues where I have reason to believe
that additional sleep might be helpful, I should adjust the guidance
regarding the latest time I should go to sleep as follows:

* At least 8.5 hours before the beginning of the range of time at
  which I naturally wake up; for instance, if I naturally wake up
  between 7 AM and 7:30 AM these days, I should aim to be in bed by
  10:30 PM.

* At least 9 hours before the time I have set my alarm for

* At least 10 hours before I absolutely need to wake up

The earliest time by which I should got to sleep is 2 hours earlier than
the latest time, unless I am feeling fatigue that makes me want to go
to bed earlier than that.

Also, in case of health issues affecting digestion or with potential
effect on digestion, **increase the minimum gap from finishing my last
meal to sleeping to 4.5 hours from the default of 3 hours**. This
increases the chances of finishing the third MMC wave before I go to
sleep.

If I can't simultaneously satisfy the condition of getting sufficient
sleep and maintaining the increased eating/sleeping gap, it's a
judgment call what to prioritize, and it generally depends on whether
my issue is more one of digestion or one of fatigue or
infection-fighting.

### Urinate right before the `gib` step

As with normal times, it is important to urinate right before going to
bed. In fact, it becomes more important to do so, as getting the full
amount of sleep becomes more important when I have health issues.

### Sleeping in

Similar to normal times, I should follow the practice of sleeping in,
but now using 8.5 hours rather than 7 hours as the threshold.

## Best practices to follow during a sleep cycle adjustment phase

For a sleep cycle adjustment phase, I should aim to adjust at a speed
of about 15 minutes per day if feasible, with occasional relaxation to
confirm that I have fully adjusted.

During these times, I should follow this guidance:

* Aim to go to sleep about 8 hours before the intended waking-up time
  (in case I also happen to have health issues during this time that
  necessitate extra sleep, make this 9.5 hours)

* Set alarms starting 15 minutes after the intended waking-up time.

Create a table with a schedule of adjustments and create another table
with the reality of what transpired.

