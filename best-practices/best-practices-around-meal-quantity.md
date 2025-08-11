# Best practices around meal quantity

My overall food consumption tends to vary a lot by temperature, which
is likely a reflection of my relatively low quantity of subcutaneous
fat reserves that I can draw upon. During colder weather, I run risks
associated with large meals and high total food consumption. During
warmer weather, I run risks associated with low total food consumption
(meal size is still fine because I have two meals a day).

## Risks of large meals and high total food consumption

### Risk factors

Winter / colder temperature is the biggest risk factor for high total
food consumption.

The most direct effect is that I spend more energy keeping myself warm.

There's a positive feedback loop effect where increased food
consumption means more trips to purchase food, which further increases
energy expenditure. This effect isn't too strong overall, but it's
worth noting that it's a positive feedback loop rather than a negative
feedback loop.

### Risks

I have some risk factors around large meals. I already have larger
meals relative to my overall food intake because I only have two meals
in a day.

Some of the risks of large meals and of high total food consumption
are:

* Greater strain on the GI tract, which can lead to abdominal
  discomfort directly

* Higher levels of fermentation for a given meal composition (just
  because there's more FODMAPs in absolute quantities)

* Larger stools, which increases the risk of having to have multiple
  stools in a day and also increases the risk of anal swelling and
  other discomfort due to pressure

These are generally the factors that give in first, so whereas there
are other risks in principle (like obesity) the feedback mechanisms
from the above should kick in first. This is partly because the nature
of my food is such that the ratio of fiber and bulk to calories is
high, so limiting factors on the fiber and bulk side hit first.

### Ways to reduce the risk of large meals

#### Temperature management

Cold temperatures increase my appetite, so trying to stay warm and
keep myself from being in low temperatures for too long can help.

#### Shift toward higher protein and fat

I should consider having more protein and fat, which are more filling,
while trying to keep the consumption of fiber and carbohydrates to
only slightly above normal levels.

For instance, have more nuts. Have more vegan probiotic yogurt. Have
more lentils. Focus a bit more on the potatoes and peas than on the
rice and wheat.

#### Meal duration monitoring

My summertime meals are in the range of 20 to 30 minutes of actual
eating (though sometimes a bit longer if I eat in a relaxed fashion
waiting between servings), whereas my winter meals have in some cases
gone to over an hour. This is too long and is correlated with eating
too much.

Particularly in the winter, and particularly if eating eagerly (no
pauses with my plate being empty), I should take care to do meal
duration monitoring as follows:

* At around 30 minutes or so, I should start wrapping up my meal --
  the first serving I do after 30 minutes should be my last serving,
  with the possibility of a minor top-up.

* I should aim to finish my meal within about 40 minutes and should
  not go above 45 minutes.

* If there's something I am hooked to (like a video or TV show) that I
  don't want to leave for post-meal cleanup, it's fine to stay on with
  that for up to about 10 minutes after finishing the meal, but I
  should still clearly finish the meal. I shouldn't overeat just so
  that I can continue to consume the content.

## Risks of low total food consumption

### Risk factors

My food consumption can drop during summer months as well as during
periods when I am unable to exercise for reasons not directly
health-related (such as being busy).

The primary reason is calorie balance: when it's warmer, I spend less
energy keeping myself warm, and when I am exercising less
(particularly jogging), I spend less energy on exercise.

Summer can also be a period of lower exercise during days of extreme
heat where I don't even feel like exercising, so these two factors can
coincide.

I might also do fewer outside trips to purchase food in the summer
because my food consumption is lower, which means less energy
expenditure on outside trips, which in turn causes food consumption to
be lower.

### Risks

The lower calorie consumption in and of itself is not a problem as
long as I am in energy balance, which I probably am. The risks are
mainly that the lower overall quantity of food means that I consume
less of some nutrients whose requirement hasn't needed. These include:

* Protein: My winter consumption of protein can exceed 100 grams, but
  my summer consumption can go down to the 60 to 70 grams range. The
  summer consumption is adequate for preventing wasting, but, given
  the quality considerations, it isn't ideal for muscle protein
  synthesis.

* Potassium: Potassium is strongly tied to the amount (bulk) of food
  consumed (unlike sodium, which is sensitive to the quantity of added
  salt, which I can adjust). My winter consumption can exceed 5000
  milligrams, while my summer consumption can fall a little below 3000
  milligrams. Ideally I should be somewhere in the middle. I expect
  that with decent kidney function, I can handle the summer low, but
  this is something to be watchful of.

* Micronutrients (vitamins and minerals): I have not looked into these
  in depth.

### Ways to reduce the risk

#### Bumping up dietary protein and amino acid supplementation

```
mysql> select short_name, protein_in_grams / calories as protein_to_calories from food_types order by protein_to_calories desc limit 10;
+------------------------------------------+---------------------+
| short_name                               | protein_to_calories |
+------------------------------------------+---------------------+
| Kite Hill Greek Style Plant-Based Yogurt |            0.127778 |
| TJ Broccoli Florets 12 oz                |            0.120000 |
| TJ Kale                                  |            0.100000 |
| TJ Baby Spinach                          |            0.100000 |
| TJ Baby Spinach 6 oz                     |            0.100000 |
| Sofit Soya 180 ml                        |            0.093023 |
| TJ Carb Savvy Tortillas                  |            0.088889 |
| Wild Harvest Organic Lentils             |            0.080000 |
| TJ Beans                                 |            0.080000 |
| TJ Mixed Baby Kale                       |            0.079981 |
+------------------------------------------+---------------------+
10 rows in set, 3 warnings (0.00 sec)
mysql> select short_name, protein_in_grams / fiber_in_grams  as protein_to_calories from food_types order by protein_to_calories desc limit 10;
+----------------------------------------------------+---------------------+
| short_name                                         | protein_to_calories |
+----------------------------------------------------+---------------------+
| Kite Hill Greek Style Plant-Based Yogurt           |           15.333333 |
| TJ Organic Tomato and Roasted Red Pepper Soup      |            5.000000 |
| TJ Indian Style Flatbread                          |            3.666667 |
| Sofit Soya 180 ml                                  |            3.200000 |
| Lundberg Sustainable California White Jasmine Rice |            3.000000 |
| Lundberg Organic California White Jasmine Rice     |            3.000000 |
| TJ Organic Couscous                                |            3.000000 |
| TJ Whole Wheat Tortillas                           |            2.500000 |
| Health Factory Zero Maida Bread                    |            2.164038 |
| TJ Brazil Nuts                                     |            2.003311 |
+----------------------------------------------------+---------------------+
10 rows in set, 10 warnings (0.00 sec)
```

Vegan yogurt stands out as having a high ratio of protein to calories
and a high ratio of protein to fiber. This means that it can be used
both in periods where my calorie needs are lower and in periods where
I want to get more protein relative to fiber.

My aimed-for practices are as follows:

* Try to consume a little more vegan yogurt than I naturally
  would. It's anyway a cooling food so I should enjoy it in the
  summer. My natural consumption rate drops from one pack every 2 days
  (winter) to one pack every 3 days (summer) but I should be able to
  raise the consumption to one pack every 2.5 days without distorting
  things too much.

* Increase the dose of supplemental amino acids (lysine right now) as
  well as supplemental creatine. This can have a compensatory effect,
  and can be easily reversed when my dietary protein consumption goes
  back up. Currently, I think a threshold of around 75 to 90 grams per
  day should be the boundary for daily dietary protein consumption at
  which I change the supplement dosage.

#### More TBD based on bloodwork

I need to get bloodwork results to decide whether other changes are
warranted. I take supplements for most things where I don't want to
rely purely on diet. Potassium is the one that has the biggest swing,
because it's related to the "bulk" consumed, but I expect that my
kidney function is good enough for it not to matter.
