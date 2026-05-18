# Immune system primer

## Level and goals of the primer

This is an intermediate-level primer that I wrote specifically with
the following goal: it helps ramp up my knowledge and understanding
from the loose high school biology level (that I am very likely to
remember coming into it) to a level of sophistication that is adequate
as a foundation for digging into things like:

* Detailed interpretation of complete blood count (CBC) measurements
  involving white blood cells (WBCs) and reasoning through the effects
  of atypical or concerning readings

* Detailed interpretation of quantitative immunoglobulin assays

* Reasoning through the effects of short-term physiological changes,
  such as sleep, moderate exercise, intense exercise, and eating

* Reasoning through the level of preparation going into an infection
  and the response to the infection

* Reasoning through the impact of vaccination and subthreshold
  exposure to infectious agents and other irritants

## Source information

The primer was mostly constructed based on a small subset of the
material covered in the [blood flow deep dive Claude
conversation](https://claude.ai/chat/bcbc2f76-5aee-4920-8479-06e85ceb6c0c). I
cross-checked anything that felt fishy against Google Search AI mode
and/or Wikipedia, and also spot-checked a few things that didn't feel
fishy.

I have also watched a few videos in the health and longevity space
related to general and specific aspects of the immune system, and have
previously read through basic explanations of some of the topics, so I
was entering the conversation with some prior knowledge.

## A few high-level distinctions within immunity

There are 5 important distinctions, each with 2 key sides, yielding a
total of 2^5 = 32 potential combinations. Some of these combinations
don't matter much, but the vast majority of the combinations do make
sense and each cover different things. The Claude conversation
includes an attempt to traverse all 32 possibilities (search `null` in
the conversation). We'll skip trying to summarize that attempt in this
primer.

* Innate/natural immunity versus adaptive immunity:

  * Innate immunity or natural immunity is general immunity not
    specific to a particular exposure.

  * Adaptive immunity is the specialized, highly-targeted,
    memory-building system tied to specific exposures.

* Naive (respectively, untrained) immunity versus memory (respectively, trained) immunity:

  * For adaptive immunity, we contrast naive immunity against memory
    immunity. Naive immunity is when there's a fresh exposure to an
    insult that a naive immune system component (a B cell or T cell in
    response to an antigen) encounters and then adjusts to. Memory
    immunity is encoded through the population of B cells or T cells
    that are created specifically to combat the specific antigen, that
    continue circulating in the blood for a while after that.

  * For innate immunity, we can distinguish untrained immunity (no
    lived experience that finetunes the immune system's preparedness)
    with trained immunity (lived experience of pathogens affecting the
    overall tuning of the immune system, such as the mix of WBCs or
    quantitative immunoglobulins).

* Standing preparedness versus current activity:

  * Standing preparedness, which is the stuff the immune system keeps
    running all the time to be ready to detect and combat attacks.

  * Current activity in response to attacks, for instance, during an
    insult (infection, injury, or other exposure).

  This distinction is relevant when thinking about immune function
  markers (such as WBCs and quantitative immunoglobulins) versus
  inflammatory markers.

  * Each immune marker represents some mix between standing
    preparedness and current activity; the factors affecting the mix
    vary by immune marker. But what this means is that even in the
    absence of an insult, we don't want the immune marker to be too
    low because that might indicate low standing preparedness.

    This makes immune markers tricky to interpret, because the
    measured value does not tell us exactly how much is driven by
    standing preparedness and how much is driven by current activity,
    and there is also a separate question of how much the level of the
    marker reflects its functional effectiveness on either side for
    the context the human in question is operating under. For
    instance, low standing preparedness might be a good adaptation to
    an environment of low unexpected infection exposure, but a poor
    adaptation to an environment of high unexpected infection
    exposure.

  * Inflammatory markers (such as acute phase reactants including
    c-reactive protein) are essentially only current activity markers
    (sometimes with a bit of lag, making them recent activity
    markers). They don't provide much insight into standing
    preparedness.

* Cellular immunity (or cell-mediated immunity) (white blood cells
  (WBCs)) versus humoral immunity (individual compounds such as
  immunoglobulins and cytokines):

  * The main compounds responsible for humoral immunity are themselves
    produced by WBCs. For instance, a specific type of WBC may produce
    a specific class of immunoglobulins.

  * But many of the cells are also capable of acting as cells -- using
    their shape, binding capabilities, and other physical properties
    -- to execute some of their immune functions.

  * The same type of cell may act in both ways (cell-mediated or
    humoral), but the importance of the two ways varies by the type of
    WBC. For instance, B cells and T cells are both lymphocytes, a
    kind of white blood cell. Both these kinds of cells have both
    cell-mediated and humoral immune functions. But B cells are
    primarily known for their humoral immune function (the production
    of antibodies) and T cells are primarily known for their
    cell-mediated function (directly attacking the infected or
    cancerous cells).

* Blood versus tissue (with special roles for the lymphatic system and
  microbiome):

  * A lot of immunity operates directly within blood. In particular,
    the blood itself destroys antigens, keeping itself clean and
    preventing them from reaching tissues in the first place.

  * But tissues themselves play an important role in their own immune
    defense.

    * Some of the tissues' immune role is through stuff supplied
      directly to tissues by blood -- either in the form of standing
      preparedness, or to support current activity. This mostly
      includes various quantitative immunoglobulins, but in some cases
      can also include WBCS themselves.

    * However, the blood biomarkers only capture what's available in
      the blood, not what tissues choose to extract (demand), how much
      of it they use (utilization) and what uses they put it to (local
      decision-making).

    * There are also categories of tissue-resident immune populations:
      populations of cells that live and subdivide entirely in tissues
      rather than being supplied to tissues on an ongoing basis by the
      blood.

    More on this in the Claude conversation (and maybe eventually
    summarized in this document too).

  * The lymphatic system has a bunch of its own complexity when it
    comes to its role in immune function. We can put it on the tissue
    side of the blood/tissue distinction, but it's a circulatory
    system rather than an organ in a small space, so it's better
    thought of as its own thing.

  * The microbiome is another source of complexity when thinking about
    immune function, particularly in areas like the GI tract and skin.
