# Checklist when feeling unwell

This document includes a checklist of measurements and other actions
when feeling unwell. For the various checks, simple subjective
versions are included for the cases where I lack the energy or
resource access to do formal measurements.

## Basic measurements

### Temperature (and fever)

Fever is one of the responses to various kinds of internal issues,
which can include infections, injuries, vaccines, and more.

Formal measurement: Forehead no-contact thermometer; measure middle,
left, and right side a few seconds apart. In case of wildly divergent
readings, take additional readings.

Informal measurement: Do I "feel" hot in ways that are
disproportionate to the ambient temperature?

How to interpret formal readings:

* Readings around 99.0 to 100.3 degrees Fahrenheit indicate a slight
  fever and are suggestive that the body has some inflammation or
  immune response. Such readings may be seen after a vaccine, injury,
  or infection. However, the low end here can be achieved through
  extended heat exposure without adequate cooling efforts.

  Stuff like acetaminophen is not needed in these cases unless there
  are other reasons to take it. However, cooling the body down through
  low-tech means may be warranted, if I am also feeling hot and don't
  have chills.

* Readings above 100.3 are very unlikely to be by chance, and suggest
  the fever itself may be a problem. Something like acetaminophen may
  make sense in these cases to help cool the body down. Don't take
  more than one dose every 6 hours.

### Feeling colder than usual (and chills)

This is a more subjective measurement. Do I feel colder than usual
given the ambient temperature? Generally, being off by more than 5
degrees in terms of subjective experience is indicative that my body
is up to something; for my baseline, see for instance
[here](../profile-information/temperature-subjective-experience-notes.md).

Chills are a little more extreme than just feeling colder than usual,
but they are related; the same degree of being unwell that causes
chills in colder weather may not cause clear-cut chills in hotter
weather. The hallmark of chills, for me, is sudden shivering, like a
spasm.

Chills are definitely indicative that something is wrong.

#### Fever and chills together

If I'm experiencing fever without chills, then cooling down seems
safe, but if I'm experiencing fever and chills, then staying warm
seems like the best idea. Basically chills is saying that the body
wants to be warmer, whereas a fever without chills is indicative of
the body having generated heat without necessarily wanting to stay hot
(??).

### Heart rate

Formal measurement: I have the following options for measuring heart rate:

* Pulse oximeter: This sometimes doesn't show a reading if perfusion
  is low, which could be for non-health-related reasons, e.g., if my
  finger is wet or some other environmental factor. However, it does
  show the pulse so I can count it to get an estimate.

* Blood pressure machine: This includes a point estimate of the heart
  rate for each reading. Not as good as the pulse oximeter in giving a
  sense for fluctuations over the scale of minutes, but unlike the
  pulse oximeter this has always given a reading.

Informal measurement:

* Stethoscope, with access to a clock at seconds precision: If using
  the stethoscope I still need to count, but the stethoscope does make
  the beats loud enough to allow for easy counting.

* Manual measurement using pulse or neck or heart, with access to a
  clock at seconds precision: This is the most low-tech; it will be
  less reliable and can be off by about 10% but it should be able to
  distinguish 60 bpm, 80 bpm, and 100 bpm.

How to interpret readings:

* See my [profile](../profile-information/health-profile.md) for my
  expected heart rate; and see [blood pressure
  readings](../sql/blood_pressure_readings.sql) and [pulse oximeter
  readings](../sql/pulse_oximeter_readings.sql) for a range of recent
  readings under different circumstances.

* Generally, heart rates that are more than 20 bpm above my usual for
  that environment suggest something is up. However, no immediate
  corrective action may be needed for the heart rate. Heart rates that
  are about 10-15 bpm higher than what I usually have under the
  circumstances may indicate a problem but it's not conclusive.

* Heart rate that are more than 10 bpm below my usual for that
  environment is suspicious, but very unlikely. For resting seated
  heart rate, this would be very implausible. For post-exercise heart
  rate, having lower heart rate just suggests that I was constrained
  by other factors in my efforts to ramp up my exercise, so I didn't
  get into the expected zone.

### Blood pressure

Formal measurement: Use the blood pressure machine.

Informal measurement: I don't think there is any way of informally
measuring blood pressure that is even moderately reliable.

How to interpret readings:

* See my [profile](../profile-information/health-profile.md) for my
  expected heart rate; and see [blood pressure
  readings](../sql/blood_pressure_readings.sql) for a range of
  readings under different circumstances.

* In general, blood pressure readings that are above 115/75 for a
  resting seated at-home measurement are concerning, unless there are
  mitigating factors that explain the reading, such as a recent
  physical or mental stress.

### Breathing rate and pattern

Formal measurement: I don't currently have any instrumentation to
measure it. There exist options such as a spirometer / respirometer
and capnometer, but I have not invested in them yet.

Informal measurement: The challenge here is that paying attention to
breathing changes the breathing pattern. Note the following down:

* Time for inbreath, pause between inbreath and outbreath, outbreath,
  pause between outbreath and inbreath (if the parts are hard to break
  down, just note the total) for about 10 successive breaths.

* Any unusual patterns in breathing, such as pain, shakiness, feeling
  difficulty transitioning between stages. The pain could be nasal,
  chest, or diaphragmmatic. For instance, abdominal pain can cause
  some shakiness in breathing even if the overall breathing rate and
  volume remains similar to usual.

* Use of the mouth for breathing.

## Cognitive status and related aspects

### Typing as a test of cognitive alertness and coordination

The [Human Benchmark typing
test](https://humanbenchmark.com/tests/typing) is a test of cognitive
alertness and coordination. If I score below 70 wpm on each of 1-3
consecutive tries (however many I can afford stamina-wise), compared
to my usual range of 80-100 wpm, suggests that I have issues affecting
some mix of my cognition and my motor coordination.

If I am not able to hit that 70 wpm, that's generally an indicator of
a lack of cognitive alertness or coordination and suggests that I
should not be doing my usual "desk job". However, if the other
cognitive tests (see below) are coming out normal, this could have
more to do with physical fatigue or issues specific to my hands, so I
might still be able to continue doing low-stakes, error-tolerant
cognitive stuff on my laptop and phone.

### Sequence memory and verbal memory

The [verbal memory](https://humanbenchmark.com/tests/verbal-memory)
and [sequence memory](https://humanbenchmark.com/tests/sequence) tests
are good tests that I can use to gauge my cognitive alertness. The
verbal memory test is preferable for cases where my physical energy
levels are low, because it requires less moving around.

For verbal memory, scoring below 50 on each of 1-3 consecutive tries
(however many I can afford stamina-wise) is indicative of degraded
cognitive performance. For sequence memory, scoring below 10 (compared
to my usual range of 12-23) on 1-3 consecutive tries (however many I
can afford stamina-wise) id indicative of degraded cognitive
performance.

NOTE: Scoring above the thresholds might still reflect some cognitive
degradation, but it's more ambiguous and I should use other pieces of
information. The thresholds I've selected are ones where I should just
automatically assume I am cognitively degraded, without having to
expend brainpower into the determination.

## Abdominal signs

### LEGIT: Excessive burping and flatulence

If I have a lot of burping and/or flatulence, and this doesn't go away
on drinking water, there is likely an issue such as excess stomach
acid production (hypergastrinemia, usually due to gastritis) and GERD
(gastroesophageal reflux). This confirms that the pain or discomfort I
am feeling has a functional basis, and is not purely neuromuscular.

This should be considered serious only if it's leading to symptoms
such as hearburn, sore throat, coughing, etc. However, even if it's
not leading to these, it should still be documented and eventually
tackled.

### SERIOUS: Visible bloating

Check for visible bloating (visible to the naked eye). Compare to my
usual self and look at images on the Internet.

### SERIOUS: Muscle guarding

Check for muscle guarding, i.e., a reluctance for my abdominal area to
be pressed or poked.

### SERIOUS: Palpation pain and rebound tenderness

Check for sharp increase in pain in any specific area when pressing
down on it, and also check for rebound tenderness -- pain when
releasing the pressure.

### SERIOUS: Pain that is diffcult to ignore

Look for pain at an intensity that is difficult to ignore. Also look
for pain that gets me to keep trying to shift position, and note if
there are specific positions where the pain is lower.

## Mood and fatigue

### Overload from simple tasks

If the following simple tasks create sensory overload, it's a red flag
and suggests I should take urgent actions to disconnect:

* Logging in to an account or to a device

* Passively listening to audio that is not cognitively challenging
  (such as music, see below).

### Response to music

Response to some music that I like is a useful indicator:

* If I find that even music creates excessive sensory overload for me,
  that is generally indicative of extreme fatigue that suggests I
  should stop trying to do any work.

* I can try to gauge whether listening to a particular piece of music
  generates the typical range of emotions in me.
