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

### The kinds of information I record

The folder structure provides a good overview of the kinds of
information I record. Here are the various folders and their
respective specializations.

* [Profile information](profile-information): The contents of this
  folder cover various aspects of me. The content is organized by
  aspects of the profile as opposed to time, which means that a given
  file is about a topic across history up to the present, rather than
  about a specific event that happened at a specific time.

  The main file in this is the [health profile](health-profile.md), a
  fairly lengthy document that gives considerable detail about my
  health and its evolution and links out to several other documents. I
  try to provide enough background information (either directly or
  through links) that the document can both go into technical detail
  and be accessible to somebody who is not up to speed with all the
  technical prerequisites.

  The folder also has subfolders for [physical
  exercise](physical-exercise) and [cognitive
  exercise](cognitive-exercise) that cover details of the various
  exercises I do, my current performance in them, and the history of
  performance over time.

  Update policy: All files here are expected to continue to be updated
  as relevant information changes. They may not always be up-to-date
  reflections of the latest situation, but this is more a bandwidth
  limitation on my part than a principled decision. For some cases,
  such as the health profile, I provide explicit dates of last
  substantive update for the document as a whole and for some
  sections. For exercise documents, the history can be viewed on
  GitHub or by cloning the repository in hit, though in many cases
  it's implicitly contained in the document as the last dated protocol
  or threshold update.

  Usefulness to others: While written primarily to describe my
  situation, many of these contain ideas that may be useful to others,
  but since the language is descriptive rather than prescriptive, the
  translation is left to the reader. For instance, "I do X because of
  Y" invites the reader implicitly to ask whether Y applies to their
  situation and makes sense in general, and if so, whether they should
  do X. In some cases, the prescriptive element is even more indirect,
  such as discussion of the results of a blood test and its
  interpretation is an invitation to the reader to consider doing that
  blood test, with the analysis providing insight into how that may be
  useful.

* [Events](events): The contents of this folder are organized by date,
  with one subfolder per year to make navigation easier. Events can
  range from brief incidents lasting a few minutes or hours to
  multi-day sequences of events, such as an injury/illness and its
  aftermath, or a medical appointment plus the preparation and
  followup actions for it. Very routine day-to-day stuff is not
  included here; for instance, information on my individual exercises
  is not included here.

  There are a few special tracker files, with one file of each type
  per year, that aggregate general information about a particular
  facet of life chronologically. These include the exercise tracker
  (for instance, the [2025 exercise
  tracker](events/2025/2025-exercise-tracker.md)) that covers cases
  where I skipped or made unusual adjustments to exercise, or the
  activity tracker (for instance, the [2025 activity
  tracker](events/2025/2025-activity-tracker.md)) that records unusual
  activities, mostly outside trips that differ from my usual routine
  of grocery store and food purchase trips.

  Update policy: Individual event files are not systematically updated
  with new information, including information that sheds new light on
  the events. Any such retrospective updates are opportunistic rather
  than an ongoing practice.

  Usefulness to others: These event files are useful textural
  information for others who are going through, have gone through, or
  believe they may go through, similar incidents. However, they are
  not directly prescriptive even for myself, let alone others. Even
  the prescriptive portions, described as learnings for what I should
  do, are just snapshots of the lessons I learned from the incident
  than reflective of my up-to-date thinking.

* [Best practices](best-practices): This folder describes various best
  practices and protocols I follow, including around handling planned
  events (such as medical appointments), day-to-day life (such as
  exertion and stimulation, sleep, light, sound) or unusual health
  conditions.

  Update policy: My plan is to keep these documents as up-to-date as
  feasible given bandwidth constraints. However, particularly the ones
  around day-to-day life can diverge from actual practice by several
  months. The best practices documents around handling medical
  appointments or unusual incidents tend to be more up-to-date as I
  try to update them with any insights gleaned at each execution. The
  day-to-day stuff I don't need to update quite as frequently because
  my day-to-day memory of executing the task is good enough for me to
  be confident that I can stay consistent in execution even without
  updating documentation.

  Usefulness to others: While written primarily for my situation,
  these often contain insights that may be genuinely useful to others
  with suitable adaptation. The combination of background information
  and direct prescriptiveness may make them particularly useful to
  others who share enough of the background and agree with the broad
  reasoning.

* [Checklists](checklists): This folder contains checklists, typically
  executed either periodically or based on a trigger. These include
  organ/sense checklists, such as checklists for hearing, vision,
  dental self-exam, skin, and smell/nose/breath. Many of the
  checklists also contain parking lot sections describing additional
  checks that didn't make the cut, along with information on what
  might trigger me to do those checks and how I might do them if so.

  Update policy: The checklists as written are almost always
  up-to-date with what I execute in practice, because if making
  changes at execution, I also update the source checklist. However,
  there may be cases where I have ideas for checklist improvement
  (either to the executed portion or the parking lot) that have not
  yet been reflected in the checklist. So they may be out-of-date
  relative to my vision of where the checklist should be, but not
  relative to what I am actually executing.

  Usefulness to others: For those who are on board with the periodic
  monitoring philosophy encoded in the checklists, the checklists
  might be the most useful portion of this repository. Although
  somewhat adapted to my specific circumstances, the checklists are
  much more general-purpose than most of the rest of the repository,
  and many of their items can be done almost as is by others,
  potentially making slight calibration adjustments.

* [Logs](logs): This folder contains logs of periodic checklist
  execution, with one log file corresponding to one checklist
  file. The one-to-one correspondence makes it easy for me to look
  through past executions of the same checklist for patterns.

  Update policy: I consistently update the logs at each periodic
  checklist execution.

  Usefulness to others: The logs are less useful to others than the
  checklists themselves, but they might provide additional texture
  that helps people understand how the checklists might be useful in
  practice. In particular, the free-form comments in the logs that
  might provide explanations of the findings from checklist execution
  could be particularly useful for understanding what sort of
  information executing the checklist items delivers in practice.

* [SQL](sql): This folder contains all SQL files. These files provide
  structured data across various facets such as food, accidents, and
  medical readings.

  Update policy: Most of these files are updated on an ongoing basis
  as the relevant stuff happens; for instance, food purchases and food
  preparations and openings are updated within a few hours of the
  things happening; similarly, blood pressure readings are recorded
  within an hour of being taken. Some stuff may be updated in a more
  lagged or batched fashion, such as blood test or DEXA scan results
  (since there are a lot of numbers to enter, and I combine entry with
  integrated analysis and health profile updates), or breath counts
  (that I record in Slack self-chat logs, often while doing other
  things, and enter in a batch every few months from Slack self-chat
  logs).

  Usefulness to others: I don't expect most of the SQL files to be
  directly useful to others to read; however, somebody who wants to
  dive into health topics quantitatively might find it helpful to load
  the SQL data (see the [Setting up](#setting-up) section
  below). Another potential use is copying over the schema to enter
  their own data. This may be a better starting point than coming up
  with the schema oneself, because this schema has been tested against
  real-world data entry and comes equipped with a bunch of
  verification queries and processing logic that they can also use.

* [Python](python): This folder contains all Python files. These files
  cover verification queries run against the SQL data.

  Update policy: These are pretty much WYSIWYG: what they say defines
  what they are. There may be some cases where I have ideas for new
  verification queries that I haven't written down, but verification
  queries are generally quick to add so this gap is small.

  Usefulness to others: These are useful as a complement to the SQL
  data or schema: somebody adopting the SQL schema may want the Python
  files. Some adaptation is likely needed, as part of what the
  verification queries do is list out specific expected ranges as well
  specific exceptions to general conditions, and these vary by person
  and circumstance.

* [Notes](notes): This is a catch-all folder for files that do not fit
  into any of the other categories. These include things like the
  overall health TODO list, primers on various health topics and
  adjacent material in biomechanics or physiology, notes on health
  learning strategy, and additional notes on various health strategies
  that go beyond what is reasonable to include in the health profile.

  Update policy: I try to keep the TODO list reasonably up-to-date,
  but the document can depart from reality at exactly the times that I
  don't have time to update it: when I am busy with other stuff. Other
  files are updated more occasionally, and they may be somewhat out of
  date with my current understanding or current plans, but as with
  many other folders, the main constraint is bandwidth limitation. In
  principle, I do want the notes to reflect my latest understanding of
  the topic and my latest plans and strategies where applicable.

  Usefulness to others: This varies significantly by file, with few by
  way of general principles.

  Additional note: This is often the source subfolder for new
  subfolders, as it accumulates files before I have a clear concept of
  a subfolder to organize the files into. For instance, I imagine I
  might eventually make a separate subfolder for `primers`,
  `strategy`, or `todo`, and if so, I'll be moving files out from
  `notes` into it. Thus, `notes` plays the role of a staging ground
  for things that may or may not eventually become their own
  subfolder. As discussed further down, `notes` was the source
  subfolder for the `events` and `profile-information` subfolders.

Beyond the usefulness of individual content, the organization of
content itself may be useful to others wondering how to organize their
own content, both by showing what works and by showing what doesn't
seem to work in their view.

### Data I prefer to record privately

Some information related to diet, exercise, and health I record only
privately, so it's not part of this repository. There are a few
considerations that lead me to private recording:

* **Private nature of the material**: For instance, things related to
    sexual health would fall here. Some aspects of digestive health
    also fall here, though I've tried to be more open on that front.

* **Excessive detail and potential embarrassment**: In some cases I
    want to record my feelings and activities to extreme specificity,
    that might appear neurotic both in the detail involved and
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
  * Information about my family members, friends, neighbors or others
    incidentally in my life, who may not consent to having such
    information available publicly
  * Information about my work arrangements or events at work that
    might interact with my personal health incidents

  There are cases where the full picture of the situation requires me
  to record some such details, at least vaguely, and so in such
  situations I may opt for private recording. However, if the overall
  incident qualifies based on previous criteria, I'll at least record
  the overall contours of the incident publicly.

I also have a few SQL files recorded privately; these correspond to
private aspects of my health.

Not all of the above are pertinent to diet/exercise/health, but many
are, and it's easier to track them all together so I do so under the
diet/exercise/health bucket.

### Changing thresholds for what to record and what to record publicly, plus conceptual evolution in how I structure my recording

Over time, my threshold for what to record has gotten more liberal,
but my threshold for what to record privately has grown *way* more
liberal. So while my amount of public recording has gone up, my amount
of private recording has gone up even more.

Due to these changing thresholds, simply comparing the frequency of
notes entries over time doesn't give an accurate picture of how my
health has evolved. Here are some rough heuristics on how my recording
has gotten more detailed over time:

* I started recording notes in December 2018, so the absence of
  documents prior to that does not indicate that I had no health
  issues prior to that! Some of the health events prior to that are
  reflected in SQL files.

* It's only starting 2021 that I have been systematically writing
  notes documents (that I later moved to events documents) for vaccine
  administrations (I previously just put them in
  [vaccine_administrations.sql](sql/vaccine_administrations.sql)).

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

Beyond just the change to public recording threshold, another
evolution is to folder structure. Prior to 2024, I had only two
folders: `notes` and `sql`, with the former for (usually markdown)
notes and the latter for structured data in SQL. 2024 was the year
that I both expanded the range of content and its structure. Much of
what originally lived in the `notes` folder got moved to `events` with
year-level subfolders, while some of it (including my health profile,
that I started working on in 2023) moved under
`profile-information`. Other folders including `python`,
`best-practices`, `checklists`, and `logs` were all created in 2024
and early 2025, mostly with fresh files rather than files moved out of
`notes`, and they reflected an evolution in how I thought about health
management.

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
