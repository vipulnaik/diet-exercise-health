# diet-exercise-health

Diet, exercise, and health information for Vipul Naik!

Sections of this document:

* [Recording and sharing philosophy](#sharing-philosophy)
* [Setting up](#setting-up)

There is no portal to access the data. Use the instructions in
[Setting up](#setting-up) below to load the SQL data locally to
explore it yourself.

## Recording and sharing philosophy

In this section, I describe in a little more detail my philosophy
around sharing data. I describe some considerations in favor of
sharing data publicly, some considerations against, and the trade-offs
I have chosen.

### Reasons for recording data for my long-term health, and the kinds of data that qualify

I'm blessed to not have significant health issues (that I know
of). But health problems that may emerge years later may be taking
their roots now, and may have leading indicators. Moreover, even in
cases where I don't have problems now, it's helpful to know that
through their omission in my records, which becomes possible only if I
maintain records!

The kinds of data that qualify for recording for this perspective include:

* Any illness, injury, or aggravation that triggers active
  investigation or remedial measures on my part; for instance,
  [2022-04-05 fall and phone screen
  crack](2022-04-05-fall-and-phone-screen-crack.md). These are mostly
  recorded as separate files in the notes folder, and may also be
  recorded in [accidents.sql](sql/accidents.sql).

* Any action taken in terms of testing, prevention, or treatment,
  including any learnings from it, prior preparation I did to mitigate
  negative consequences, and the actual negative consequences the
  action had, even when within the range of expectations. This
  includes things like dentist visits as well as vaccine shots. These
  are recorded as separate files in the notes folder, and may also
  make it into SQL files such as
  [vaccine_administrations.sql](sql/vaccine_administrations.sql).

* Near-accidents: Some near-accidents are recorded as rows in
  [heinrich_incidents.sql](sql/heinrich_incidents.sql). Most of them
  won't get their own notes doc, but some might.

* Ongoing diet, exercise, and health actions: For instance, I record
  [food purchases](sql/food_purchases.sql) and [supplement
  consumption](sql/supplements.sql) on an ongoing basis. I may also
  start recording my duration of exercise and sleep on a regular
  basis; I haven't gotten around to it yet. For exercise, I do have
  records in my Google Maps timeline that can be used for historical
  backfill.

* Activity tracker for trips outside the home other than regular
  jogging trips and food purchases: I initially started this with a
  mind to helping me figure out if I had COVID exposure, but decided
  to continue it anyway because of its overall usefulness.

### Data I prefer to record privately

Some information related to diet, exercise, and health I record only
privately, so it's not part of this repository. There are a few
considerations that lead me to private recording:

* **Private nature of the material**: For instance, things related to
    sexual health would fall here. Some aspects of digestive health
    also fall here, though I've tried to be more open on that front.

* **Excessive detail and potential embarrassment**: In some cases I
    want to record my feelings and activities to extreme specificity,
    that might both appear neurotic both in the detail involved and
    open up my micro-choices to public examination.

* **Incidental sensitive information**: In some cases, the details may
    reveal information that I don't want to be made easily accessible
    publicly, including things like:

  * My home address, phone number, date of birth, or other identifying
    information: Some things like blood test reports have these
    written on the report; what I do is to copy the
    actual results portion into
    [test_results.sql](sql/test_results.sql) and not make the reports
    public.
  * Information about my neighbors or others incidentally in my life,
    who may not consent to having such information available publicly
  * Information about my work arrangements or events at work that
    might interact with my personal health incidents

  There are cases where the full picture of the situation requires me
  to record some such details, at least vaguely, and so in such
  situations I may opt for private recording. However, if the overall
  incident qualifies based on previous criteria, I'll at least record
  the overall contours of the incident publicly.

I generally use private recording for free-form notes such as these:

* Care notes: Basically, these are notes for things to keep in mind
  for how to better care for myself; this has a focus on both my
  personal health and my productivity/efficiency. I just keep jotting
  down the notes as things occur that give me ideas (these could be
  near-accidents, or things that I feel I should have done
  differently, or ideas I got by observing or reflecting on a
  situation). Most of these are a few steps removed from actual health
  impacts, or affect it only probabilistically.

* Violation counts: If I've decided on following some practice, but I
  don't always follow it, I might record cases that I didn't follow it
  in a document so I can review for patterns and reduce the incidence
  of violations.

I also have a few SQL files recorded privately; these correspond to
private aspects of my health.

Not all of the above are pertinent to diet/exercise/health, but many
are, and it's easier to track them all together so I do so under the
diet/exercise/health bucket.

### Changing thresholds for what to record and what to record publicly

Over time, my threshold for what to record has gotten more liberal,
but my threshold for what to record privately has grown *way* more
liberal. So while my amount of public recording has gone up, my amount
of private recording has gone up even more.

Due to these changing thresholds, simply comparing the frequency of
notes entries over time doesn't give an accurate picture of how my
health has evolved. Here are some rough heuristics on how my recording
has gotten more detailed over time:

* I started recording notes in December 2018, so the absence of notes
  prior to that does not indicate that I had no health issues prior to
  that! Some of the health events prior to that are reflected in SQL
  files.

* It's only starting 2021 that I have been systematically writing
  notes docs for vaccine administrations (I previously just put them
  in [vaccine_administrations.sql](sql/vaccine_administrations.sql)).

* It's only starting around Q2 2022 that I've been recording notes
  related to minor cuts and injuries (the kind where I put a bandage
  for faster recovery even though I don't strictly need to). This is
  related to my goal of better management and frequency reduction of
  even minor cuts.

* For various forms of irritation, fatigue, unusual sleep cycle, etc.,
  these were relatively more frequent prior to mostly working from
  home, and I did not record each individual incident. As my overall
  health has improved along these fronts, incidents of similar
  severity as before become worth recording.

* Since I now keep more copious private records, I have more
  flexibility to fill in more detail into public records if an
  incident actually does escalate to a level that makes it worth
  publicly recording.

## Setting up

### Initial setup

You can create the `diet_exercise_health` database either directly in
MySQL or by running this from the root folder of this repository,
after updating MYSQL_ARGS in the Makefile (such as `-u<username>
-p<password>`):

```bash
make init
```

Instead of editing the Makefile, you can also pass in the arguments to
make:

```bash
make MYSQL_ARGS=<args> init
```

### Loading and refreshing data

Once you already have the `diet_exercise_health` SQL datatbase set up,
you can update the MYSQL_ARGS in the Makefile (such as `-u<username>
-p<password>`) and you can then load the data using:

```bash
make reset && make read
```

Instead of editing the Makefile, you can also pass in the arguments to
make:

```bash
make MYSQL_ARGS=<args> reset && make MYSQL_ARGS=<args> read
```
