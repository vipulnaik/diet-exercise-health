# Smell, nose, and breath checklist

Execution log is [here](../logs/smell-nose-and-breath-checklist-log.md).

- [ ] Confirm that I have experienced at least one incident of pronounced smell gradient upon return to apartment (`psgurta` in Slack self-chat logs) in the past 3 months
- [ ] Confirm that I have been regularly sniffing condiments (turmeric, cumin, cinnamon, and cayenne pepper / red pepper) for meal preparations and have had success doing so
- [ ] Confirm that I have been able to identify distinctive smells of fresh rice prep, potatoes prep, and eggplant meal prep
- [ ] Confirm recent breath counts in Slack self-chat logs and transcribe them into SQL at breath_counts.sql
- [ ] Confirm recent completion of a nasal cycle record (within the last 45 days) or do one if there is no recent one
  - This involves using Slack self-chat logs to record multiple checkpoints spaced about 10 minutes apart, where I use philtrum airflow (which side of the philtrum -- space between upper lip and nose -- the outbreath lands on) and sniff sound to estimate which side is dominant at each checkpoint

END OF CHECKLIST

## Parking lot: potential tests that did not make it to the regular checklist

### Quick sequence guidance on what to do if I suspect loss or distortion of smell

Many of the tests in the parking lot get triggered if I suspect loss
or distortion of smell. The all-encompassing term for loss or
distortion of smell is dysosmia.

Some more specific terms:

* Hyposmia: reduced smell sensitivity
* Anosmia: complete loss of smell; generally predated by hyposmia
* Parosmia: mis-identification of smell
* Phantosmia: imagining smells

Here's a quick guide on the rough order to follow after any evidence
of dysosmia.

The following are tests I should do immediately:

* I should re-execute my usual orthonasal smell tests (sniffing
  condiments) to provide a baseline before proceeding to the parking
  lot tests.

* Retronasal smell testing comes next. The combined information on
  orthonasal and retronasal smell can help narrow down the likely
  cause.

  If both orthonasal and retronasal smell are equally affected, it
  suggests a sensorineural issue (affecting the olfactory epithelium,
  olfactory nerve, or olfactory cortex).

  If one is more affected than the other, it suggests a conductive
  issue, which could be either a structural issue (unlikely for me) or
  congestion or airway blockage that is heavier on the relevant side
  (anterior/middle for orthonasal, nasopharyngeal for retronasal).

  Nasal congestion (the most likely cause of acute loss or distortion
  of smell for me), such as due to a respiratory infection, affects
  both orthonasal and retronasal smell but affects orthonasal smell
  more, because the anterior/middle blockage is more severe than the
  nasopharyngeal blockage.

* Single-nostril smell testing comes next, and can be combined with a
  nasal cycle record. Data for single-nostril testing should be
  collected across different points in the nasal cycle. This can help
  determine if the issue is unilateral or bilateral.

  Most causes of olfactory loss are bilateral, particularly given that
  I don't appear to have any structural differences between nostrils
  that should cause unilateral issues.

  Unilateral conductive olfactory loss (i.e., olfactory loss that is
  specific to one nostril and differs between orthonasal and
  retronasal), usually accompanied by nasal cycle disruption, is
  likely due to nostril-specific airway blockage.

  Unilateral sensorineural olfactory loss (i.e., olfactory loss that
  is specific to one nostril but similar between orthonasal and
  retronasal), usually *not* accompanied by nasal cycle disruption,
  may reflect issue with one side of the olfactory cortex.

The following are tests I should do after more thoroughly documenting
what I've learned above and doing more context-specific research and
taking appropriate corrective action, so they will likely happen a few
days after the initial noticing of issues:

* Blinded and randomized smell testing might be useful as a followup
  measure after a period of dysosmia, complementing deliberate efforts
  to remaster smells.

* Formal testing using a smell identification test comes last, and is
  likely worth pursuing only in case of persistent dysosmia.

### Formal testing using a smell identification test

I have the option of purchasing a smell identification test such as
the [University of Pennsylvania Smell Identification Test
(UPSIT)](https://sensonics.com/product/smell-identification-test/). This
would test a wider range of smells and also satisfy the property of
being blinded and randomized.

#### Why I don't do this

The financial cost is nontrivial; the site linked above costs $29.50
per test with a minimum order size of 7 tests, and prices are similar
for similar tests. In addition, the time overhead of test execution is
nontrivial. Tests ordered in bulk also need to be stored properly for
execution over several quarters.

In contrast, my existing condiment sniffing is essentially free of
cost and takes very little time because it is embedded in my
routine. The marginal increase in volatile molecule loss as a result
of brief sniffing is negligible compared to the use of the condiment
in cooking, and even the total cost of the condiments is small.

#### What might make me do this

A smell identification test might be useful as a one-time benchmark,
perhaps if I am able to get a copy of such a test for free or share a
bulk purchase with others interested in ordering it.

I might also do a smell identification test for better quantification
if I see evidence of loss of smell or mis-identification of smells
that persists over months.

### Blinded and randomized smell testing

All my smell testing is either spontaneous noticing or deliberate
sniffing of items that I already know. While this is good for
reinforcement, it does not verify my ability to identify a smell in
contexts where I don't already know it. Blinded, randomized smell
testing (even with at-home materials and not using the smell
identification test mentioned above) could fill in the gap.

#### Why I don't do this

* Self-administration of blinded and randomized smell testing involves
  more effort, including a physical randomization setup (like a
  revolving plate or lazy susan). This raises the bar on the benefits
  I need to get to justify it.

* I don't have any evidence so far of mis-identification of
  smells. Both my spontaneous noticing of smells and my deliberate
  sniffing yield the correct smell. Therefore, I don't feel like this
  is worth digging further into.

#### What might make me do this

If I either fail to smell items entirely, or get confused about the
identification of specific smells, randomized testing might help me
better calibrate how confused I actually am about the smell.

### Single-nostril smell testing

All my smell testing involves the free use of the entire nose rather
than testing with a single nostril at a time. This is unlike my vision
and hearing checklists, where some or all of my tests involve one side
(eye or ear) at a time. In principle, I could block one nostril and
sniff only with the other.

#### Why I don't do this

* The two nostrils are not quite independent systems the way the two
  eyes and the two ears are; this can be seen in their geographic
  proximity and the fact that the inbreath and outbreath are
  coordinates between the nostrils. Problems that develop are rarely
  nostril-specific, though some are (which is where the nasal cycle
  monitoring item comes in; using smell to distinguish the two
  nostrils is not the best way).

* Blocking a nostril involves requires the use of the hand, which is
  inconvenient in the context where it's easiest to do such testing:
  cooking. I generally avoid touching my face or unnecessary surfaces
  while cooking, and blocking a nostril violates that.

* The nasal cycle, where the distribution of airflow between the
  nostrils oscillates over time, means that the contribution of the
  two nostrils at a given time is often unequal. So, single-nostril
  smell testing may not accurately represent the potential of each
  nostril.

* On the flip side, the nasal cycle also makes it *less necessary* to
  do single-nostril testing, because a large enough sample of data
  points is likely to capture different points in the nasal cycle,
  including left nostril dominance and right nostril dominance. So, as
  long as I can smell comparably well across the many data points,
  that is evidence that there isn't a nostril-specific issue.

#### What might make me do this

The primary trigger would be if I encounter evidence of difficulty
smelling or mis-identification of a smell. In such a case, I can use
the sniff sound and philtrum airflow to determine which nostril is
dominant at the time, and then compare with whether I experience a
similar issue when the other nostril is dominant. I can then follow up
with single-nostril testing, ideally done at a time when the nostrils
are close to equal in airflow.

### Retronasal smell testing

All my smell testing is orthonasal: sniffing or spontaneous noticing
of smells in air breathed in via the nostrils. Another important
component of smell is retronasal smell, which is smells of air coming
up from the mouth. Retronasal smell plays an important role in
combination with taste to give a composite flavor to food.

#### Why I don't do this

I expect that issues with retronasal smell would surface
naturalistically through food feeling different. I know that when I
got a respiratory infection (likely the common cold) in June 2025, I
did notice food seeming to taste and smell different, which I
eventually attributed to nasal congestion; more
[here](../events/2025/2025-06-respiratory-infection-likely-common-cold.md). At
the time I noticed, I did not realize I had an infection, so this is
evidence that when retronasal smell breaks down (due to congestion in
this case) I notice immediately. In fact, my feedback loop for
retronasal smell is more frequent than for orthonasal smell, given
that I eat more regularly than I do meal prep.

An explicit retronasal smell check protocol is also more complicated
-- I need to put the food in my mouth, then breathe out with the mouth
closed, so that the volatile molecules travel upward. I also want to
not put so much food that swallowing it could cause issues.

#### What might make me do this

I might do explicit retronasal smell checks if I have evidence of
either orthonasal smell loss or taste/flavor loss.

The explicit retronasal smell protocol is somewhat complicated. Here
is what Claude suggests as the protocol:

> For a condiment-based retronasal check — which avoids the gustatory
> complexity of actual food — you could place a small amount of a
> strongly aromatic condiment like cinnamon on the tongue, allow it to
> warm and release volatiles, then close the mouth, press the tongue
> upward, and exhale slowly through the nose. What you perceive during
> the nasal exhale phase is primarily retronasal. Comparing this to
> what you perceive when sniffing the same condiment externally gives
> you a direct orthonasal versus retronasal comparison.

Different combinations of whether orthonasal and retronasal smell are
both degraded and which one is more degraded provide different
diagnoses as to the likely causes.

* Anterior/middle nasal blockage (which could be caused by nasal
  congestion, and is the most likely acute cause of olfactory loss)
  affects orthonasal smell more.

* Nasopharyngeal blockages (which would be very rare) cause more loss
  in retronasal than orthonasal smell.

* Sensorineural olfactory loss (damage to the olfactory epithelium,
  olfactory nerve, or olfactory cortex) generally produces comparable
  loss in orthonasal and retronasal smell.

In a typical nasal congestion due to a respiratory infection, the
first two of the three mechanisms above are active, but the first is
much more active than the second, so orthonasal smell loss is much
more pronounced than retronasal smell loss. Comparing orthonasal and
retronasal smell during a suspected respiratory infection and
confirming that orthonasal smell is more handicapped can help provide
evidence that the loss in smell is driven primarily by an expected
congestion pattern, as opposed to something sensorineural.
