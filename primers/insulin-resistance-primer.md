# Insulin resistance primer

Primer written: August 28 and 29, 2026 (2026-08-28 and 2026-08-29)

Here's how this primer is organized:

Preliminaries/meta:

* [Level and goals of the primer](#level-and-goals-of-the-primer)
* [Source information](#source-information)
* [Stuff left out of the primer](#stuff-left-out-of-the-primer)

Setting the stage:

* [The two key metrics: glucose and insulin](#the-two-key-metrics-glucose-and-insulin)
* [The four main players: pancreas, liver, muscle, and adipose tissue](#the-four-main-players-pancreas-liver-muscle-and-adipose-tissue)

Telling the story:

* [A multi-stage story from carbohydrate meal consumption to rest / fasting](#a-multi-stage-story-from-carbohydrate-meal-consumption-to-rest--fasting)

Drawing the inferences:

* [How each of the nodes can contribute to insulin resistance and glucose/insulin dysfunction](#how-each-of-the-nodes-can-contribute-to-insulin-resistance-and-glucoseinsulin-dysfunction)
* [Muscle versus adipose tissue and quantity versus quality](#muscle-versus-adipose-tissue-and-quantity-versus-quality)
* [Measurements](#measurements)

## Level and goals of the primer

This is an intermediate-level primer I wrote specifically to ramp up
my own understanding from the colloquial understanding of insulin
resistance to a sophisticated understanding that is good enough to
drive medical decision-making and interpretation.

## Source information

The primer was mostly constructed based on a small subset of the
material covered in the [health profile review private Claude
conversation](https://claude.ai/chat/b9b94006-2e65-4a25-adf5-9cb94b446ed4),
scattered across different parts of the conversation, along with prior
knowledge I had accumulated through a mix of Ninja Nerd videos as well
as interviews by people like Peter Attia, Simon Hill, and Lily
Johnston covering insulin resistance. I did not reference prior
knowledge extensively when writing the primer, but I did reference the
Claude conversation.

Not all details from the Claude conversation are transcribed, so
reviewing the conversation may make sense if the primer here seems to
have gaps worth filling.

## Stuff left out of the primer

The following adjacent topics have been left out of this primer:

* Clamping methods (where both glucose and insulin are pumped into the
  body) to measure insulin resistance. This is an advanced measurement
  topic that isn't directly relevant to the simple descriptions of
  mechanism we provide here. It's not directly relevant clinically
  because clamping tests are not clinically available anyway.

* Detailed biochemical models of glycolysis and cell-level
  measurements of insulin resistance such as those done by Gerald
  Shulman.

* Detailed description of what happens during exercise. We focus on
  the postprandial and rested, fasting state, which are more important
  for interpreting available measurements.

* A breakdown of non-carbohydrate food source consumption as well as
  phenomena like ketosis and the role of a ketogenic or
  low-carbohydrate diet.

## The two key metrics: glucose and insulin

At any time, we can measure two quantities in the blood: the glucose
level and the insulin level.

### Glucose (level is very tightly regulated)

The level of glucose in the blood is very tightly regulated, primarily
by the liver; basically, the liver makes sure that whatever the rest
of the body's rate of glucose uptake, the actual glucose level in the
blood stays stable rather than either dropping very low or going very
high (which could happen if the liver were to overshoot and release
too much glucose when the body isn't using it).

To a rough approximation, glucose levels stay between 50 mg/dL and 200
mg/dL for healthy individuals at all times, and ideally between 70
mg/dL and 180 mg/dL. The delta between the maximum and the minimum
level of glucose seen can get used up by the body within a matter of
minutes, and exactly how many minutes varies a lot based on how much
physical exertion is happening at the time. This means that the liver
plays a very important role in making sure to top up glucose levels
just enough to stay within the band, and adjust that rate of topping
up based on the body's use of glucose.

### Insulin (level can vary widely)

Insulin is a protein hormone that signals to the body to reduce
glucose levels in the blood by locking it up in more complex forms
(importantly, it is not telling the body to reduce glucose levels by
*burning* energy, it's just saying: convert it to a different
form). Higher levels of insulin send this message to the body more
strongly.

Muscle tissue and adipose tissue (fat tissue) are the two types of
tissue that are insulin-sensitive: they have surface receptors that
insulin in the bloodstream can bind to that tells the cells to
increase their uptake of insulin. The insulin itself does not get
taken up by the cells, but it influences the rate of uptake of
glucose.

The level of insulin in the blood can vary widely. Insulin level can
go fairly high during or immediately after the consumption of a
carbohydrate-rich meal. It is relatively low in a rested fasting state
and can dip even lower during exercise.

## The four main players: pancreas, liver, muscle, and adipose tissue

### Pancreas (secretes insulin)

#### Summary table

Input | Response | Effect on glucose | Effect on insulin
-- | -- | -- | --
Glucose up| Beta cells sense glucose via GLUT2/glucokinase, increase insulin secretion; alpha cells suppress glucagon | down (indirectly via insulin/glucagon) | up (direct effect)
Insulin up | Mild autocrine feedback on beta cells (some self-limiting of further secretion); paracrine suppression of alpha-cell glucagon release | down (indirect via glucagon suppression) | down (via autocrine negative feedback)

#### More comments

The pancreas is the organ that secretes insulin. The extent of insulin
secretion depends on the health of the beta cells in the pancreas that
secrete insulin, as well as the quantity of glucose available.

Despite its centrality to the process, the pancreas becomes relevant
at the margin only at fairly late stages of insulin resistance, once
the insulin resistance has transitioned to something prediabetes-like,
and the beta cells themselves start dying or losing function. It's not
a key player in the development of insulin resistance
itself. Therefore, we will focus less on it than on the other players.

### Liver (plays a key role in minute-to-minute regulation of glucose levels; senses and removes insulin)

#### Summary table

Input | Response | Effect on glucose | Effect on insulin
-- | -- | -- | --
Glucose up | GLUT2-mediated concentration-driven influx; glucokinase flux favors glycogenesis, suppresses glycogenolysis (largely insulin-independent, mass-action/substrate-driven autoregulation) | down | N/A (to a first approximation)
Insulin up | Activates glycogenesis, suppresses gluconeogenesis and glycogenolysis, activates lipogenesis (SREBP-1c) | down | down (directly via first-pass clearance using insulin-degrading enzyme)

#### Dials

As described above, the liver plays a key role in the minute-to-minute
regulation of glucose levels; without the level, at the normal rate of
glucose uptake, even at rest, glucose in the bloodstream would run out
within minutes, and this would happen even faster (in fewer minutes)
under exertion.

The liver has three levers controlling the level of glucose:

* Glycogenolysis/glycogenesis: The liver can convert glucose absorbed
  from the bloodstream into glycogen and store the glycogen, or break
  down its stored glycogen and release glucose into the
  bloodstream. Controlling the rates of both allows the liver to
  control the level of glucose.

  After a high-carbohydrate meal, the liver would be heavy on
  glycogenesis; in a fasted state, the liver would be heavy on
  glycogenolysis.

* Gluconeogenesis: The liver can make glucose from non-carbohydrate
  precursors and release it into the bloodstream. This is useful
  when the liver wants to release glucose but its glycogen stores are
  low; this would also be the mechanism by which energy ingested in
  non-carbohydrate forms, such as dietary fats and proteins, gets
  released into the bloodstream.

* Lipogenesis: The liver can take glucose and use it to make fats.

#### Liver and insulin

The liver's glucose uptake is not insulin-dependent (the liver uses
GLUT2 transporters that are not insulin-sensitive). However, the
liver's algorithm around what to do with glucose, and how to dial
glycogenolysis/glycogenesis, gluconeogenesis, and lipogenesis, can
take into account the level of insulin in the bloodstream.

The liver is also unique in that it actively clears insulin via the
insulin-degrading enzyme. This means that the liver is directly
responsible for insulin *levels* even though it doesn't produce
insulin on its own.

### Muscle

#### Summary table

Input | Response | Effect on glucose | Effect on insulin
-- | -- | -- | --
Glucose up | Modest insulin-independent basal uptake via GLUT1 (mass-action driven), separate from the main GLUT4 pathway | down (slightly) | N/A
Insulin up | GLUT4 translocation, glucose uptake, glycogen synthesis | down (significantly) | N/A

#### Insulin-dependent and insulin-independent glucose uptake, storage, and depletion

Muscles have both GLUT1 and GLUT4 transporters to take glucose from
the bloodstream, and the latter transporters are insulin-sensitive,
i.e., GLUT4 transport increases when the concentration of insulin is
higher, while GLUT1 transport is not that sensitive to insulin, but it
is sensitive to glucose levels.

We talked about how the liver can store glucose (by converting it to
glycogen stored in the liver; the muscles can do the same. After a
carbohydrate-heavy meal, muscles take up glucose faster than they burn
it, then store it as glycogen; this increased uptake is due to a
combination of the direct effect of increased glucose and the effect
of increased insulin. At rest, muscles convert the glycogen back to
glucose and burn it for their (relatively low) energy needs. During
heavy exercise, they may additionally take up glucose from the
bloodstream at significant rates, because their own stores are not
sufficient for their high energy needs.

### Adipose tissue

#### Summary table

Input | Response | Effect on glucose | Effect on insulin
-- | -- | -- | --
Glucose up | Modest insulin-independent basal uptake via GLUT1 | down (slightly) | N/A
Insulin up | GLUT4 translocation (minor uptake, mostly for glycerol-3-phosphate to esterify fatty acids); suppression of hormone-sensitive lipase (dominant lever — suppresses lipolysis); activation of LPL (promotes fat storage) | down (partly direct via GLUT4, but mostly indirect via suppressed free fatty acid release that would be an input for gluconeogenesis) | N/A

#### The two different insulin-dependent mechanisms

Adipose tissue is interesting because it has two different
insulin-dependent mechanisms.

The GLUT4 transporter mechanism is similar to muscle tissue: when
insulin is higher, adipose tissue takes up more glucose from the
bloodstream.

But the indirect effect is stronger and more relevant: when insulin is
higher, adipose tissue suppresses the release of free fatty acids into
the bloodstream, which reduces the substrate that the liver can use as
an input for gluconeogenesis.

## A multi-stage story from carbohydrate meal consumption to rest / fasting

It helps to put all these nodes together in a single coherent
narrative.

### Stage 0: absorption

Carbohydrates reach the GI tract and get absorbed and broken down into
glucose. This crosses the intestinal epithelium and enters the blood
circulation.

### Stage 1: liver first pass

The glucose goes through the portal vein and enters the liver. This is
the liver's first pass metabolism: the liver sees anything ingested
orally before the rest of the systemic circulation does.

The glucose concentration the liver sees is very high. The liver does
two things:

* It takes up a nontrivial fraction of the glucose (via the GLUT2
  transport mechanism), so that the glucose concentration that reaches
  systemic circulation is much lower (it also just gets lower by
  mixing in with other blood, but the liver's first pass effect is
  important too).

* It responds to the increased glucose in the ways discussed in the
  summary table for the liver: it ramps up glycogenesis and suppresses
  glycogenolysis.

It's worth noting that at this point, there is no effect on
circulating insulin, because the pancreas has not yet seen the
increased glucose.

### Stage 2: systemic circulation reaches organs including muscle, adipose tissue, and pancreas

The increased level of glucose is now in systemic circulation, and
therefore reaches muscle, adipose tissue, and the pancreas. All of
them react as expected: the organs take up a larger share of glucose
because there's more of it, so the additive decrease in glucose
concentration is more than it is with a typical systemic circuit.

The pancreas in particular reacts by ramping up its secretion of
insulin and ramping down its secretion of glucagon. This sets the
stage for a combined effect of glucose and insulin, compared to a
glucose-only effect prior to this.

### Stage 3: liver gets insulin surge from pancreas

The insulin secreted by the pancreas also goes to the liver first, via
the portal circulation, so the liver gets a first pass. The liver
extracts roughly half of the insulin via the insulin-degrading enzyme,
and lets the rest into systemic circulation.

### Stage 4: liver-clipped insulin enters systemic circulation, affecting glucose uptake by muscle and adipose tissue

The elevated insulin from the pancreas, partially clipped by the
liver, along with the already elevated glucose from the carbohydrate
absorption, is now in the bloodstream. Together, these result in more
glucose uptake by muscle and adipose tissue, and lead the adipose
tissue to also reduce their release of free fatty acids into the
bloodstream, which in turn means less supply of raw material for the
liver to do lipogenesis on.

### Gradual transition to fasting, rested state

The increased glucose and insulin continue operating. Over time, once
the digestion of carbohydrates is completed and all the glucose has
been taken up by some combination of liver, muscle, adipose tissue,
and other organs, glucose and insulin levels return to normal. Beyond
this point, both levels stay in the normal range in the rested,
fasting state.

* Muscles make use of the glucose they stored as glycogen (the
  reserves they built up during the postprandial glucose surge) and
  draw glucose from the bloodstream for any additional needs.

* Adipose tissue releases fatty acids into the bloodstream, feeding
  the liver for gluconeogenesis to continue replenishing glucose in
  the blood as organs draw on it.

* The liver switches back to doing more glycogenolysis and
  gluconeogenesis to continue producing glucose to replenish glucose
  in the blood as organs draw from it, in the absence of glucose
  entering from the GI tract.

## How each of the nodes can contribute to insulin resistance and glucose/insulin dysfunction

This section is almost entirely predictable as a logical consequence
of information presented so far.

### Pancreas: insulin production deficit, not insulin sensitivity (Stage 2 onward)

The pancreas doesn't directly contribute to insulin
resistance. Rather, insulin resistance is believed to be causal in the
pancreas losing beta cells (the cells lose functionality and/or
completely die) and therefore reduce the ability of the pancreas to
produce the insulin it needs to produce. The combination of insulin
resistance and inadequate insulin production can lead to chronic
hyperglycemia, which is also known as diabetes.

In terms of the stage model above, the pancreas doesn't do an adequate
job in Stage 2. This means that the liver, muscles, and adipose tissue
still get to respond to the effect of increased *glucose* and drive
glucose down, but they don't get the added feedback of increased
insulin. The effect is that glucose takes longer to come down, and in
fact, even in a fasted state, the glucose-only feedback may not be
strong enough to bring glucose down completely.

### Liver: influential throughout (Stage 3 onward)

Dysfunction in the liver's insulin sensitivity is called hepatic
insulin resistance. In our stage model, it doesn't affect Stage 1; the
liver still takes out a chunk of glucose in the first pass. The GLUT2
mechanism is glucose-sensitive, not insulin-sensitive. However, Stage
3 is where the liver's insulin resistance gets in the way: the liver
is not able to turn its glycogenolysis/glycogenesis and
gluconeogenesis dials as much as it should, because even though
insulin is elevated, the liver isn't able to respond as well to that
increased insulin as it should.

This effect continues through to the rested, fasting state: the liver
has its dials slightly wrong, which means it's releasing a little more
glucose into the bloodstream (with a bit too much of glycogenolysis
and gluconeogenesis) than the rest of the body needs at the time. The
pancreas is producing enough insulin, the muscle and adipose tissue
are responding correctly. The liver is just producing a tad more than
it should.

### Muscle: influential in the postprandial state (Stage 4 onward), less so in the rested, fasting state

Dysfunction in the muscle's insulin sensitivity means that the muscles
don't do their fair share of taking glucose up. In the postprandial
context, the GLUT1 transporter still works, so the muscles do take up
a bit more glucose because there's more glucose in the
bloodstream. But the muscle isn't as sensitive as desired to the added
insulin signal, so the additional glucose uptake from that signal
doesn't happen to the desired extent. This effect starts showing up
from Stage 4 onward.

This means that there is more glucose circulating than ideal,
particularly in the postprandial state.

While this effect may continue into the fasted, resting state, it can
become close to negligible in that state, because in the fasted,
resting state, the muscles anyway aren't expected to be taking up a
lot of glucose from the bloodstream; they are expected to be depleting
their own glycogen stores for their energy needs. It's in the
postprandial state, when all hands need to be on deck to get glucose
out of circulation, that muscle insulin resistance has its most
direct, measurable effect.

### Adipose tissue: Stage 4 onward, but along the fatty acid release axis

Adipose tissue is somewhat unusual; the glucose uptake aspect is
minor, so reduced insulin sensitivity there doesn't move the
needle. The insulin sensitivity channel that is more important is
around the release of free fatty acids. With reduced insulin
sensitivity, adipose tissue continues releasing free fatty acids even
in the presence of high glucose levels, which pushes the liver more
toward gluconeogenesis (as well as increased VLDL production, but
that's a separate story).

### Relation between the degradations

* Adipose degradation (adipose IR) (for instance, via obesity) can
  lead to liver degradation over time: This is the "metabolic
  syndrome" progression.

* Liver degradation (hepatic IR) can lead to pancreatic beta cell
  loss; this is the "insulin resistance leads to diabetes" causal
  arrow.

* Muscle degradation (muscle IR) can, in some cases, cause more weight
  gain, triggering the metabolic syndrome pathway, but if weight is
  kept under control, it can in principle persist without causing
  liver degradation.

## Muscle versus adipose tissue and quantity versus quality

### Muscle's insulin resistance is about failure to do something, so quantity can compensate

Muscle's primary insulin resistance mechanism is that it isn't
sensitive enough to insulin so it doesn't take up as much glucose per
muscle cell. More muscle cells can somewhat compensate for this:
quantity compensates for quality.

Building muscle therefore works at two levels: it improves the quality
of muscle cells (making them less insulin-resistant) and increases the
quantity.

There are a few caveats: not all muscle cells are equal, and not all
muscle tissues have the same ability to drive additional cells to
increase the overall effectiveness of muscles as a sink. To a first
approximation, leg muscle is more plentiful and structurally more
effective at taking up glucose, so increasing leg muscle is good for
overall insulin sensitivity. Arm muscle, while important as part of a
functional fitness story, is a much less powerful lever for insulin
resistance because there is less scope to add more muscle cells, and
the glucose uptake potential is limited.

### Adipose tissue's insulin resistance is about actively doing something bad, so quantity can exacerbate

Adipose tissue's primary insulin resistance mechanism is the release
of free fatty acids. This means that more adipose tissue at the same
bad quality can only exacerbate the problem. In other words, quantity
exacerbates, rather than compensates for, quality. The one slight
exception here is if the quantity increase comes specifically by
reducing lower-quality higher-IR adipose tissue (such as inflamed
visceral fat) while increasing higher-quality lower-IR adipose tissue
(such as subcutaneous fat). However, generally, interventions that
reduce one kind of adipose tissue also reduce the other kind.

## Measurements

We're now in a position to look at the typical insulin resistance
measurements and break down what they are measuring.

### Homeostatic model assessment insulin resistance (HOMA-IR) and its components (fasting glucose and fasting insulin)

This measures fasting glucose in mg/dL times fasting insulin in uIU/mL
divided by 405. The fasting glucose and fasting insulin should be from
the same blood draw.

Here's the breakdown in terms of our four nodes:

* Pancreas: HOMA-IR itself doesn't speak to the pancreas; however,
  looking at its components (glucose and insulin) sheds some light.

  * Elevated glucose and low insulin suggest the possibility
    that the pancreas has lost the ability to produce insulin.

  * However, the other profiles, such as normal glucose and low
    insulin, or medium or high insulin, don't settle anything regarding
    the health of the pancreas; they are perfectly consistent with a
    well-functioning pancreas, but they could also hide some partial
    dysfunction of the pancreas.

* Liver: This is the node that HOMA-IR speaks to the most.

  * Normal glucose and elevated insulin (which together would result
    in elevated HOMA-IR) is the classic signature of early-stage
    hepatic insulin resistance that is fully compensated by pancreas
    overproduction with the muscle and adipose tissue responding to
    that insulin by keeping glucose in check.

  * Elevated glucose and normal-or-elevated insulin is a classic
    signature of prediabetes or early-stage diabetes; the liver is
    releasing too much glucose, and the pancreas is compensating with
    insulin, but the combined effect of the pancreas, muscle, and
    adipose tissue is not enough to keep glucose in check. This also
    suggests that the liver isn't the only thing with problems:
    perhaps the pancreas is not responding by overproducing effect, or
    perhaps there's also muscle and adipose insulin resistance feeding
    the problem.

* Muscle: HOMA-IR doesn't directly speak to muscle, because it's a
  fasting test and muscle glucose uptake is very little during fasting
  anyway. Muscle insulin resistance can worsen the HOMA-IR readout if
  there is already significant hepatic insulin resistance, by
  requiring the pancreas to produce even more insulin (thereby
  elevating the insulin term) or by not fully normalizing glucose
  (thereby elevating the glucose term).

* Adipose tissue: HOMA-IR doesn't directly speak to adipose tissue,
  because it's a fasting test. Similar to muscle, adipose IR can
  worsen the HOMA-IR readout if there is already significant insulin
  resistance.

### LP-IR and its inferior cousin TG/HDL-C

LP-IR is an estimate on the insulin sensitivity/resistance spectrum
based on the composition of lipoproteins as measured by the NMR
lipoprofile.

LP-IR looks at the sizes of VLDL, LDL, and HDL particles, and scores
them as follows:

* VLDL: Larger particles mean more insulin resistance, smaller
  particles mean less insulin resistance.

* LDL: Smaller particles mean more insulin resistance, larger
  particles mean less insulin resistance.

* HDL: Smaller particles and lower overall concentrations mean more
  insulin resistance, larger particles and higher overall
  concentrations mean less insulin resistance.

The three are weighed together using a machine learned model to output
a LP-IR score.

The logic behind this is to try to gauge whether adipose tissue is
releasing a lot of free fatty acids (adipose IR). The story is as follows:

* The more adipose insulin resistance, the more the adipose tissue is
  releasing free fatty acids into the bloodstream despite there
  already being enough glucose.

* The liver packages these free fatty acids into VLDL. Since it's
  seeing a higher concentration of the free fatty acids, it ends up
  making bigger VLDL particles.

* The cholesterol transport mechanisms (out of scope of this document)
  results in small, dense LDL and lower HDL levels.

The VLDL concentration is the most direct readout of the insulin
resistance, but VLDL also have a shorter half-life than LDL, so LDL is
more numerically plentiful and therefore informative in ways that VLDL
isn't. However, it's worth noting that the size of LDL particles is
affected by many factors other than insulin resistance. The machine
learned algorithm uses all these signals to come up with an
intelligent estimate of the underlying insulin resistance.

We can now evaluate how LP-IR is affected by the different nodes:

* Pancreas: N/A

* Liver: Hepatic insulin resistance can have some effect, since the
  packaging of free fatty acids into VLDL happens in the
  liver. However, it's not the primary driver: the amount of free
  fatty acids the liver receives is the main driver.

* Muscle: N/A (except indirect effects)

* Adipose tissue: This is the primary node captured by LP-IR, because
  adipose IR is what causes a high concentration of free fatty acids,
  triggering the cascade described above.

A note on the inferior cousin TG/HDL-C. This is a crude measure that
uses HDL-C as a crude proxy for the HDL side, and uses triglycerides
as a crude proxy for the VLDL side. The advantage of TG/HDL-C is that
it comes for free in a basic lipid panel, and therefore, one can get
more measurements of it over time, compared to the NMR lipoprofile
that requires a more expensive test with a longer turnaround time.

### Oral glucose tolerance test (OGTT) (with or without insulin)

An OGTT with insulin measures glucose and insulin right before
consuming a carbohydrate-rich meal, then measures both at multiple
points (for instance, after 30, 60, and 90 minutes). This gives a
picture of how glucose and insulin are evolving in the postprandial
state.

To a first approximation, a good OGTT with insulin means:

* Glucose should never spike too high, and should come down relatively
  quickly.

* Insulin should go up as needed to help glucose go down, but it
  should not go up more than it should need to in an insulin-sensitive
  system.

The OGTT without insulin measures the postprandial glucose levels but
not postprandial insulin levels.

* Pancreas: If insulin is included, insulin secretion dynamics are
  directly captured by the OGTT. Combined with the glucose
  measurements, we get clarity into both how much insulin the pancreas
  is producing, and how effective that is for glucose control. If
  glucose is not under control while insulin production stays low,
  that's evidence of issues with pancreatic production. If glucose
  gets under control quickly, that's evidence that the pancreas is
  able to produce enough insulin to do the job in the context of the
  current insulin sensitivity of the rest of the nodes.

* Liver: The early points of the OGTT provide insight into hepatic
  insulin resistance. That's because the liver is the fastest
  responder: it gets the first pass view of glucose, and ideally,
  should immediately turn its dials to make sure that not too much
  glucose is making it into the systemic circulation.

* Muscle: The later points of the OGTT provide insight into muscle
  insulin resistance. By this time, the liver has already suppressed
  the glucose peak, and glucose is still being released into the
  bloodstream, and the muscles are the primary sink for this
  glucose. Their effectiveness as a sink is directly correlated to
  their insulin sensitivity.

* Adipose tissue: N/A (indirect effects are possible)

### Glucose-only continuous and integrated measurements: CGM and HbA1c

The continuous glucose monitor (CGM) speaks to the effect on glucose,
but not to how much insulin is needed. The advantage of the CGM is
that it provides continuous readings across postprandial, rested, and
exercising states.

HbA1c is a crude integrated average glucose reading. While less
informative than a CGM, it provides a window into average glucose over
the past 3 or 4 months (based on the lifetime of the RBC).

### Visceral fat (as measured on DEXA or MRI)

Unlike all the above, which are biochemical measurements, visceral
fat, as measured on DEXA or MRI, is an anatomical measurement.

DEXA provides a total estimate of visceral fat. It does not estimate
ectopic fat within specific organs, although visceral and ectopic fat
correlate quite a bit. MRI measures both visceral fat and ectopic fat
in specific organs like the liver and pancreas.

Visceral fat speaks primarily to adipose insulin resistance. This is
because visceral fat is much more likely to be insulin resistant, so
the more of it there is quantitatively, the more quantitatively
significant adipose insulin resistance can be. A second reason
visceral fat is more dangerous is location: it lives close enough to
the liver that its FFAs drain directly into the liver without
dilution, which means that it has an undiluted effect on the liver's
VLDL production.

Ectopic fat is not measured in DEXA, but is correlated with DEXA's
visceral fat measurement. In fact, visceral fat can *cause* ectopic
fat, particularly in the liver (and to a lesser extent the pancreas),
through the same portal drainage mechanism (free fatty acids from
insulin-resistant visceral fat accumulate in the liver, building
ectopic fat). This ectopic fat can then directly contribute to hepatic
IR.
