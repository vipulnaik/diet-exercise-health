# Blood gas transport primer

## Level and goals of the primer

This is an intermediate-level primer that I wrote specifically with
the following goal: it helps ramp up my knowledge and understanding
from the loose high school biology level (that I am very likely to
remember coming into it) to a level of sophistication that is adequate
as a foundation for digging into things like:

* Detailed interpretation of complete blood count (CBC) interpretation
  of red blood cells (RBCs) and reasoning through the effects of
  atypical or concerning readings

* Reasoning through the effects of short-term physiological changes,
  such as sleep, moderate exercise, intense exercise, and eating

In particular, the primer neither aims to build up from a very low
baseline, nor does it aim to get to a very advanced position. It
eschews comprehensiveness; instead, the goal is to reactivate the
mental model that will help me with specific goals such as the ones
above. Since I wrote this specifically for my own self, and I have
already gone through the model in more depth than articulated here,
part of why it works for me is that it provides just enough detail to
reactivate, and probably not enough to build the model *de novo*. It
may therefore be inadequate for somebody who has *never* engaged with
the material at the level of depth covered in the primer.

## Source information

The primer was mostly constructed based on a small subset of the
material covered in the [blood flow deep dive Claude
conversation](https://claude.ai/chat/bcbc2f76-5aee-4920-8479-06e85ceb6c0c). I
cross-checked anything that felt fishy against Google Search AI mode
and/or Wikipedia, and also spot-checked a few things that didn't feel
fishy.

I had also previously watched Ninja Nerd videos on the topics covered,
which cover most of the information here, so I had had a systematic
"medical school" introduction to the topic. However, some specific
dots that I don't remember Ninja Nerd videos connecting include laying
out all the arterial/venous comparisons in a compact table, reasoning
about how the numbers shown relate to oxygen-hemoglobin dissociation,
and unpacking how the systemic circuit is a combination of several
circuits and what that means. All of these were things I explored with
Claude more explicitly and have tried to briefly touch on in this
primer.

## A few starting bullet points on RBCs, hemoglobin, oxygen, and carbon dioxide

* The blood contains several red blood cells (RBCs) that play a key
  role in gas transport and exchange, as described below.

* The RBCs are rich in a compound called hemoglobin, that has the
  capability to bind with both oxygen and carbon dioxide (at different
  binding sites within the hemoglobin molecule), and this binding
  capability plays an important role in hemoglobin's ability to pull
  oxygen from the lungs, carry oxygen to the tissues, deliver it to
  the tissues, pick carbon dioxide back from the tissues, and deliver
  it to the lungs.

* For oxygen, the hemoglobin-bound portion is the bulk (about 98%) of
  the oxygen in the blood (at both the arterial and venous end) with
  the remainder carried as dissolved oxygen (with slight percentage
  differences that we'll discuss further down).

  Note that this 98% is different from the 98% value of SaO2 shown
  below; the latter is the percentage of hemoglobin-oxygen binding
  sites that are used up by oxygen, so the denominator there is the
  number of binding sites rather than the amount of oxygen.

* For carbon dioxide, the split is about 70% bicarbonate, 20%
  hemoglobin-bound, and 10% dissolved carbon dioxide. The bicarbonate
  concentration serves an important buffering function.

## Table with key numbers

Here is a comparison of the blood gas situation at the arterial end
(blood just refreshed passing through the pulmonary circuit) and mixed
venous end (blood passed through systemic circult, needs to be
refreshed via the pulmonary circuit). Note that the systemic circuit
is made up of several circuits (coronary, cerebral, renal, hepatic,
splanchnic, skeletal muscle, skin), and "mixed venous" refers to the
mix of blood received from all circuits, so it averages things
out. Values are approximate and illustrative.

Measurement | Units | Dissolved, hemoglobin-bound, or both? | Arterial end name | Arterial end value | Mixed venous end name | Mixed venous end value
-- | -- | -- | -- | -- | -- | --
SO2 (saturation percentage of oxygen) | % | hemoglobin-bound | SaO2 | 98 | SvO2 | 75
PO2 (partial pressure of oxygen) | mm Hg | dissolved | PaO2 | 100 | PvO2 | 40
Oxygen per unit blood | mL/L | both | -- | 200 | -- | 150
PCO2 (partial pressure of carbin dioxide) | mm Hg | dissolved | PaCO2 | 40 | PvCO2 | 46
Carbon dioxide per unit blood | mL/L | both (plus bicarbonate) | -- | 480 | -- | 520

Note about SO2 (SaO2 and SvO2): This is related to the concept of SpO2
discussed in the [vital
signs](../profile-information/health-profile.md#vital-signs) section
of the health profile; the difference is that SpO2 is the saturation
percentage of peripheral ooxygen, with the periphery in question being
the finger that the pulse oximeter is applied to. We expect SpO2 to be
fairly close to SaO2 since the the blood hasn't been meaningfully
depleted of oxygen in the journey from the arterial end to the
periphery.

## Key hemoglobin versus dissolved oxygen takeaways from the table

* As blood goes through the systemic circuit, it loses oxygen
  (delivering it to tissues) and gains carbon dioxide (absorbing it
  from tissues).

* Approximately 25% of the oxygen gets extracted by tissues. This can
  be seen in the oxygen per unit blood measurement (that drops from
  200 mL/L to 150 mL/L), as well as in the oxygen saturation (that
  drops from 98% to 75%).

* In contrast, the partial pressure of oxygen drops by 60% from 100 to
  40. What this means, effectively, is that the fraction of oxygen
  that is dissolved is higher at the arterial end and lower at the
  mixed venous end. Both are small as a percentage of total oxygen in
  the blood (the hemoglobin-bound portion is the majority) and are in
  the 1-2% range.

* Effectively, this change in the mix reflects the fact that when the
  overall oxygen level drops, proportionally more of it binds to
  hemoglobin, which makes sense conceptually.

* For more exact details, see [oxygen–hemoglobin dissociation
  curve](https://en.wikipedia.org/wiki/Oxygen%E2%80%93hemoglobin_dissociation_curve)
  and [Bohr effect](https://en.wikipedia.org/wiki/Bohr_effect). The
  details are not being covered in the current document as they are
  not directly relevant to it.

## The 25% extraction and what happens when hemoglobin drops

We noted above that tissues extract approximately 25% of oxygen
(averaged across the systemic circuit) in a well-functioning system
that loads 200 mL/L at the arterian end of the systemic circuit.

When the hemoglobin level in the blood drops, the hemoglobin-bound
oxygen has to drop (because there's really no upward room to saturate
more -- we are already at 98% saturation). This can be compensated
somewhat by an increase in dissolved oxygen, but that's a small margin
and on the whole, the oxygen content in blood at the arterial end
really does drop.

This means that for tissues to get the same absolute oxygen per
systemic circuit, they need to compensate in one of these two ways:

* Increased cardiac output, which means there are more systemic
  circuits per unit time.

* Increased extraction per systemic circuit, which in turn can be
  accomplished by one of these:

  * Increased capillary recruitment

  * Increased production of 2,3-DPG (2,3-diphosphoglycerate) inside
    RBCs, causing a rightward shift of the dissociation curve (this is
    a more chronic / long-term response)

What ends up happening is that as hemoglobin drops (and therefore
oxygen content at the arterial end drops), oxygen delivery to tissues
also drops, but much more slowly than the hemoglobin drop
initially. However, as hemoglobin drops significantly, the
compensation fails to keep up ( we hit limits in terms of increasing
the percentage extracted) and we start seeing catastrophic
consequences (anemic hypoxia).

Here is an illustrative table prepared by Claude; this doesn't clearly
separate the cardiac output versus per-circuit delivery aspects, so
should be treated as broadly illustrative rather than specific.

Hgb (g/dL) | O2 content (mL/L) | Extraction fraction | O2 absorbed (mL/L) | Compensation status
-- | -- | -- | -- | --
15 (normal) | 200 | ~25%| ~50 |Baseline
12 | 160 | ~28% | ~45 | Mild compensation
10 | 133 | ~33% | ~44 | Moderate compensation
8  | 107 | ~38% | ~41 | Near compensation limit
7  | 93  | ~40% | ~37 | Compensation failing
5  | 67  | ~40% | ~27 | Severely impaired

## Why having more hemoglobin doesn't help

In the previous section, we talked of the challenges of reduced
hemoglobin levels. From an oxygen transport perspective, increased
hemoglobin levels feel like a free lunch: tissues can always choose to
extract less, and that extra capacity provides a buffer for peak
oxygen demand or against blood loss.

However, more hemoglobin creates viscosity problems, impairing blood
flow, and impaired blood flow means impaired ability of blood to
deliver the oxygen to tissues. The viscosity problems are triggered
both if we increase the hemoglobin concentration per unit volume of
RBC (aka the MCHC in the CBC), the size of the RBC itself (aka the MCV
in the CBC), or the number of RBCs per unit volume (the RBC
measurement in the CBC). The three things together multiply to give
the hemeglobin concentration, and while the exact details of how each
affects viscosity differ, none of them allow for significant increases
without paying the price in viscosity.

In this respect, we can think of the RBC system as a finely optimized
system that operates within tight parameters -- go too far down, and
we don't deliver enough oxygen to tissues; go too far up, and we
impair blood flow itself due to viscosity.
