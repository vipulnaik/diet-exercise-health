# Insulin resistance primer

## Level and goals of the primer

This is an intermediate-level primer I wrote specifically to ramp up
my own understanding from the colloquial understanding of insulin
resistance to a sophisticated understanding that is good enough to
drive medical decision-making and interpretation.

## Source information

The primer was mostly constructed based on a small subset of the
material covered in the [health profile review Claude
conversation](https://claude.ai/chat/b9b94006-2e65-4a25-adf5-9cb94b446ed4),
scattered across different parts of the conversation, along with prior
knowledge I had accumulated through a mix of Ninja Nerd videos as well
as interviews by people like Peter Attia, Simon Hill, and Lily
Johnston covering insulin resistance. I did not reference prior
knowledge extensively when writing the primer, but I did reference the
Claude conversation.

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

Muscle tissue and adipose tissue are the two types of tissue that are
insulin-sensitive: they have surface receptors that insulin in the
bloodstreamcan bind to that tells the cells to increase their uptake
of insulin. The insulin itself does not get taken up by the cells, but
it influences the rate of uptake of glucose.

The level of insulin in the blood can vary widely. Insulin level can
go fairly high during or immediately after the consumption of a
carbohydrate-rich meal. It is relatively low in a rested fasting state
and can dip even lower during exercise.

## The four main players in insulin: pancreas, liver, adipose tissue, skeletal muscle tissue

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
Insulin up | Activates glycogenesis, suppresses gluconeogenesis and glycogenolysis, activates lipogenesis (SREBP-1c) | down | down (directly via first-pass clearance using insulin-degading enzyme)

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
  predecessors and release it into the bloodstream. This is useful
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

TO BE CONTINUED
