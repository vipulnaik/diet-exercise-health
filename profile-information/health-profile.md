# Health profile

Last major update: December 18, 2024 (this mostly entailed a
reordering of sections and addition of notes on future sections to
write)

Last substantive minor update: June 25, 2025

This is the health profile for Vipul Naik, an adult male in his late
30s / early 40s (born 1986). It is updated periodically. It does not
include details of specific events/incidents; these are generally
recorded in their own respective files. Links to the most recent
and/or relevant incidents are included here.

When updating this document:

* Make sure that I have the latest blood pressure readings.
* Make sure to update the links to the last dental appointment and the
  last eye exam.
* Make sure to update the HbA1c and lipid profile section to reflect
  the latest test results.
* Update all occurrences of "as of `<year>`" to the correct year,
  after verifying that the assertion still holds.
* Go through the whole document to see if anything else needs updating.

Sections of this document:

* [Ongoing incidents](#ongoing-incidents)
* Key statistics
  * [Vital signs](#vital-signs): heart rate, SpO2, temperature, blood pressure
  * [Physical build](#physical-build): about average height and lean build
* Sensory and external organs:
  * [Dental status](#dental-status)
  * [Eye status](#eye-status)
  * [Ears and hearing status](#ears-and-hearing-status)
  * [Skin](#skin)
* Internal trends and biomarkers
  * [Insulin sensitivity and glycemic control](#insulin-sensitivity-and-glycemic-control) (these help determine the chances of getting to diabetes)
  * [Atherosclerotic risk](#atherosclerotic-risk)
  * [Metabolic syndrome evaluation](#metabolic-syndrome-evaluation)
  * [Markers of internal inflammation](#markers-of-internal-inflammation)
  * [Hormones](#hormones)
* Upcoming sections to be written around internal organs, will cover
  what I can gather from measurements taken in my blood tests as well
  as other biomarkers covered in the preceding section to paint a
  picture both of the current health and of the trajectory of my liver
  health.
  * Liver status (include ALT and AST measurements, MADLD chances, insulin sensitivity implications, info from DEXA scan if I get it)
  * [Kidney status](#kidney-status)
    * [GFR estimation](#gfr-estimation)
    * [Urinalysis](#urinalysis)
    * [Metabolic panel](#metabolic-panel)
    * [Urine quantity and pattern](#urine-quantity-and-pattern)
  * Lung status (I haven't done any pulmonary function tests, so inferences will be indirect)
  * Heart status (I don't have much to go on except measurement of vitals and general lifestyle info)
* Lifestyle factors
  * [Lifestyle](#lifestyle)
  * [Diet](#diet)
  * [Digestive cycle](#digestive-cycle)
  * [Supplements](#supplements)
  * [Physical exercise](#physical-exercise)
  * [Cognitive exercise](#cognitive-exercise)
  * [Sleep](#sleep)
  * [Other routine elements](#other-routine-elements)
* Medical matters (excluding digestive and sleep stuff covered in preceding sections)
  * [Infectious diseases and vaccines](#infectious-diseases-and-vaccines)
  * [Injuries](#injuries)
  * [Medications](#medications)
  * [Surgeries](#surgeries)
* [Aging](#aging)

## Ongoing incidents

This section lists and links to ongoing incidents. This section was
last updated June 18, 2025. I hope to update this section whenever
there's a new incident or the status of an existing incident changes
significantly. I remove from here incidents that I consider closed; I
may consider an incident closed once the healing is well on its way
and it is no longer meaningfully affecting my daily life, even if not
all of its ramifications have been fully addressed.

As of July 22, 2025, I have no open incidents.

You can see the list
of incidents for 2024 in the [events/2024 folder](../events/2024), and
the (currently empty) list of incidents for 2025 in the [events/2025
folder](../events/2025).

## Vital signs

### Heart rate

My resting, seated heart rate, as measured by my Omron blood pressure
machine as well as my Zacurate pulse oximeter, is generally 42-60 bpm
in the morning in summer (before eating or exercise), and a little
higher under comparable conditions in the winter.

My heart rate goes up by about 10-15 bpm when I stand up, and then
stabilizes down to about 5 bpm higher than my seated heart rate.

After I return home from jogging, my heart rate is generally in the
70-100 bpm range. It generally takes about an hour to drop to be
stably in the 60s, which is still higher than my pre-exercise heart
rate.

My heart rate after eating (for the first two hours after eating) is
generally somewhat elevated, in the range of 60-80 bpm. The heart rate
peaks around 0.5-1.5 hours after finishing my meal.

Generally, when my resting heart rate exceeds 75 bpm outside of the
post-exercise context, I can "feel" my heart racing. After I took
antibiotics as part of my recovery process from the [2023-07-05 wisdom
tooth removal (left
side)](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md),
there were periods where I could feel my heart racing. I didn't have
the pulse oximeter at the time, so I relied on crude measurement of my
heart rate, and the crude estimate was around 80 bpm.

I record my heart rate (measured using the Omron blood pressure
machine) as part of my monthly blood pressure readings (as well as
other one-off readings in response to health events or other
incidents) in
[blood_pressure_readings.sql](../sql/blood_pressure_readings.sql). As
of 2025-06-25, my latest morning heart rate readings from the BP
machine (before exercise or eating) as measured as part of blood
pressure measurement were on 2025-06-25 with readings of 54 bpm and 54
bpm respectively. The ambient temperature at the time I took the
readings was 65 degrees Fahrenheit.

I also record my heart rate and SpO2 as part of my monthly pulse
oximeter readings (as well as other one-off readings in response to
health events or other incidents) in
[pulse_oximeter_readings.sql](../sql/pulse_oximeter_readings.sql). As
of 2025-06-25, my latest morning heart rate reading from the pulse
oximeter (before exercise or eating) as measured by the pulse oximeter
was on 2025-06-11 with a range of 52-57 bpm. However, at the time I
had a [respiratory infection (likely the common
cold)](../events/2025/2025-06-respiratory-infection-likely-common-cold.md)
which could in principle distort the readings (although in this case I
don't think the reading was distorted meaningfully). My previous
morning reading was on 2024-10-13 with a range of 49-55 bpm. During
winter months, the pulse oximeter tends to have trouble reading out in
the morning, likely due to cold hands. My most recent afternoon heart
rate reading measured by the pulse oximeter was on 2024-12-14 with a
range of 60-71 bpm; this reading was taken about 2.5 hours after
finishing a meal and is typical of such readings.

For extensive older experiment results, see
[2023-08-18-pulse-oximeter-experimentation.md](../events/2023/2023-08-18-pulse-oximeter-experimentation.md).

### SpO2 (saturation percentage of oxygen)

My SpO2 is about 97% most of the time (sometimes going up to 98% and
sometimes going down to 96%). It is a little higher in the mornings
(around 99%). It can drop to as low as 92% and briefly go down even as
low as 85% when I do an extended breath hold, but it quickly rebounds
and even overshoots before settling back to its equilibrium value.

I also record my heart rate and SpO2 as part of my monthly pulse
oximeter readings (as well as other one-off readings in response to
health events or other incidents) in
[pulse_oximeter_readings.sql](../sql/pulse_oximeter_readings.sql). My
most recent reading taken on 2025-06-11 with a range of 94% to 96%
over a period of one minute. However, at the time I had a [respiratory
infection (likely the common
cold)](../events/2025/2025-06-respiratory-infection-likely-common-cold.md)
which could in principle distort the readings (and in this case I
suspect it did lower the SpO2 compared to what it would otherwise have
been). My previous successful morning reading was on 2024-10-13 was a
range of 99% to 100% over a period of one minute.

For recent pulse oximeter readings, see
[pulse_oximeter_readings.sql](../sql/pulse_oximeter_readings.sql).

For historical results, see
[2023-08-18-pulse-oximeter-experimentation.md](../events/2023/2023-08-18-pulse-oximeter-experimentation.md).

### Temperature

My temperature, as measured by a non-contact forehead infrared
thermometer, ranges from 97.6 to 99. Temperatures at the high end of
this range, when I am feeling well, are generally due to high ambient
temperatures for an extended period of time. See
[2021-08-temperature-baseline.md](../events/2021/2021-08-temperature-baseline.md)
for a historical established temperature baseline.

### Blood pressure

My most recent at-home resting morning blood pressure readings (taken
2025-06-25) were 97/68 and 95/65. My most recent afternoon blood
pressure readings (taken 2024-12-14 about 2.5 hours after finishing a
meal) were 102/62 and 93/60. My most recent evening blood pressure
readings (taken 2025-03-25 about 2.5 hours after finishing a meal)
were 101/64 and 105/64.

I've had home blood pressure readings with the systolic between 91 and
115 and the diastolic between 55 and 75.

These readings use the Omron blood pressure machine, which uses an
oscillometric method. Manual blood pressure measurements will likely
be somewhat higher due to the measurement differences.

For more on my history of blood pressure readings, see
[blood_pressure_readings.sql](../sql/blood_pressure_readings.sql).

## Physical build

### Height

My height is a tad over 5 feet 9 inches. This puts me a little below
average height for an adult male.

### Weight

My weight is between 56 kg and 58 kg, or between 123 lb and 128
lb. According to online BMI calculators, this puts me at a BMI at the
low end of the normal category, just a little above the underweight
threshold.

My weight used to be about 120 lb or 54 kg around 2017, and appears to
have gradually increased over the years, likely partly related to an
increase in muscle mass.

### Waist size

I have a lean, athletic appearance. My waist size is at the "small"
end, with shorts/trousers sizes of 28 and 30 generally working for me,
with 28 being the most preferred (no belt needed), 30 needing a loose
belt, and 32 being manageable with a tight belt. I do not have a
paunch.

### Pending DEXA scan

I'm planning to get a DEXA scan done some time in the next few months
(as of December 2024) to get a better picture of my body
composition. Key insights from the DEXA scan will be included here
once it is done.

## Dental status

* I generally get dental checkups and cleaning done every 6-7
  months. As of 2025, my dental care is handled by Total Health Dental
  Care, and I go to the branch at 3017 Telegraph Avenue, Berkeley, CA
  94705. The notes for the most recent appointment should reflect the
  current status of my dental health. Look in the folder
  `events/<year>` for files with the word `dental-cleaning` in them to
  locate the most recent appointment. As of the last edit of this
  document, [this](../events/2025/2025-04-16-dental-cleaning.md) is my
  most recent appointment.

* My dental hygiene practices are as follows:

  * I brush teeth once in the morning (before eating) and once about 2
    to 4 hours after each meal (I have two meals, so that's 3 times a
    day brushing in total).

    I mostly use a stannous fluoride toothpaste (Colgate), though I
    may on occasion use a sodium fluoride toothpaste when a stannous
    fluoride toothpaste is unavailable.

    About once every 2 to 5 days, I add a small amount of baking soda
    toothpaste when brushing.

    When brushing, I cover my front and back teeth with several
    strokes, my tongue with a few strokes, and do a light run over my
    gums and cheek.

  * I floss and rinse (with saltwater) about 15 to 45 minutes after
    the completion of each meal (generally, I do this after finishing
    the rest of post-meal cleanup), so I floss twice a day and rinse
    twice a day. I use an interdental brush for flossing for one meal
    per day and a floss pick for flossing for the other meal. When
    using the interdental brush, I floss before rinsing, whereas when
    using the floss pick, I rinse before flossing. For rinsing, I use
    saltwater; I don't use a mouthwash.

* Additionally, I execute the [dental self-exam
  checklist](../checklists/dental-self-exam-checklist.md) every 2 to 4
  months and also try to execute it before and after each dental
  cleaning, time permitting. The execution log is
  [here](../logs/dental-self-exam-checklist-log.md).

Some historical information:

* All four of my wisdom teeth have been removed. The removal was done
  in 2023: [overall doc](../events/2023/2023-wisdom-tooth-removal.md), [left
  side](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md), and [right
  side](../events/2023/2023-08-23-wisdom-tooth-removal-right-side.md).

* I got periodontal therapy in September / October 2021, i.e., I had a
  below-the-gumline deep cleaning done. For more details, see [first
  appointment](../events/2021/2021-09-29-periodontal-therapy-first-appointment.md),
  [second
  appointment](../events/2021/2021-10-06-periodontal-therapy-second-appointment.md),
  and [followup
  appointment](../events/2021/2021-12-15-periodontal-therapy-followup-appointment.md).

* My [December 2018 document on a bunch of related
  pains](../events/2018/2018-12-head-neck-jaw-tooth-pain.md) that I experienced,
  including dental pain, and that also marked the start of my
  photosensitivity, may be worth reading.

## Eye status

* I get eye exams every 1-2 years. As of 2025, I get my eye exams from
  UC Berkeley Optometry. Look in the `events/<year>` folders for files
  with `eye-exam` in them to locate information on my eye exams. The
  most recent one is generally the one to pay attention to. As of the
  last major edit of this document,
  [this](../events/2023/2023-10-04-eye-exam.md) is my most recent eye
  exam.

* I don't have a regular protocol for eye care the way I do for dental
  care, but I do try to do a few things as part of my ongoing routine:

  * UV exposure: I wear sunglasses when going for shopping in bright
    sunlight, but not when I go jogging. So, I get about 15 to 25
    minutes of sunlight exposure from jogging, which is a safe and
    desirable level, but not a lot more even if I have longer shopping
    trips.

  * After concentrated sessions on the computer, I try to refocus my
    gaze at a medium distance (about 5 feet or more) as well as long
    distance (outdoors, looking somewhere between 0.1 miles and a
    mile).

  * When I go out, as part of regular traffic monitoring, I look at
    the horizon of the road, which can vary from about 0.1 miles to
    half a mile depending on location.

  * I also exercise caution around my photosensitivity as discussed
    below and in the [best practices around
    light](../best-practices/best-practices-around-light.md).

* I execute the [vision checklist](../checklists/vision-checklist.md)
  every 2 to 4 months. The execution log is
  [here](../logs/vision-checklist-log.md). I might also execute
  portions of the vision checklist (such as trying to read license
  plates) at random points in between.

* I have some issues with distance vision, as evinced in the eye exam
  results. Since I don't drive, and the issues haven't gotten in my
  way so far, I have not chosen to get corrective lenses for these
  issues.

* Other things surfaced by my eye exam: (benevolent so far) melanosis,
  and a difference in the inner/outer ratio between my left and right
  eye (seen through fundus photos). To monitor for trends in either
  eye, I get fundus photos taken with each eye exam (this costs an
  extra $20).

* I have a mild form of photosensitivity, whereby being in sunlight or
  indoor lighting for an extended period of time (generally over an
  hour) can cause me to get fatigued. I have adjusted to this by
  getting sunglasses for outdoor trips, using dark mode and low-light
  settings for my electronics use, and keeping the lights off in the
  evening / at night most of the time. For more on the practices I
  follow (or try to follow), see [best practices around
  light](../best-practices/best-practices-around-light.md).

  The photosensitivity started along with my [Decemer 2018
  head/neck/jaw/tooth
  pain](../events/2018/2018-12-head-neck-jaw-tooth-pain.md).

* A long time ago (in my 20s) I was diagnosed with strabismus (lazy
  eye) and briefly did exercises to improve it. I have not observed
  issues related to lazy eye myself, nor has this been flagged to me
  in my eye exams in 2021 and 2023.

## Ears and hearing status

* I execute the [hearing
  checklist](../checklists/hearing-checklist.md) every 2 to 4
  months. The execution log is
  [here](../logs/hearing-checklist-log.md). I also try to do quick
  tests of parts of the hearing checklist more frequently, for
  instance, testing for minimum audible volume while I am listening to
  videos.

* I exercise caution in terms of exposing myself to loud noises and to
  extended periods of listening to stuff.

Most recent specific incident: I experienced reduced hearing in my
left ear starting 2024-11-29. After a bunch of at-home testing, I
booked an audiological evaluation appointment for 2025-01-15. At the
appointment, we decided to just do earwax removal instead of a hearing
test, with the plan being for me to do a followup at-home hearing test
and book an appointment for a hearing test + further evaluation if I
continued to have issues. The at-home testing I did after the
appointment suggested that the reduced hearing in my left ear had been
resolved.

Related documents:

* [2024-11-29: reduced hearing in left ear](../events/2024/2024-11-29-reduced-hearing-in-left-ear.md)
* [2024-12-23: Berkeley Hearing Center call](../events/2024/2024-12-23-berkeley-hearing-center-call.md)
* [2025-01-15: audiological evaluation](../events/2025/2025-01-15-audiological-evaluation.md)

## Skin

My skin is on the dry side of the spectrum, so particularly in colder
climates, it can get cuts if not adequately cared for. I generally
apply vaseline lotion to my legs daily and to my hands (just the
hands, not the forearms) several times a day. With moderate care, I don't
have any noticeable skin issues.

For evaluation, I execute the [skin
checklist](../checklists/skin-checklist.md) every 2 to 4 months. The
execution log is [here](../logs/skin-checklist-log.md).

## Insulin sensitivity and glycemic control

You can get full details
[here](https://github.com/vipulnaik/diet-exercise-health/blob/master/sql/test_results.sql)
of all test results for me so far of tests discussed in this section.

### Insulin sensitivity/resistance spectrum measurements

The spectrum from insulin sensitivity to insulin resistance measures
how sensitive the body is to insulin for the purpose of controlling
blood glucose. The more sensitive, the less insulin is needed to
maintain normal blood glucose. As of 2025, my insulin sensitivity
seems to be in the optimal range. I do not seem to have insulin
resistance, and I plan to continue monitoring for this.

#### Insulin resistance calculated using fasting insulin (HOMA-IR method)

I have measured fasting insulin twice, once in June 2021, where I got
a reading of 3.6 uIU/mL, and once in September 2024, where I got a
reading of 4.6 uIU/mL. Both readings are in the normal range. The
thresholds for insulin itself were set at 19.6 and 18.4 in these two
tests, so I am well within the thresholds.

The second reading (from September 2024) was obtained alongside a
blood glucose reading, which was 85 mg/dL. This allows for the
calculation of homeostatic model assessment insulin resistance
(HOMA-IR), which is obtained by multiplying the fasting insulin and
fasting blood glucose measured simultaneously (in units uIU/mL and
mg/dL) and dividing by 405. **My HOMA-IR score of 0.97 is less than 1,
which marks me as insulin-sensitive and not insulin-resistant** (in
general, a range of 0.5 to 1.4 is considered insulin-sensitive, with
scores of 1 or lower considered optimal).

For ease of consumption, here are my four recent readings that contain either fasting glucose or fasting insulin or both.

Reading date | Fasting glucose (mg/dL) | Fasting insulin (uIU/mL) | HOMA-IR (less than 1 is optimal, less than 1.4 is good, less than 2 is okay)
-- | -- | -- | --
2025-01-22 (January 2025) | 83 | N/A | can't calculate
2024-12-13 (December 2024) | 85 | N/A | can't calculate
2024-09-03 (September 2024) | 85 | 4.6 | 0.97
2021-06-30 (June 2021) | N/A | 3.6 | can't calculate, but if glucose were <= 100 mg/dL (which I expect it would have been), I would be in the optimal range

#### Insulin resistance calculated using NMR lipoprofile (LP-IR method)

I got a NMR lipoprofile as part of my second round of 2024 blood
tests. The test calculated my LP-IR score as < 25, placing me in the
25% with the highest insulin sensitivity or the lowest risk of
developing insulin resistance. The bad LDL portion of the NMR
lipoprofile (that on its own would have put me between the 50th and
75th percentile of risk) was more than compensated for by the good HDL
and VLDL portions.

#### Ratio of triglycerides to HDL (TG/HDL-C ratio)

The ratio of triglycerides to HDL cholesterol (known as the TG/HDL-C
ratio) is considered an approximate measure of insulin resistance; a
higher TG/HDL-C ratio indicates more insulin resistance. Roughly,
ratios of 2 or lower are considered ideal; [this
paper](https://www.sciencedirect.com/science/article/abs/pii/S1933287421001197)
suggests 2.6 or lower for men and 1.7 or lower for women. Ratios of 4
or higher are considered high-risk.

However, people with higher standards have advocated targeting a
TG/HDL-C ratio of 1 or less.

Here are my four most recent readings and the calculated TG/HDL-C
ratios:

Reading date | Triglycerides (mg/dL) | HDL-C (mg/dL) | Ratio (less than 1 is optimal, less than 2 is decent, less than 2.6 is okay for males)
-- | -- | -- | --
2024-12-13 (December 2024) | 56 | 66 | 0.85
2024-09-03 (September 2024) | 89 | 46 | 1.93
2021-06-30 (June 2021) | 124 | 46 | 2.70
2017-11-12 (November 2017) | 79 | 51 | 1.55

While the most recent reading paints an "optimal" picture, the other
readings paint a picture ranging from decent to slightly
worrisome. Overall, it's clear that I do not have significant insulin
resistance at this stage, but the picture is not quite as optimal as
the HOMA-IR calculation suggests. Continued monitoring will help paint
a clearer picture.

#### Plan for followup measurements and actions

My plan is to monitor my insulin sensitivity through periodic
measurement:

* HOMA-IR calculation: I plan to get simultaneous readings of fasting
  glucose (as part of a comprehensive metabolic panel) and fasting
  insulin about once a year. This will give a time series of HOMA-IR
  at roughly yearly granularity.

* LP-IR calculation: I plan to get a NMR lipoprofile (that includes
  the LP-IR score) about once a year. This wiill give a time series of
  LP-IR at roughly yearly granularity.

* TG/HDL-C ratio calculation: I plan to get a lipid panel (either a basic one or
  a NMR lipoprofile) every 3 to 6 months, getting 2 to 4 readings per
  year. This will give a time series of TG/HDL-C with 2 to 4 data
  points per year.

If the combined picture from the levels and trends revealed in these
measurements is concerning, and I don't get other information that
causes me to update, I may invest more effort. Until then, I do not
plan to do any further research or lifestyle adjustment around insulin
sensitivity.

If I do get new information, I may look into also adding post-prandial
glucose + insulin measurements. This will involve getting a
post-prandial blood test.

### Glycemic control

Glycemic control refers to control of blood glucose levels. Generally,
insulin resistance is the main factor that causes poor glycemic
control in the long term. In the short term, glycemic control may be
poor due to a range of other factors including short-run dietary and
energy expenditure choices.

#### Blood glucose levels

My fasting blood glucose appears to be around 85 mg/dL, and I have one
non-fasting measure of 92 mg/dL. I have not used an at-home glucose
measurement tool or a continuous glucose monitor yet.

Reading date | Blood glucose (mg/dL) | Hours since last meal (12 or more is considered fasting)
-- | -- | --
2025-01-22 (January 2025) | 83 | 15.5
2024-12-13 (December 2024) | 85 | 15
2024-09-03 (September 2024) | 85 | 15
2024-04-30 (April 2024) | 92 | 6.5

#### HbA1c

HbA1c measures the percentage of hemoglobin that is glycated. It
reflects a weighted average of the frequency and extent of elevated
blood glucose levels over the past 3 to 4 months (determed by the
lifetime of the red blood cell). HbA1c levels of 6.5% and higher are
considered indicative of diabetes. Levels of 5.7% to 6.4% are
considered indicative of prediabetes, and levels of 5.6% are below are
considered normal.

Reading date | HbA1c (%) | Fasting blood glucose (mg/dL) in the same blood draw (if present)
-- | -- | --
2024-09-03 (September 2024) | 5.5 | 85
2021-06-30 (June 2021) | 5.0 | N/A
2016-12-12 (December 2016) | 5.5 | N/A

For comparing the June 2021 and September 2024 readings, a note on the
Quest Diagnostics website suggested changes to the measurement method
that may increase measured HbA1c by up to 0.3 percentage points.

#### Plan for followup measurements and actions

My plan is to monitor my glycemic control through periodic
measurement:

* Fasting blood glucose: I plan to get this tested as part of a
  comprehensive metabolic panel (CMP) once every 3 to 6 months, or 2
  to 4 times a year.

* HbA1c: I plan to get this tested at least once a year, and with that
  measurement done alongside a CMP so that I can compare the
  measurements. However, if I get a reading at or above 5.7%, I will
  do a followup measurement within 3 to 6 months of that measurement.

I plan to put in more effort into investigating this if either my
insulin sensitivity worsens or one of these happens; otherwise I am
not planning to do further research or make lifestyle adjustments:

* A single fasting blood glucose reading at or above 100 mg/dL

* Two consecutive fasting blood glucose readings at or above 92 mg/dL

* A single HbA1c reading at or above 6.0%

* Two consecutive HbA1c readings at or above 5.7%

Further investigative efforts may look as follows:

* At-home glucose meter so that I can measure my blood glucose at
  multiple times in the day periodically

* Continuous glucose monitor for about two weeks to get a picture of
  the fluctuation in my blood glucose levels

These measurements could help inform and refine my food consumption
strategy.

## Atherosclerotic risk

You can get full details
[here](https://github.com/vipulnaik/diet-exercise-health/blob/master/sql/test_results.sql)
of all test results for me so far of tests discussed in this section.

### Concentration of atherogenic particles in the blood

#### Apolipoprotein B (Apo B): 89 mg/dL (upper end of desirable)

The atherogenic particles are the particles that have the potential to
contribute to atherosclerosis. This includes LDL (low density
lipoprotein) and VLDL (very low density lipoprotein) particles (in
practice, unless somebody has highly elevated triglycerides, LDL
particles dominate the particle count). When such particles invade the
endothelial lining of the wall of the blood vessel, this has the
potential to lead to the formation of a "foam cell" that can
ultimately lead to atherosclerosis.

All the atherogenic particles have an apolipoprotein on them called
apolipoprotein B (Apo B, more specifically Apo B-100; by default here,
"Apo B" is shorthand for "Apo B-100"). There are two feature of Apo B
that make it a good way to gauge the concentration of atherogenic
particles:

* Each atherogenic particle has exactly one Apo B-100 on it.

* Apo B-100 has a fixed molecular mass, so measuring the density (mass
  per unit volume) is equivalent to measuring the molar concentration.

The upshot is that Apo B is good as a single numeric measure of
atherogenic particle concentration.

It's also generally believed that atherogenic particle concentration
is a good proxy for the risk created by atherogenic particles, and
since Apo B measures the former, it is a proxy for atherogenic
particle risk. (Contrast this with measuring the cholesterol content
in these particles, such as LDL cholesterol; although usually highly
concordant in most cases, this is a less predictive measure than the
particle concentration when they do differ).

As of December 2024, I have only one data point directly measuring Apo
B, namely the reading from the blood test done on December 13. The
reading of 89 mg/dL is at the upper edge of acceptable, and I should
ideally have a much lower Apo B. My inferred atherogenic particle
concentration of 1618 nmol/L uses 550,000 as the molecular mass of Apo
B. In this round of blood tests, I also got a NMR lipoprofile, that
includes a direct measure of LDL particle concentration (LDL-P) of
1313 nmol/L, and very little VLDL, so the atherogenic particle
concentration inferred that way would be close to 1313 nmol/L, which
is lower. But this much discrepancy (around 20-25%) seems typical.

Reading date | Apo B (mg/dL) | Inferred atherogenic particle concentration (self-calculated) (nmol/L)
-- | -- | --
2024-12-13 (December 2024) | 89 | 1618

#### Lipoprotein (a) (Lp(a)): 103.6 nmol/L (high)

Lp(a) particles are a particular kind of LDL particle that have an
additional apolipoprotein attached to them called apoliprotein (a)
(Apo (a)) (in addition to Apo B). This is different from Apo A
(capital A) which is the apolipoprotein found on HDL
particles. Confusingly, the term Lp(a) is also used for the gene that
codes for Apo (a). This gene varies quite a bit between individuals,
and that variation drives variation in the exact structure of Apo (a)
for a given individual. This variation in structure in turn affects
the concentration of Lp (a). [This
video](https://peterattiamd.com/benoitarsenault/) goes into a lot of
detail regarding Lp(a).

Lp(a) is significant for the following reasons:

* On a per-particle basis, Lp(a) particles are believed to be much
  more atherogenic than typical LDL particles. This means that for
  individuals with elevated Lp(a), their Apo B understates their
  overall risk, because the Lp(a) subset of the atherogenic particles
  are more atherogenic.

* Lp(a) levels seems to be mostly genetic, affected by the Lp(a) gene
  that determines the exact structure of the Apo (a) in the given
  individual. The key reason for this seems to be that Lp(a) levels
  are governed primarily by production rather than clearance, so most
  mechanisms that help improve clearance (including lifestyle and most
  pharmacology) tend to affect the non-Lp(a) LDL particles more and
  don't affect the Lp(a) that much.

* Statins, one of the mainline treatments for high atherogenic
  particle concentration, can worsen Lp(a) (though the overall effect
  on atherogenic risk is still positive -- as demonstrated
  experimentally -- because of more reduction in non-LDL particles
  than increase in Lp(a) particles even after accounting for Lp(a)
  particles being more atherogenic on a particle-by-particle basis).

* On the other hand, PCSK9 inhibitors, a more expensive and more
  recent type of medication for high atherogenic particle
  concentrations, do reduce Lp(a) somewhat. As of 2025, there is no
  oral PCSK9 inhibitor, though there's one from Merck (called MK-0616)
  that is under trial (see
  [here](https://www.merck.com/news/merck-initiates-phase-3-clinical-program-for-oral-pcsk9-inhibitor-candidate-mk-0616/)).

* There are drugs under development called antisense oligonucleotides,
  that reduce Lp(a) significantly (to the tune of 80%). It remains to
  be seen whether lowering Lp(a) pharmacologically is able to drive
  improvements in outcomes (that's what the trials will be for).

In light of this, it is useful to get a baseline measure of one's
Lp(a) to (a) get a baseline estimate of one of the factors affecting
atherosclerotic risk and (b) make more informed choices regarding
medications to try.

I have one measurement of Lp(a), taken in December 2024, that shows my
Lp(a) to be high. This means that the remarks above apply: the Lp(a)
places me at increased atherosclerotic risk, increases the value to
me of trying to reduce Apo B, and also argues more in favor of PCSK9
inhibitors over statins.

Reading date | Lp(a) (nmol/L)
-- | --
2024-12-13 (December 2024) | 103.6

#### LDL cholesterol (LDL-C): 109 to 122 mg/dL (high)

Although not as good a measure as Apo B, LDL-C has the advantage that
I have more data points for it. Here are my most recent readings of
LDL-C:

Reading date | LDL-C (mg/dL) | Method | Other related measures
-- | -- | -- | --
2024-12-13 (December 2024) | 122 | NIH equation 2 | LDL-P: 1313 nmol/L, Apo B: 89 mg/dL
2024-09-03 (September 2024) | 112 | Martin-Hopkins | N/A
2021-06-30 (June 2021) | 122 | Martin-Hopkins | N/A
2017-11-12 (November 2017) | 109.7 | Colorimetric | N/A

These readings paint a picture concordant with my recent Apo B
reading, and suggest that I've had issues with high atherogenic
particle concentrations for a long time.

#### Plan for followup measurements and actions

See [here](../notes/lipid-lowering-strategies.md) for my more detailed
plans for 2025 and 2026. The TL;DR is frequent measurement of the
important biomarkers, more one-off measurements, and investigation of
pharmacological options.

### Other contributing factors to atherosclerotic risk

Atherogenic particles, proxied by Apo B measurement, are the input to
the formation of foam cells which in turn lead to atherosclerosis. A
number of other factors affect the propensity of the atherogenic
particles to form foam cells.

The first step is for the particles to invade the endothelium -- the
inner lining of the blood vessel. The endothelium's response to this
invasion is what kicks off atherosclerosis. Thus, factors that
influence both how easily a given particle can invade the endothelium
and how aggressively the endothelium responds can affect the extent of
atherosclerosis.

#### Blood pressure as a contributor: low and therefore good for me

High blood pressure has a mechanical effect of pushing the atherogenic
particles against the endothelium, which can increase the extent to
which they invade the endothelium. Fortunately in my case, my blood
pressure is consistently on the low end so blood pressure is not
exacerbating the situation for me.

#### Smoking as a contributor (in many ways): I don't smoke so therefore good for me

Smoking contributes directly to endothelial damage, making it easier
for atherogenic particles to invade the endothelium. It also increases
the risk of atherosclerosis at numerous other stages of the process
(for instance, elevating the concentration of atherogenic particles,
increasing the clotting of blood, etc.).

#### Insulin resistance: I don't seem to have it yet, so good for me

Insulin resistance causes damage to the endothelial lining because
both high levels of insulin and high levels of blood glucose damage
the endothelial lining, and insulin resistance basically means having
high levels of at least one of them most of the time (because high
insulin is needed to get blood glucose low). Per the section on
[insulin sensitivity and glycemic
control](#insulin-sensitivity-and-glycemic-control), I don't have
insulin resistance yet, and my glucose seems to be normal, so this is
not adding to my atherosclerotic risk.

#### Homocysteine aka homocystine

Elevated homocysteine levels are a potential causal factor for the
sort of inflammation that could increase atherosclerotic risk.

While the official reference interval for homocysteine is 0 to 14.5
umol/L, the ideal range is around 6 to 8 umol/L, with some efforts to
increase it starting when it consistently reads below 6, and efforts to
decrease it starting when it consistently reads above 8.

My readings so far suggest my homocysteine is mildly elevated relative
to the ideal, but still within the reference interval. Since my B12
reading is at the high end of normal, it doesn't seem that B12
deficiency is responsible for homocysteine elevation.

Reading date | Homocysteine (umol/L)
-- | --
2025-01-22 (January 2025) | 10.4

Plan for followup measurement and actions: I want to get another
homocysteine reading about a year after the first reading, then
investigate further it if gets a lot higher than the current value.

#### Uric acid

Elevated uric acid levels are a potential causal factor for
inflammation that could increase atherosclerotic risk.

The reference range is between 3.8 and 8.4 mg/dL.

I've had one uric acid reading so far, and it has coem out normal.

Reading date | Uric acid (mg/dL)
-- | --
2025-01-22 (January 2025) | 5.7

### General inflammation

See the later section [Markers of internal
inflammation](#markers-of-internal-inflammation).

## Metabolic syndrome evaluation

Based on the document so far, it's clear that I don't satisfy any of
the conditions for metabolic syndrome:

* Hypertension: My blood pressure is well below 120/80.

* Hyperglycemia: My blood glucose was measured as normal in January 2025, December
  2024, and September 2024 (all fasting) and April 2024 (6.5 hours
  after meal), and proxy measures based on HbA1c also suggest that
  it's normal.

* HDL cholesterol: My recent readings of 66 mg/dL (December 2024) and
  46 mg/dL (September 2024) are above the lower threshold of 40 mg/dL
  for males.

* Serum triglycerides: My recent readings of 56 mg/dL (December 2024)
  and 89 mg/dL (September 2024) are below the upper threshold of 150
  mg/dL.

* Waist size: At 28 inches, my waist size is well below the thresholf
  of 40 inches.

## Markers of internal inflammation

### C-reactive protein

C-reactive protein (CRP) is an acute phase reactant that is considered
a good marker of inflammation. Acutely high levels (generally, greater
tha 3 mg/L, though often even more than 10 mg/L) are indicative of
current or recent infection. Moderately high levels (greater than 1
mg/L) outside of the context of infection are indicative of high
levels of inflammation that predict increased atherosclerotic risk, as
the inflammation eggs on the process of plaque formation.

So far, I have one reading of CRP showing it to be fairly low, and
therefore suggestive that inflammation is not contributing to
atherosclerotic risk for me.

Reading date | C-reactive protein (mg/L)
-- | --
2025-01-22 (January 2025) | 0.24

## Hormones

NOTE: Insulin is covered along with glycemic control in the [insulin
sensitivity and glycemic
control](#insulin-sensitivity-and-glycemic-control) section.

### Thyroid (T3, T4, TSH)

You can get full details
[here](https://github.com/vipulnaik/diet-exercise-health/blob/master/sql/test_results.sql)
of all test results for me so far of tests discussed in this section.

Here's a quicker primer:

* The pituitary gland produces a hormone called thyroid-stimulating
  hormone (TSH); higher levels of TSH encourage the production of
  thyroid hormone (see next point).

* The thyroid gland produces the thyroid hormone in the form of T4
  (thyroxine).

* T4 can be converted to T3 (the difference being that T4 contains
  four iodines and T3 contains three iodines). The enzyme that
  facilitates this conversion is a deiodinase.

* T3 is carried in the bloodstream by thyroxine-binding globulin (TBG).

* In order to enter cells (where it can have its desired effects), T3
  needs to dissociate from TBG and then enter the cell by attaching to
  a membrane transport protein.

Here is a simple 2 X 2 of hypothyroidism and hyperthyroidism:

   Case     |          High TSH         |        Low TSH
  --        |            --             |           --
High T3, T4 | secondary hyperthyroidism | primary hyperthyroidism
Low T3, T4  | primary hypothyroidism    | secondary hypothyroidism

The "poor man's" thyroid test is just to test for TSH, and if it comes
out high or low, then to test T4 to figure out the case. If TSH is
normal, then most likely thyroid function is normal.

It's a little more expensive, but still worth it, to do a basic
thyroid panel that includes TSH, T4, and a couple of other metrics
(free thyroxine index and T3 uptake).

This basic thyroid panel **does not measure** the level of free T3
directly, which is a bit harder to get a hold of. There is a more
expensive test using LC/MS to measure free T3.

T3 uptake level (one of the pieces of the thyroid panel) measures the
percentage of binding sites on TBG that are saturated with
T3. However, this is a percentage, rather than a measure of how much
T3 is bound. As a percentage, it is affected by both the level of T3
and the level of TBG. An excess of TBG can result in a low T3 uptake
level, but there may still be enough T3. To get clarity, a TBG level
should also be measured along with the thyroid panel. See
[here](https://www.rupahealth.com/biomarkers/t3-uptake) for an
overview.

So far, I've gotten one basic thyroid panel in December 2024 and one
earlier reading of just TSH (November 2017). My TSH reading has been
normal both times. My T4 and free thyroxine index were normal the one
time I measured them. For T3 uptake, the one reading I have from
December 2024 is just slightly below range, which could be due to low
T3 or high TBG. I plan to add in TBG with my next thyroid panel so
that I have more clarity on this aspect.

## Kidney status

### GFR estimation

A key measurement associated with kidney function is the glomerular
filtration rate (GFR) which is the rate at which blood is filtered
into the kidneys. The GFR needs to be sufficiently high for the
kidneys to perform their function of clearing out water and waste
products from the bloodstream. GFR varies throughout the day, and
direct measurement of it is pretty difficult, so in practice the way
it's estimated is by using the level of biomarkers in the blood.

Two biomarkers used to assess the average GFR are creatinine and
cystatin C. In both cases, the lower the level of the biomarker, the
higher the estimated GFR.

Creatinine is the more traditional biomarker, and is included as part
of the basic metabolic panel (BMP) as well as the comprehensive
metabolic panel (CMP). The main issue with creatinine is that its
level can vary across individuals and across time for a given
individual for reasons unrelated to kidney function, that are not easy
to capture in the formula. In particular, higher muscle mass tends to
correlate with more creatinine, because creatinine is a waste product
of creatine that is involved in muscles. Conversely, low muscle mass
can correlate with low creatinine.

Cystatin C is a better biomarker that doesn't vary much for reasons
other than kidney function, so it's considered a better marker of
kidney function in general. In cases where cystatin C and creatinine
give very different estimates of GFR, the estimate from cystatin C is
considered the more reliable one and the estimate from creatinine can
essentialy be discarded.

In my case, I have gotten a GFR estimate using cystatin C just once,
whereas I've gotten several GFR estimates using creatinine. The GFR
estimate using cystatin C is 88, whereas the ones using creatinine
have been in excess of 110, due to lower-than-usual creatinine levels
which might be related to low overall muscle mass.

Below are my recent readings:

Reading date | Type of measurement | eGFR (mL/min/1.73 m^2)
-- | -- | --
2025-01-22 (January 2025) | cystatin C | 88
2025-01-22 (January 2025) | creatinine | 121
2024-12-13 (December 2024) | creatinine | 119
2024-09-03 (September 2024) | creatinine | 114
2024-04-30 (April 2024) | creatinine | 113
2016-12-12 (Decemeber 2016) | creatinine | 133

Based on the general guidance, I am inclined to discard the
creatinine-based estimates and focus on the cystatin C-based
estimate. The estimate of 88, while well above the stage where
it suggests impaired kidney function, is still mildly concerning for
my age, because it suggests that I don't have a lot of buffer room
till I get to the concerning level of around 59. With that said, I
currently have just one data point and it's definitely not enough to
show a clear trend line.

#### Plan for followup measurements and actions

I plan to get a cystatin C measurement every 2 to 3 years to get a
clear picture of the trend. I will also continue monitoring my
metabolic panel for any other evidence of impaired kidney function.

### Urinalysis

I had a urinalysis done in June 2005 and then another done in April
2024. The things tested were different the two times. In any case,
neither urinalysis flagged any issues with the urine.

### Metabolic panel

I started getting a comprehensive metabolic panel as part of my blood
tests in April 2024. Part of a comprehensive metabolic panel is the
basic metabolic panel, that includes measurements of various key
electrolytes including sodium, potassium, chloride, and bicarbonate.

For all of these, I've always stayed within range. For sodium, all
readings have been close to the middle of the range, which is as
expected for a well-functioning system, since sodium concentration is
the most tightly regulated. The range is about 134-144 mmol/L.

Below are my four most recent sodium readings:

Reading date | Sodium measurement (mmol/L)
-- | --
2025-01-22 (January 2025) | 141
2024-12-13 (December 2024) | 139
2024-09-03 (September 2024) | 139
2024-04-30 (April 2024) (not fasting) | 140

For chloride, I have stayed within the range of about 96 to 106 mmol/L
and generally been in the upper half of the range, with decent
fluctuation.

Reading date | Chloride measurement (mmol/L)
-- | --
2025-01-22 (January 2025) | 103
2024-12-13 (December 2024) | 101
2024-09-03 (September 2024) | 103
2024-04-30 (April 2024) (not fasting) | 105

Potassium is a little less tightly controlled, with a range of 3.5 to
5.2 mmol/L. I've generally stayed around the middle of this wide range.

Reading date | Potassium measurement (mmol/L)
-- | --
2025-01-22 (January 2025) | 4.4
2024-12-13 (December 2024) | 4.3
2024-09-03 (September 2024) | 4.5
2024-04-30 (April 2024) (not fasting) | 4.1

Bicarbonate also has a wide range. Mine has generally been in the
upper half of the range, which might be correlated to my efforts to
maintain high CO2 tolerance through breath holds. However, the
individual readings don't correlate very closely with my breath hold
max-pause duration; specifically, my max-pause duration generally
increased from April 2024 to January 2025, and yet the bicarbonate
measurement appears to have dropped and then risen. So it's not a very
precise and faithful correlate of breath hold max-pause duration.

The range of acceptable bicarbonate is about 20 to 30 mmol/L.

Reading date | Bicarbonate measurement (mmol/L)
-- | --
2025-01-22 (January 2025) | 27
2024-12-13 (December 2024) | 25
2024-09-03 (September 2024) | 29
2024-04-30 (April 2024) (not fasting) | 30

### Urine quantity and pattern

My urine is generally yellow in color (as also confirmed in both the
urinalyses that have been done). I've noticed a neon-green color as a
result of taking a B complex supplement, for a few hours after taking
the supplement. I don't take this supplement regularly.

I generally urinate about 8 to 10 times a day.

These are the 7 scheduled/trigger-based time points, where I'll
generally go to urinate even if I don't feel a strong urge (although
in warmer climates I may skip some of the pre-meal and post-meal ones):

* Once after waking up (1 time total)

* Once before eating for each meal (2 times total)

* Once after eating and post-meal cleanup (2 times total)

* Once before going jogging in the morning (1 time total)

* Once as I wrap up to go to sleep (1 time total)

Additional ones:

* Once or twice at other times during the day, usually about 1.5 to 3
  hours after the last scheduled time, or in some cases earlier if I
  am preparing to go out.

* One urination mid-sleep, generally in colder weather. The colder the
  weather, the earlier in my sleep I'll do the mid-sleep urination.

## Lifestyle

### Largely sedentary lifestyle with deliberate exercise

Since the onset of the COVID-19 pandemic in March 2020, I have
predominantly worked from home. Outside of daily jogging, I don't have
daily outside-the-house trips. Beyond that, I do outside trips for
grocery shopping, picking up takeout food, toiletry shopping, and some
other chores.

### Mostly computer-based day

While at home, I spend most of the day on the computer, both when
working and for most of my personal tasks. Even when eating and for
the cutting portions of meal prep, particularly the cutting of
vegetables, I am in front of a computer (usually watching a movie, TV
show, or other video, sometimes reading material). When doing at-home
strength exercises, I sometimes have a podcast on.

The above has been approximately true for several years, but it's been
becoming more true since the switch to work-from-home and the increase
in the extent to which things can be handled online.

### Walking for most outside trips

For most outside trips, I walk both ways. I use mass transit (usually
Bay Area Rapid Transit, occasionally a bus) once every few months,
generally only when the location I'm going to is more than 45 minutes
away walking, and sometimes when walking is difficult due to weather
conditions. I don't have a car and almost never use taxi or rideshare
services.

I used BART a lot more prior to the switch to work-from-home in March
2020, and since I was using BART more in general to commute to work
(that was quite far from my home) I was used to using it even for
somewhat shorter trips. So the switch to work-from-home has really
helped change the way I use and think about BART.

The switch to part-time work in March 2023 has led me to switch
further in the direction of walking. Specifically, it's changed the
distance threshold at which I decide to use BART instead of
walking. When time was scarcer, I would tend to use BART at walking
distances of 30 minutes or more; now the threshold is about 45 minutes
and in some cases even higher. In particular, in practice pretty much
anything that can be done in Berkeley or in areas bordering Berkeley
(such as North Oakland, Albany, or Emeryville) I would do by walking.

### Low-stress job

Since my job is part-time, and the systems I am working on are mostly
stable, there are rarely time-sensitive urgent things to handle, and
the total amount of work is relatively easy to manage. Overall, I
would describe my job as low-stress.

This is a relatively recent development. The period from 2018 to 2020
was a period of relatively high stress at the job. Starting 2021, my
workload-related stress has been reducing. There was an increase in
some aspects of stress after a job switch, but this was not so much
due to "too much work" and more due to challenges related to the
nature of the work. After my return to my old job in March 2023, and
the switch to part-time, I haven't had any job-related stress. There
have been brief bursts of working hard, but these have been mostly
optional and a choice I made to get ahead on some fronts.

Aspects that help keep things low-stress:

* Part-time nature of job
* Relative absence of urgent / time-sensitive tasks
* Familiarity with the systems I'm working with (developed over
  several years)
* Good interpersonal relations at the job and lack of conflict
* Work-from-home with fairly flexible hours (so commuting time is low,
  I have flexibility regarding when I wake up, and I have enough
  flexibility that I rarely have to worry about missing exercise for
  the whole day because something came up in the morning)
* Low meeting load and no strict requirement to turn the camera on
  during meetings

### Low pollution

Typically, the air quality index (AQI) in Berkeley is between 20 and
35. This is considered good. Subjectively, I rarely feel like I'm in
polluted settings.

Air quality can sometimes get bad due to smoke from forest fires
farther away. In such cases, I can take additional precautions such as
taking a break from outdoor trips, closing windows, and masking up if
I do need to go outdoors. See [2023-09-19 onward air quality
issues](../events/2023/2023-09-19-onward-air-quality-issues.md) for an example of
such an incident.

### No smoking, alcohol, or recreational drugs

#### Smoking

I have never smoked or used other nicotine-based products.

I have not been exposed to any significant amount of secondhand or
thirdhand smoke. I haven't been indoors with somebody smoking for the
past several years as of 2024, and have only briefly passed by or
trailed people smoking outdoors occasionally.

#### Alcohol

I do not consume any alcoholic beverages, and have never consumed
alcoholic beverages in a significant amount. I have sipped small
amounts of alcoholic beverages to get a sense of how they taste and
smell.

Cough syrup that I consumed (and mostly didn't like) as a child did
contain a nontrivial amount of alcohol.

#### Recreational drugs

I have not personally tried, or been in a closed room with other
people trying, recreational drugs.

## Diet

See https://vipulnaik.com/diet/ for a page with more details on
specific foodstuffs and places I eat or used to eat at, with a focus
on dietary developments from 2014 to 2023.

### Childhood diet

As a child, I followed a vegetarian diet, primarily as a
result of growing up in a vegetarian household in India.

On the vegatarian/vegan distinction:

* Milk and milk products: I had milk products regularly; most significantly,
  curd/yogurt. I also had other milk products to varying degrees,
  including milk, cheese, cottage cheese (paneer), though toward my
  teen years I had phased many of these out.

* Eggs: I remember having egg-based products (omelets, egg-based
  cakes) a few times as a child, but these were not part of my regular
  diet.

* Honey: I remember having honey (jams, marmalades) occasionally, but
  this was not a regular part of my diet.

Due to a family history of diabetes, hypertension, and heart problems,
I was conscious from a relatively young age of the importance of
reducing the intake of sugar and fried foods, and of keeping
carbohydrate consumption to a modicum.

### Changes to diet

As an adult, I have mostly continued with my childhood diet, with
minor modifications. For a period of time in between, I used to
consume hot chocolate drinks daily (from Starbucks or similar
places). Although I didn't consume them for the sugar content, they
did have higher sugar content than the rest of my diet. In 2019, after
[encountering dental problems](../events/2018/2018-12-head-neck-jaw-tooth-pain.md)
that were partly related to this consumption, I phased out hot
chocolate consumption by May 2019. Since then, I have had very low
consumption of sugary foods.

At some point around 2018/2019, I transitioned from a vegetarian to a
vegan diet, mostly for ethical reasons, but also believing that there
would not be significant adverse health impacts. By this point, I was
already taking Vitamin D supplements, and I introduced sauerkraut into
my diet to make up for the loss of active cultures from stopping the
consumption of yogurt.

### Current diet

You can get a general sense of my current diet by looking at my [food
preparations and
openings](../sql/food_preparations_and_openings_2024.sql); this data
goes back to 2024-05-30 (May 30, 2024). I also have food purchase data
going further back to 2021-03-10 (March 10, 2021). Data for the latest
year (2024) can be accessed [here](../sql/food_purchases_2024.sql);
similar files for previous years going back to 2021 are available in
the [containing folder](../sql/).

I also keep track of my food waste [here](../sql/food_waste.sql).

Myy waste-adjusted food preparations and openings present a reasonably accurate
picture of my food consumption. The queries at
[food_preparations_and_openings_verification_queries.py](../python/food_preparations_and_openings_verification_queries.py)
show how to aggregate the data to make inferences regarding nutrients;
my plan is to eventually make a portal out of this data so that it's
easy to browse.

Here are some highlights of my current diet:

* It is vegan in the sense that none of the food I *regularly* consume
  uses animal products. However, I am not particular about vegan
  certification per se. On occasion, when eating out, I may have
  something milk-based, such as a *raita*, if it comes as part of a
  dish I otherwise want to have.

* As part of the data entry of foods I have prepared and opened, I run
  the verification queries alluded to above. These queries flag
  significant deviations from my nutrient targets as well as
  consumption of specific foods that goes outside the expected
  bounds. I plan to continue refining and updating the verification
  queries to provide ongoing monitoring of my consumption patterns.

* The proportion of my food I eat that is restaurant takeout or
  equivalent (prepped meals) is, as of mid-2024, very small -- about
  one meal a month, possibly a bit more in case of travel. This
  represents a sharp drop since mid-to-late 2023, where I was doing
  takeout about once a week on average. The 2023 level is in turn
  lower than 2020-2022, which in turn is lower than the pre-pandemic
  level.

* Since the onset of the COVID-19 pandemic in 2020, I've basically
  stopped eating out except for cases where I'm meeting others; I
  instead do takeout. I have continued this practice and expect to
  continue it indefinitely, as it has several benefits.

* There's also a trend within my supermarket consumption for the food
  to move away from pre-packed meals to home-prepped meals. For
  instance, I used to get pre-cooked chana masala, vegetable biryani,
  and misal curry from Trader Joe's, but by early 2022, I had stopped
  getting all of these. This was to the point that I haven't needed a
  microwave oven at all since 2022.

* As of 2025, I have basically zero sugar-heavy foods or drinks.

* I have two meals a day on a typical day. My first meal is generally
  after my morning exercise (with a suitable waiting period in between
  where feasible) and my second meal is in the evening. The only
  planned-for differences between the meals are as follows:

  * I try to take all my supplements with the first meal.

  * I try to take sauerkraut or kimchi only with the first meal (the
    goal is to limit it to one meal, and doing it on the first meal is
    easier).

  * I take seaweed with my second meal, i.e., the meal where I'm not
    taking sauerkraut.

## Digestive cycle

### Bowel movement cycle

I have daily morning bowel movements. Generally, after I wake up and
urinate, I spend about 10-15 minutes on the computer catching up on my
morning checklist, allowing the pressure to build up, then I have a
bowel movement.

Occasionally I have an additional bowel movement later in the day, or
am unable to have a bowel movement in the morning. These cases are
very unusual. The frequency of such incidents is generally less than
one per month under normal conditions.

I've basically adhered to this bowel movement cycle pretty
regularly. Disruptions have been as follows:

* After the consumption of clindamycin after the [2023-07-05 wisdom
  tooth removal (left
  side)](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md), one of the
  side-effects was diarrhea; there was digestive cycle disruption for
  a few weeks even as the diarrhea subsided.

* The [2024-04-25
  incident](../events/2024/2024-04-25-abdominal-pain.md) was a case of
  severe abdominal pain accompanying constipation-like symptoms,
  though I still did have a bowel movement everyday -- just a
  smaller-than-usual one on 2024-04-25 and 2024-04-26. My bowel
  movement cycle returned to normal on 2024-04-27.

* As part of the [2024-07-18 onward
  incident](../events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md),
  for a period of about a month, despite having regular morning bowel
  movement every day, I had cases where I felt bowel pressure later in
  the day and went for additional bowel movements, most of them
  successful. See
  [here](../events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md#bowel-movement-cycle)
  for more details.

* Travel-related disruptions: My digestive cycle takes about 2-3 days
  to return to normal after travel that results in timezone change. I
  still have a bowel movement within every 48 hours, but the timing
  may be off. However, short travel within the same timezone is
  generally not disruptive (such as travel from the San Francisco Bay
  Area to Portland or Bengaluru to Chennai).

* Disruptions due to waking up early for something: On 2024-04-21, I
  used an alarm to wake up about 2 hours prior to my normal waking-up
  time, and was unable to have a bowel movement that day. This might
  have been one of the causal factors for the 2024-04-25 abdominal
  pain alluded to above.

* Bowel movement after intense food consumption: On 2024-03-27, I ate
  with work colleagues at Tay Ho Restaurant in Oakland. A combination
  of urine suppression and the spicy food that I'm not used to having,
  led to me having a bowel movement when I got back home. This kind of
  incident is rare.

* Second bowel movements every few days from 2024-11-25 to 2024-12-04
  as a result of some combination of significant increase in food
  intake (with the temperature dropping) and anal swelling. I
  addressed this by reducing food intake, trying to make my place
  warmer to reduce appetite, continuin to let my anal swelling heal,
  and switching to more fats and proteins relative to carbs and fiber
  (though in absolute terms, all of them still went up quite a bit) to
  reduce the amount of stool to pass.

### Abdominal discomfort

In 2023, I had diarrhea and basically a digestive reset of sorts as a
result of clindamycin consumption; see my [2023-07-05 wisdom tooth
removal (left
side)](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md)
for details. As far as I can make out, I recovered in a few weeks.

In 2024, I have had more mysterious cases of abdominal discomfort,
that might have related causes. I've documented these incidents to
varying degrees of detail. The three main clusters of events are as
follows:

* [2024-04-25 abdominal pain](../events/2024/2024-04-25-abdominal-pain.md): This was
  characterized by severe pain and led to an urgent care trip and
  bloodwork. However, most of the recovery was quick.

* [2024-07-18 excessive morning activity and abdominal pain in the
  afternoon](../events/2024/2024-07-18-excessive-morning-activity-and-abdominal-pain-in-the-afternoon.md);
  This had less of an acute/severe manifestation but did continue for
  longer. It included abdominal discomfort, flatulence, bloating and
  cramping sensations (no visible distension), and symptoms in the
  vicinty of constipation despite regular daily bowel movements. This
  led me to do a lot of research into potential causes. I also took a
  number of steps including temporary FODMAP restriction (eventually
  reversed after I felt better). Potential causes are described in the
  document.

* [2024-10-08 onward abdominal discomfort and other
  symptoms](../events/2024/2024-10-08-onward-abdominal-discomfort-and-other-symptoms.md):
  As of the last edit of this document, this is the latest iteration
  of the issue. It's milder than previous iterations and I have not
  needed to make temporary adjustments to diet and exercise.

Some of the changes I've made based on these:

* I purchased a FoodMarble Aire 2 and take regular fermentation score
  readings. See [here](../sql/foodmarble_aire_2_breath_tests.sql). At
  least after the purchase, I have not seen consistent issues with
  hydrogen and methane fermentation levels, which has given me more
  confidence that at least as of now, I am unlikely to be experiencing
  small intestinal bacterial overgrowth (SIBO) or intestinal
  methanogen overgrowth (IMO). (This still leaves open the possibility
  that I did experience IMO in past incidents).

* I purchased and experimented with Atrantil; see
  [here](../events/2024/2024-10-02-atrantil-purchase.md). This is
  generally good for digestive health, and is particularly helps if I
  get IMO (or something in the direction of it).

* I built and refined best practices in a number of areas:

  Documents directly related to food, digestive cycle, and abdominal discomfort:

  * [Best practices around abdominal discomfort](../best-practices/best-practices-around-abdominal-discomfort.md)

  * [Best practices around bowel disruption due to sleep and stress](../best-practices/best-practices-around-bowel-disruption-due-to-sleep-and-stress.md)

  * [Best practices around intense and hard food consumption](../best-practices/best-practices-around-intense-and-hard-food-consumption.md)

  Best practices in other areas that were likely contributors:

  * [Best practices around
    sleep](../best-practices/best-practices-around-sleep.md) since I
    suspect that sleep cycle disruption was a contributing factor in
    the 2024-04-25 and 2024-10-08 cases (though not in itself very
    severe).

  * [Best practices around exertion and
    stimulation](../best-practices/best-practices-around-exertion-and-stimulation.md)
    since I think overexertion has been a contributor to all three
    incidents (and has effects beyond digestive cycle disruption).

### Fermentation scores using the FoodMarble Aire 2

Starting around early September 2024, I have been regularly recording
my hydrogen and methane fermentation scores using the FoodMarble Aire
2. The scores can be found
[here](../sql/foodmarble_aire_2_breath_tests.sql). Although the levels
in most cases seems way below the levels that would indicate an
overgrowth, I find it valuable to continue monitoring so as to be able
to detect an overgrowth before it takes effect. I also suspect that my
2024-07-18 incident might have been related to methanogen overgrowth;
I just didn't have the device at the time to measure my methane
fermentation.

For more on the purchase decision for the FoodMarble Aire 2, see
[here](../events/2024/2024-08-21-foodmarble-aire-2-purchase-decision-process.md).

## Supplements

You can get my supplement consumption history from
[here](../sql/supplements.sql). This may not go back all the way to
when I started consuming the supplements, but it should be reasonably
comprehensive 2020 onward.

For blood test results that include results for the quantity of the
materials supplemented, see
[here](https://github.com/vipulnaik/diet-exercise-health/blob/master/sql/test_results.sql).

### November 2017: start of supplementation with Vitamin D, Vitamin B12, and calcium/magnesium/zinc

I started this supplementation after my November 2017 India visit
where I learned more about my family health history and got my vitamin
levels tested to identify my deficiency. I subsequently switched to
brands that were locally available.

### December 2019: start of omega-3 supplementation

See [here](../events/2019/2019-12-30-decision-to-start-taking-omega-3-supplements.md)
for details of my decision process.

### July 2021: switch to Doctor's Best for Vitamin D supplementation

In July 2021, shortly after my [2021 blood test that confirmed my
continued good Vitamin D levels](../events/2021/2021-blood-test-plans.md), I switched
to a vegan 2500 IU Vitamin D3 supplement from Doctor's Best. I had
previously used the 2000 IU supplement from Finest Nutrition.

### September 2024: increase to dose and diversity of omega-3 supplements

* [2024-09-25: decision to increase omega-3 supplement daily dose](../events/2024/2024-09-25-decision-to-increase-omega-3-supplement-daily-dose.md)
* [2024-09-28: decision to experimentally add another omega-3 supplement](../events/2024/2024-09-28-decision-to-experimentally-add-another-omega-3-supplement.md)

The net of these two decisions is that I now have one dose of
Freshfield and one dose of sapling, both vegan omega-3 supplements.

### October 2024: experimentation with Atrantil

See
[2024-10-02-atrantil-purchase.md](../events/2024/2024-10-02-atrantil-purchase.md)
for more information.

### October and November 2024: experimentation with lysine and n-acetylcysteine

See
[2024-10-16-lysine-purchase.md](../events/2024/2024-10-16-lysine-purchase.md)
and
[2024-10-16-n-acetyl-cysteine-purchase.md](../events/2024/2024-10-16-n-acetyl-cysteine-purchase.md).

### Current supplements

My current supplement regime as of November 2024 is:

* 1 daily 2500 IU vegan Vitamin D3 from Doctor's Best
  * My measured Vitamin D level is solidly in the normal range, but
    since my vegan diet has no Vitamin D3 (except a bit of
    fortification in my almond milk), continuing with the
    supplementation is the safe choice for now.

* 2 daily vegan omega-3, with one from Freshfield and one from sapling

  * Based on non-ideal omega-3 test results in both June 2021 and
    September 2024, I increased my supplement daily dose from 1
    softgel to 2 softgels. The blood test results, particularly for
    DHA, actually were worse in the test done in December 2024 after
    the dose increase. However, I think that the plasma test has some
    issues, particularly since I stop supplementation for two days
    prior to the test. A red blood cell test (such as
    [this](https://omegaquant.com/3-reasons-to-measure-omega-3-levels-in-red-blood-cells/))
    would be ideal, but it requires a self-draw and is more of a
    hassle. If doing plasma testing in the future, I plan to not pause
    supplementation for two days prior to the test.

  * I believe that the dose increase for omega-3 might have been
    helpful in reducing my triglycerides and increasing my HDL-C,
    which is what I saw going from September 2024 to December
    2024. There is also anecdotal evidence of improvement in cognitive
    abilities around that time as judged by Human Benchmark tests, but
    it's hard to isolate that factor among many others.

* 1 daily Calcium/Magnesium/Zinc from Nature Made
  * This is just as a safety measure; I don't think I am deficient in
    any of these but it's good to top them up given my vegan diet.

* 1 daily or once-in-two-days Vitamin B12 (supplier can change over time)

  * I target taking 500 mcg daily. When the stock I have is for 1000
    mcg, I take it once every two days instead of daily.

  * I am not currently deficient in Vitamin B12 (the last test in
    September 2024) but this is likely primarily due to
    supplementation. Given my vegan diet, it's better to keep taking
    the supplement. Vitamin B12 is water-soluble so excess should flow
    out.

* 1 daily vegan lysine (600 mg).

* 1 daily vegan n-acetylcysteine with selenium (600 mg).

* Occasional Atrantil consumption in case of significant abdominal discomfort

* Occasional Vitamin C supplement
  * I generally take this before or after events where I expect to be
    more exposed to infection; I don't think I am deficient in Vitamin
    C at all, but since it's water-soluble, excess can easily flow
    out.

* Occasional Vitamin B Complex supplement I may take this occasionally
  (I stopped taking this after suspecting that it was contributing to
  my abdominal discomfort).

With the exception of the occasional Vitamin C supplement and
occasional Vitamin B Complex supplement, I have all of these with my
first meal of the day.

### Other one-off supplement consumption

Across late 2019, 2020, and 2021, I consumed a curcumin supplement
from a left-over bottle given by a friend to deal with occasional
inflammation issues (that happened once every few months). I used up
the bottle in August 2021 in its expiration month while addressing the
[2021-08-28 sore throat after
meals](../events/2021/2021-08-28-sore-throat-after-meals.md). I haven't bought
anything similar since then, since I haven't had similar inflammation
issues.

## Physical exercise

I describe my exercise routine in more detail in
[exercise-routine.md](physical-exercise/exercise-routine.md). I record
my deviations from routine in an annual tracker file. For instance,
for 2024, see the [2024 exercise
tracker](../events/2024/2024-exercise-tracker.md).

My best practices around vaccinations, blood tests, and dental
cleanings include breaks from exercise of varying durations. The
magnitude of the break depends on the kind of activity. For instance,
for dental cleanings, I only break on the day of. On the other hand,
for blood tests, I break briefly from jogging for the prior day and
day of, whereas for vaccines, I break briefly from jogging for the
day of and next two days. Breaks from strength exercises are longer
for vaccines and blood tests due to their impact on arm strength. See
the [best-practices folder](../best-practices/) for more details.

### History of exercise

Daily jogging has been something I have tried to maintain throughout
my adult life, and I did something similar around age ten and then as
a teenager. My ability to adhere to that goal has fluctuated based on
weather conditions and time commitments.

The switch to working-from-home in March 2020 (with the COVID-19
pandemic) helped me be more regular with daily jogging, as there was
less need to get ready at a specific time to commute. After an
[injury](../events/2022/2022-04-05-fall-and-phone-screen-crack.md) and
subsequently after moving my residence in April 2022, I increased the
length and consistency of my daily jogging distance, and also reduced
my peak jogging speed. See
[here](physical-exercise/jogging-and-return-walking-with-history.md)
for the progression.

I hadn't done weights or strength training as a regular part of my
routine as an adult until November 2021. I introduced it in November
2021 after purchasing dumb bells and an exercise mat. See
[here](physical-exercise/strength-exercises-with-history.md) for details of my
initial progession. This was also around the time that I introduced
pushups; I had introduced some balance exercises a little earlier.

I started hand gripper exercises in July 2023; see
[here](physical-exercise/hand-gripper-exercise-with-history.md) for
the progression.

See
[here](physical-exercise/standing-on-one-leg-with-eyes-closed-with-history.md)
for the progression of my standing-on-one-leg-with-eyes-closed
exercises; these started likely November 2021 or earlier, and I've
been systematic about recording milestones starting late October 2023.

I also started looking into Buteyko breathing in July 2023; eventually
this led me to start doing breath holds regularly; see
[here](physical-exercise/breath-holds-with-history.md) for some
background information.

## Cognitive exercise

In 2024, I started putting together a cognitive exercise regimen. The
exercises I am doing are mostly from [Human
Benchmark](https://humanbenchmark.com/). As of October 2024, some of
the exercises have clearly defined frequencies and goals, while others
are still experimental.

See [exercise-routine.md](../cognitive-exercise/exercise-routine.md)
for more details.

## Sleep

I go to sleep some time between 10:30 PM and 12:30 AM, depending on
how my work winds down as well as weather-related factors. I
occasionally go to sleep earlier (as early as 9:30 PM) or later (as
late as 3 AM).

While I do set an alarm to make sure I wake up in time for any
meetings or deliverables, my general goal is to wake up *before* the
alarm and to preemptively silence the alarm. On most days, I do
achieve this goal. My waking time can vary widely from 7 AM to 9 AM;
it depends a lot on when I go to sleep, whether I have a sleep backlog
from previous days, and the weather (I generally sleep in a bit more
if it's colder).

My average sleep duration is a little under 8 hours. When I am a
little less well but am still broadly functional, my sleep duration
may go up to about 9 hours.

I generally don't remember dreams when I wake up, but I sometimes do
have dreams that I remember.

For more on the practices I aspire to follow with respect to sleep,
see [here](../best-practices/best-practices-around-sleep.md).

### Historical sleep issues

In the early 2010s, I had issues with falling asleep, and experimented
with taking melatonin a few times to improve my sleep quality. I did
not find clear improvement (but did not test extensively enough to get
conclusive information). In any case, my sleep issues resolved
themselves over time. As of 2025, I don't have any ongoing sleep
issues (such as difficulty falling asleep, highly restless sleep,
etc.)

## Other routine elements

### Dental routine

* Brushing: Once in the morning, and once about 1-6 hours after each
  meal (earlier if I need to go out after the meal so I can't wait the
  1-6 hours). Total 3 times per day. I use a soft (manual, not
  electric) toothbrush and change it every 3 months.

* Saltwater rinse: Once after post-meal cleanup for each meal. Total 2
  times per day.

* Flossing with interdental brush: Once after post-meal cleanup for
  first meal of the day, before saltwater rinse. Total once per day. I
  use a given interdental brush for about 3 days.

* Flossing with pick on floss holder: Once after post-meal cleanup for
  second meal of the day, after saltwater rinse. Total once per day.

## Infectious diseases and vaccines

See [vaccine_administrations.sql](../sql/vaccine_administrations.sql)
for a full list of vaccine administrations I received starting
December 2014 (I also have a record of childhood vaccinations in a
private repository). For some vaccine administrations, I also have an
individual notes file about the vaccine administration; the notes file
is linked from the notes column of the SQL.

### COVID-19

I have never been diagnosed with COVID-19, and am fairly confident
that I have not been infected with COVID-19.

I tested myself using at-home COVID-19 tests twice, getting negative
results both times:

* 2025-06-10 (see
  [here](../events/2025/2025-06-10-walgreens-covid-test.md)) to
  diagnose a respiratory infection that I later self-diagnosed as the
  common cold.

* 2022-04-06 when I was having a fever. I tested negative. The fever
  was likely an aftereffect of an injury. See
  [here](../events/2022/2022-04-05-fall-and-phone-screen-crack.md#covid-19-antigent-test)
  for details.

I got my primary COVID-19 vaccine series from Pfizer in 2021 (in May
2021 and [June
2021](../events/2021/2021-06-25-pfizer-covid-vaccine-dose-2.md)). Since
then, I have been getting a booster every year, with the booster some
time between November and March. Vaccine administration dates are
available in
[vaccine_administrations.sql](../sql/vaccine_administrations.sql). As
of the last edit to this document, my most recent vaccine was on [March
21,
2025](../events/2025/2025-03-21-pfizer-covid-vaccine-updated-booster-dose.md).

Starting with my second COVID-19 dose and then for each booster dose
(though much less pronounced for the January 2024 dose), I
have reacted with a slight fever; the fever has generally subsided
within 36 hours of getting the dose. With successive boosters, both
the onset of the fever and its resolution have tended to get faster.

### Influenza (flu)

I'm reasonably confident that I have not had the flu or any other
influenza-like illness (ILI) since 2014.

I have been getting annual flu shots since around 2010 (though I might
have missed a year or two in between). I generally get the flu shot
some time between September and December each year.

I have records of the date of vaccination starting 2015; this
information is available in
[vaccine_administrations.sql](../sql/vaccine_administrations.sql). My
most recent administration was in [October
2024](../events/2024/2024-10-25-flu-shot.md).

In general, I have not had significant reactions to the flu shot. The
main symptom has been slight soreness in the area of administration
for the next day. For my [October 2023 flu
shot](../events/2023/2023-10-13-flu-shot.md), the soreness continued
in a relatively mild form for about a week, and might have been causal
in some stiffness in the neck and shoulder as well. I believe this was
due to an interaction with hand gripper exercises, that I [started
doing in July
2023](../events/2023/2023-07-29-hand-gripper-exercise.md). Since then,
I have implemented [best practices around vaccine
appointments](../best-practices/best-practices-around-vaccine-appointments.md)
that include stopping strength exercises and hand gripper exercises a
few days prior to the vaccine and resuming them a few days after the
vaccine.

### Tdap (whooping cough)

My most recent Tdap vaccine was on 2024-07-12 (July 12, 2024); see
[here](../events/2024/2024-07-12-tdap-vaccine-booster-dose.md) for
details. This was a 10-year booster dose. My previous Tdap vaccine was
on 2014-12-15, after a major running fall.

### Childhood vaccines

I got the standard set of vaccines as a young child in India. Prior to
moving to the United States for graduate study, I reviewed my vaccine
history and got a few additional vaccines to be compliant with the
requirements (including possibly vaccines that I had already gotten as
a child but didn't have a record of). Details of my childhood vaccines
have been digitized but are not included publicly due to potential
sensitivity of some of the data (including the ability to infer date
of birth / place of birth from the timing of some of the vaccine
series).

### Common cold and sore throat / running nose

In June 2025, I had an incident involving a sore throat and running
nose that I believe to be due to the common cold. Details of the
incident are
[here](../events/2025/2025-06-respiratory-infection-likely-common-cold.md). I
suspect I got this infection through recent international travel
including a lengthy transcontinental flight.

Prior to this, I have had occasional cases of sore throat / running
nose, that I believe might be due to the common cold or other causes,
such as dietary irritants. In all these prior cases, I suspect dietary
irritants rather than respiratory cold viruses as the cause, but I
might be wrong in some of the cases.

* [2023-08-04 sore throat suspected to be due to sauerkraut and red
  chutney
  consumption](../events/2023/2023-08-04-sauerkraut-red-chutney-and-sore-throat.md):
  This was during my recovery period from my [2023-07-05 wisdom tooth
  removal (left side)](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md),
  and was likely due to aftereffects of the wisdom tooth removal
  itself or my body's adverse reaction to the preventative antibiotic
  (clindamycin) that I took after the procedure.

* [2021-08-28 sore throat after
  meals](../events/2021/2021-08-28-sore-throat-after-meals.md): Just a sore throat,
  no runny nose; I addressed this with some remedial measures.

* [2021-02-27 sauerkraut and sore
  throat](../events/2021/2021-02-27-sauerkraut-and-sore-throat.md): Just a sore
  throat, no runny nose; I addressed this by briefly taking a break
  from sauerkraut.

* [2019-08-30 Thai yellow curry and subsequent
  cold](../events/2019/2019-08-30-thai-yellow-curry-and-subsequent-cold.md): After
  having a huge amount of Thai yellow cury, I had a runny nose. The
  runny nose recovered quickly. I believe it was throat irritation and
  not a viral cold, but I'm not sure.

Overall, my incidence of runny nose has been very low since I moved to
Berkeley in 2014; the above incident list is likely comprehensive
starting 2019, and there may have been equivalent/similar incidents at
a similar frequency going back to 2014.

From 2007 to 2013 I was in Chicago and got clear-cut cases of the
common cold (not attributable to anything dietary) once every 1-2
years.

In my childhood, I used to get common colds quite often (perhaps even
more frequently than my peers).

### Other cases of fever (excluding after vaccines)

* [2022-04-05 fall and phone screen
  crack](../events/2022/2022-04-05-fall-and-phone-screen-crack.md): I had a brief
  fever after the injury; slight fever after injuries is expected.

* [2021-08-22 fever and rash](../events/2021/2021-08-22-fever-and-rash.md): I had a
  brief fever and rash the day after I cleaned out a nest and had a
  bunch of stuff fall on me during the cleaning process.

* [2020-07-28 fever
  episode](../events/2020/2020-coronavirus-activity-tracker#tuesday-july-28) that
  resolved after a long night's sleep.

### Childhood diseases

#### Chickenpox

I got chickenpox when I was around 4 or 5.

#### Ear infection

I got an ear infection before the age of 4, due to which I lost about
60% of my hearing. Fortunately, the infection was detected quickly and
I was operated on and recovered my hearing.

## Injuries

See [accidents.sql](../sql/accidents.sql) that includes accidents that
injured me or damaged my stuff. The most significant injuries since
2014 that affected me bodily are listed below:

* [2022-04-05 fall and phone screen
  crack](../events/2022/2022-04-05-fall-and-phone-screen-crack.md): This was a
  running fall accompanied by a phone screen crack.

* [2019-09-10 traffic accident](../events/2019/2019-09-10-traffic-accident.md): I was
  hit by a car at a stop sign (traveling very slowly).

* 2014-12-15 running fall: This was a major running fall, that
  prompted me to get a Tdap vaccine and sit with my knees spread out
  for a few days.

## Medications

I do not take any ongoing medications (except supplements; see
[supplements](#supplements)).

### Pain medication in stock

I keep in stock not-yet-expired:

* acetaminophen/paracetamol (the active ingredient in tylenol, though
  I don't necessary use the tylenol brand)
* ibuprofen

Though I keep pain medication in stock, I don't generally consume it,
and in most cases, I have to throw it after it expires.

### Past medication consumption

* 2024-11-27: I took a dose of acetaminophen (along with
  n-acetylcysteine) to address [pain from anal
  swelling](../events/2024/2024-11-25-anal-swelling.md).

* 2024-04-25: I took a dose of acetaminophen to address my [2024-04-25
  abdominal pain](../events/2024/2024-04-25-abdominal-pain.md).

* [2023-08-23 wisdom tooth removal (right
  side)](../events/2023/2023-08-23-wisdom-tooth-removal-right-side.md#consumption-of-medications):
  I consumed a few doses of pain medication, specifically 1 dose of
  hydrocodone / acetaminophen and 2 doses of ibuprofen. This was much
  less than the prescribed amount, but taking the pain medication was
  optional. I did not want to take too much pain medication because in
  my experience, taking too much pain medication can also end up
  masking my fatigue and get in the way of me being able to process my
  body's signals.

* [2023-07-05 wisdom tooth removal (left
  side)](../events/2023/2023-07-05-wisdom-tooth-removal-left-side.md#consumption-of-medications):
  I consumed 6 doses each of the antibiotic clindamycin, hydrocodone /
  acetaminophen, and ibuprofen. I had severe side-effects, likely from
  the consumption of the antibiotic. More details are in later
  sections of the linked doc.

* 2023-07-03: I took a test dose of acetaminophen in preparation for
  possibly needing to take it after my wisdom tooth removal. See
  [2023-07-03-acetaminophen-consumption.md](../events/2023/2023-07-03-acetaminophen-consumption.md)
  for more details.

I do not recall taking any non-supplement medication other than these
since 2018; I also don't recall taking non-supplement medication since
2014, though I might have taken some prior to 2018 that I don't
recall.

### Prescriptions that I did not consume

On 2024-04-30, in my [urgent care
visit](../events/2024/2024-04-30-urgent-care-visit-and-tests.md) in
response to my [abdomainal pain starting
2024-04-25](../events/2024/2024-04-25-abdominal-pain.md), I was
prescribed a proton pump inhibitor (PPI) called pantoprazole
(Protonix) with the direction to take up to once daily for
pain. However, based on my later pain trajectory and my research, I
decided not to take the PPI.

## Surgeries

### No surgeries other than dental procedures as an adult

As an adult (at least since I've turned 18) I haven't had any
surgeries, unless you count the wisdom tooth removal procedure
documented in my [dental status](#dental-status). For the wisdom tooth
removal procedure in 2023, as well as periodontal therapy in 2021, I
was administered local anesthetic. For the wisdom tooth removal, I was
also administered laughing gas. Other than these two procedures, I
have not received local anesthetic or laughing gas as an adult. I have
not been any sedation as an adult.

### Ear infection surgery as a child

When I was around 4 years old, I had surgery for my ear infection,
conducted by an ENT specialist.

### Wart removal as an older child

I had a wart above my upper lip as a child (I'm not sure exactly what
age). I had two attempted wart removal procedures, with the second one
being successful.

## Aging

This section presents a picture of my aging from my mid-to-late
twenties to my mid-to-late thirties, with a particular focus on the
evolution in the later years, when I've been better at keeping track
of things.

Ways I seem to be stable with age:

* Resting vitals (heart rate, blood pressure): I don't have good
  historical measurements prior to mid-2023, as I did not have tools
  to measure heart rate and blood pressure at home. But based on the
  few measurements I got over the prior years, things do look roughly
  stable on these fronts.

* Eye health (roughly): There was a long gap from my previous eye
  checkup to the one in 2021, but my loose impression is that my eye
  health has roughly stayed the same.

* Baseline skin health (afaicmo) not accounting for better deliberate
  care steps: My skin has been on the dry side but the use of vaseline
  hydrating lotion has generally done the trick and prevented more serious issues.

* Total accounted-for hours (a rough measure of total realized
  capacity to do stuff) seems largely stable. It did go down in around
  mid-2023 after shifting to part-time work, and is now back up
  roughly to match original levels.

Ways I seem to be getting better with age:

* Crystallized intelligence / knowledge in general seem to be improving.

* Processes / protocols seem to be improving (around both how to
  prevent and respond to health things and to general life things).

* Short-run cognitive and physical strength and stamina seem to be
  improving in the areas where I do regular practice; haven’t noticed
  any clear trends in other areas. Regular practice with a focus on
  improvement only started around 2021 and picked up around 2023.

* Peak negatives (health issues, injuries, etc.) seem to be declining;
  when I do get injured or a health issue, it seems to be more
  minor. This is likely due to the better processes and protocols as
  mentioned above.

* Stress seems to be reducing, but this is likely mostly environmental
  (less sympathetic activation with working from home, reduced hours,
  less uncertainty-driven stress at work).

* Dental health is improving, thanks to improved dental practices
  including flossing, rinsing, and regular 6-month cleanings. The
  improvement happened starting 2021.

* Lipid profile may be improving, but more data is needed.

Ways I seem to be getting worse with age:

* Slow (but steady?) balding and graying. However, the rate of this
  doesn't seem unusually high relative to other males of my age.

* Low-grade subjective physical distress may be getting worse
  (starting April 2024), but this might be dominated by a couple of
  categories (GI tract issues).

* Recovery time from acute stresses may be increasing; I can’t subject
  myself to junk and recover the next day, but it’s not clear how good
  I was at recovering in the past, since I tend to record things more
  now (and also seem to be better — or luckier -- at avoiding acute
  stresses in the first place).

* Related to the above two, I might have increased “sensitivity” to
  minor things, which may be good and bad; the good side of the
  increased sensitivity is the ability to act before things get bad,
  the flip side is being distracted by it even when my ability to act
  is limited. Example: previously despite having relatively
  significant gum disease I didn’t really notice any gum pain except
  during acute flares, now I seem to notice the most minor thing with
  my teeth and gums and lips and cheek.
