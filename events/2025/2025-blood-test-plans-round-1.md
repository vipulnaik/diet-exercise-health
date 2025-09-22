# 2025 blood test plans: round 1

This document includes blood tests taken from the [2025 blood test
plans doc](2025-blood-test-plans.md) that I plan to do as part of
round 1 of the tests. My plan is to round 1 in January 2025.

## Booking process

### Cost calculation

Totals:

* Own Your Labs: $497.80 (the main driver of the higher cost here is the cystatin C test) (does not include quantitative immunoglobulins)
* Marek Diagnostics: $273 plus $5 blood draw fee, totaling to $278
* Request A Test: LabCorp $522 (excluding creatine kinase), Quest Diagnostics $283 (excluding creatine kinase, cystatin C, and quantitative immunoglobulins)

Of these, Marek Diagnostics seems to be the cheapest, so my plan is to
order from them.

### Order

I placed the order via Marek Diagnostics around 6:30 PM on
2024-12-30. I was also able to use a discount coupon for 10% so that
my total cost came to $250.20.

After placed the order, I downloaded the requisition form from the
Marek Diagnostics website. I also checked the order status on the
Marek Diagnostics website. It shows as "Unfulfilled". ~~That suggests
that the transition in status from "Unfulfilled" to "Fulfilled"
happens as part of the blood draw.~~ When I logged in again on
2025-01-01, the order status showed as "Fulfilled" so it doesn't seem
to refer to whether the blood sample has been submitted.

### Appointment for blood draw

Earlier in the day on 2024-12-30, I had booked a blood draw
appointment with LabCorp for Wednesday 2025-01-22 11 AM. I planned to
use that appointment to get the blood draw for these blood tests.

### Setup of calendar reminders

On the evening/night of 2024-12-30, I set up various calendar
reminders following the [best practices around blood
tests](https://github.com/vipulnaik/diet-exercise-health/blob/master/best-practices/best-practices-around-blood-tests.md).

## Blood draw

Unfortunately, the location where I had my appointment ended up
temporarily closing, and I had to do a walk-in at a different
location. See [here](2025-01-22-blood-tests.md) for more information.

## Results

I got the results on Saturday 2025-01-25, three days after the blood
draw. I downloaded and saved the PDF of the results.

I finished entering the results in the [SQL
file](../../sql/test_results.sql) and incorporating them into the
[health profile](../../profile-information/health-profile.md) on
Saturday 2025-05-17.

## General thinking behind tests to include

This round is focused on tests that are of a more one-off nature, that
I haven't done before. It is not intended to cover tests that provide
periodic followup measurements (except where such measurements
complement the one-off tests and allow for same-sample comparisons).

The goal is to fill in some of the missing pieces in my health profile
where I don't have any data at all, rather than provide additional
data points for the pieces where I already have data.

I am also leaving out from here any tests where I still have
significant uncertainty regarding the value and interpretation of the
test results. I plan to cover such tests in a round 2 that I might do
either around March/April or sometime later in June.

## Tests for organ function and damage

### Cystatin C (for more accurate kidney eGFR) for kidney function

* https://ownyourlabs.com/product/cystatin-c-2/ ($322.36)
* https://marekdiagnostics.com/products/cystatin-c-with-egfr ($87)
* https://requestatest.com/cystatin-c-test (LabCorp: $119; not available on Quest Diagnostics)

This is expected to be a once every 4-8 years test for a more accurate
estimate of eGFR. If it agrees with the estimate I obtain via
creatinine as part of the CMP, then I don't need to redo this test for
at least 4 years. In case of significant divergence though (with the
cystatin C value *much lower*), I may need to do this test annually.

#### Comprehensive metabolic panel (CMP) to complement the cystatin C measurement

Test details:

* https://ownyourlabs.com/product/comp-metabolic-panel-14/ ($10)
* https://marekdiagnostics.com/collections/lab-builder/products/comprehensive-metabolic-panel-cmp ($10)
* https://requestatest.com/comprehensive-metabolic-panel-testing (LabCorp: $34; Quest Diagnostics: $34)

The CMP includes its own eGFR value using serum creatinine. I've had
serum creatinine values at the low end in previous blood tests, and
this has fed into a calculation of a high eGFR, which may be
misleading if my serum creatinine is low for the wrong reasons (not
enough muscle mass). Doing a CMP concurrently with the cystatin C
measurement will give simultaneous eGFR values using the two methods
that I can compare and get a better sense of kidney function.

Separately, this will also allow me to see whether the high
BUN/creatinine ratio seen in the previous CMP is continuing. It will
be easier to interpret the BUN/creatinine ratio in the context of an
accurate measure of kidney function via cystatin C.

### Prostate-specific antigen (PSA) for prostate function

* https://ownyourlabs.com/product/prostate-specific-ag-serum/ ($16.80)
* https://marekdiagnostics.com/products/prostate-specific-antigen-psa ($11)
* https://requestatest.com/prostate-specific-antigen-testing (LabCorp: $59; Quest Diagnostics: $57)

This is useful as an early screen for prostate cancer and other
prostate issues. It would also help to get a baseline level that I can
compare against in future testing.

### Creatine kinase

* https://ownyourlabs.com/product/creatine-kinase-total/ ($37.34)
* https://marekdiagnostics.com/products/creatine-kinase-ck-total ($6)
* Request A Test doesn't seem to have this, but it has a creatine test for $39; I do not know for sure how the tests relate

This is good as a measure of muscle growth/damage/regrowth and can be
good for the interpretation of ALT and AST values that are part of a
CMP. It is also good to have a baseline creatine kinase value prior to
starting any therapy such as statin therapy.

## Tests of markers around inflammation and endothelial dysfunction that are particularly relevant for atherosclerotic risk

### Complete blood count (CBC) with differential

* https://ownyourlabs.com/product/cbc-with-differential-platelet/ ($8.40)
* https://marekdiagnostics.com/products/complete-blood-count-cbc-with-nlr-differential-and-platelets ($10)
* https://requestatest.com/cbc-with-differential-testing (LabCorp: $29; Quest Diagnostics: $35)

Although a CBC is a test I get done regularly, I'm getting it done
here to give more context to the remaining tests. If I have elevated
markers here, that could be indicative of some transient infection
that suggests caution in interpreting the other results.

### Quantitative immunoglobulins for immune function

* Own Your Labs does noy have IgE; it has tests for IgG, IgA, and IgM at $11.10 each
* https://marekdiagnostics.com/products/immunoglobulins-iga-ige-igg-igm-serum-quantitative ($51)
* https://requestatest.com/immunoglobulin-antibody-iga-ige-igm-igg-blood-test (LabCorp: $119; not available on Quest Diagnostics)

My reason for interest in this test is two-fold. First, I want to get
a baseline measurement of my immune system function. Second, I am
particularly keen to gauge if I have a propensity for allergies; if I
do, I may want to do more detailed testing thereof. If my levels are
fine, then I expect to not do further followup testing for at least
4-8 years unless I have specific symptoms that suggest a need for
further testing.

### C-reactive protein (high-sensitivity) as an inflammatory marker relevant to atherosclerosis

* https://ownyourlabs.com/product/c-reactive-protein-cardiac/ ($26.40)
* https://marekdiagnostics.com/products/c-reactive-protein-high-sensitivity-hs-crp ($23)
* https://requestatest.com/c-reactive-protein-high-sensitivity-testing (LabCorp: $59; Quest Diagnostics: $59)

C-reactive protein is a general marker of inflammation and it's also
specifically implicated in the inflammatory response that results in
atherosclerosis. I have not measured this before, so it would be good
to get at least a baseline measurement.

### Homocysteine as a contributor to endothelial dysfunction (a step in the chain to atherosclerosis)

* https://ownyourlabs.com/product/homocysteine-plasma/ ($68)
* https://marekdiagnostics.com/products/homocysteine ($65)
* https://requestatest.com/homocysteine-testing (LabCorp: $69; Quest Diagnostics: $69)

I haven't had my homocysteine measured before, and would like to get
at least one measurement.

### Uric acid in blood as a contributor to atherosclerosis

* https://ownyourlabs.com/product/uric-acid-serum/ ($8.50)
* https://marekdiagnostics.com/products/uric-acid ($10)
* https://requestatest.com/uric-acid-gout-blood-test (LabCorp: $34; Quest Diagnostics: $29)

Uric acid causes oxidative stress in the mitochondria and can be a
contributor to atherosclerosis.
