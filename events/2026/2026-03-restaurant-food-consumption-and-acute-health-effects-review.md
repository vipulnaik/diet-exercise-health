# 2026-03: restaurant food consumption and acute health effects review

This review has been forked out of a subsection in [2026-02-06 onward:
right pelvic
discomfort](2026-02-06-onward-right-pelvic-discomfort.md). The purpose
of the subsection was to use the incident (where restaurant food
consumption seems to have triggered a health incident) to take stock
of the relationship between restaurant food consumption and acute
health incidents over the past few years. However, as the analysis got
fairly lengthy, and deviated quite a bit from the specific incident
the document was about, I decided that it makes sense to move it into
its own document.

NOTE: Stuff has not yet been moved from that document to this one, as
I am building out a fuler framework here first.

## Data and framework

### Restaurant food consumption data

I have data for food purchases starting 2021-03-10, including eating
out where the purchase cost was covered by somebody else.

I have data for food preparations and openings starting 2024-05-30,
with completion dates recorded for completions starting 2025-02-25 (a
few prior completion dates were backfilled based on reconstruction).

For restaurant food, fortunately, the purchase data is a reasonably
good approximation because I start restaurant food immediately upon
purchase, and in most cases I finish it completely or within a couple
of days. This means that I have reasonably informative data starting
2021-03-10.

This data feeds into a SQL table so it's particularly easy to run
aggregation queries as well as check for specific dates.

### Health incident data

Health incident data is intrinsically more qualitatively variable, and
is not uniformly entered in a computable format.

* Some stuff, such as atypical bowel movements, is tracked in SQL but
  in a private repository. I originally backfilled this documentation
  to 2024-03-27, and am in the process of backfilling some older data
  based on incident records for the atypical bowel movements (loose
  stools) after my July 2023 left side wisdom tooth removal.

* Any stuff that became part of either a very acute incident or a
  long-running incident is documented in a file in `events/<year>` for
  the start year of the incident. However, this is text documentation
  not following any very specific schema.
