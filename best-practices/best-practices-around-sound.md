# Best practices around sound

Related documents:

* [Best practices around light](best-practices-around-light.md)
* [Best practices around exertion and stimulation](best-practices-around-exertion-and-stimulation.md)
* [Private Claude conversation with source material informing this
  document](https://claude.ai/chat/0afeed5f-bc22-4411-9658-8426e77de3a3)
  (the conversation covers some of these topics in much greater depth,
  and also covers several other topics)

## General facts about and challenges with sound

### Loudness terminology and numbers to remember

* The decibel scale is a logarithmic scale for sound volume (or
  energy). Adding 10 dB to sound means increasing the energy of the
  sound to 10 times the original value (the amplitude increases to
  sqrt{10} times the original value).

* Adding 3 dB to sound roughly doubles it (that's because log 2 is
  approximately (3/10) log 10).

* The sensation level (SL) of a sound is the number of decibels it is
  above the minimum audible volume for a particular listener. Note
  that as different listeners may have different mix of minimum
  audible volumes for different frequencies, measuring SL for one
  listener instead of another is not simply about adding a fixed
  number based on their relative hearing; you have to look at the
  frequency distribution of the sound.

  Speech-like sound generally tends to be clearest and least fatiguing
  at a SL of about 40-50 dB: the central processing effort is minimal
  because the sound is loud enough. However, most of the benefits can
  be achieved at a SL of 20-30 dB.

* The binaural summation effect says that the same sound heard in both
  ears sounds 3 dB louder than the sound heard in just one ear. This
  makes sense because the volume and energy of the sound doubles,
  which means an extra 3 dB.

* Sounds start becoming acutely dangerous at decibel levels of about
  75-80 dB or higher.

* Roughly speaking, the damage of a sound depends on the product of
  volume and the duration. In a simplistic model called the equal
  energy hypothesis (EEH), every 3 dB reduction in sound volume means
  that the amount of time to inflict comparable damage roughly
  doubles. Or equivalently, a 10 dB reduction in volume means you have
  to listen to the sound for 10 times as long for comparable
  damage. The EEH holds as an approximate rule of thumb in the range
  of 75 to 110 dB, where irrecoverable hardware damage starts becoming
  a possibility.

### Damage due to loud sounds

Loud sounds can cause sensorineural hearing loss in two ways, both of
which tend to affect high frequencies more:

* Direct damage to the hair cells (this is the more common and acute
  form of noise-induced hearing loss)

* Damage to the spiral ganglion cells responsible for transmitting
  auditory signals (known as cochlear synaptopathy or hidden hearing
  loss; this is a more gradual form of hearing loss through repeated
  exposures to somewhat loud sounds)

The key thing that affects sound's ability to cause hearing loss is
the volume (energy) rather than the frequency of the sound.

However, the *effect* of hearing loss is first seen at higher
frequencies. This manifests in two ways:

* Loss of temporal fine structure (TFS) leading to the tonal loss
  point shifting to a lower frequency (i.e., sound stops sounding like
  music at a lower frequency).

* Loss of temporal envelope (ENV) resulting in a reduction in the
  maximum frequency that can be heard.

Here are a few further notes:

* Hair cell damage shows up clearly as a loss of ENV and hence a
  reduction in the maximum frequency.

* On the other hand, synaptopathy shows up in a loss of TFS (and hence
  a shifting of the tonal loss point) before it affects the maximum
  frequency.

I track both the tonal loss point and the maximum frequency I can
hear, both through quick tests to confirm that they are in the
expected range, and through a fuller test every 6 months to determine
exact values.

### Central and peripheral fatigue mechanisms and music characteristics

The following contribute to peripheral fatigue directly; this can be
thought of as "hardware" fatigue to the ears, including the outer and
middle ear for air conduction and the inner ear (hair cells and spiral
ganglion cells transmitting sound information):

* High volume: The 70 dB+ regime is one where we start seeing
  potential for irrecoverable damage if sustained. Mechanisms:
  temporary displacement of stereocilia, metabolic exhaustion of
  electromotility mechanism, local oxidative stress.

  The equal energy hypothesis (EEH) is a good way of thinking about
  the volume/duration hypothesis in this range.
  
  At lower volumes, the ear is able to heal itself and does not
  accumulate long-term damage, though it still gets fatigued.

* Moderate volumes: The roughly 30-70 dB range, at which sustained
  listening can create peripheral fatigue but without damage
  potential, with the fatigue increasing with both volume and duration
  of exposure, and with recovery when the sound stops. Mechanisms (all
  of which increase with volume): depletion of endocochlear potential,
  outer hair cell operating point shift, MOC efferent suppression, and
  neurotransmitter depletion.

  The moderate-volume mechanisms correspond to the high-volume
  mechanisms approximately; look for `correspondence` in the Claude
  conversation for more information.

  Something like the EEH applies (lower volume needs longer duration
  to effect similar damage as higher volume), but the exact exchange
  rate may be a bit different from what the EEH suggests.

Central fatigue mechanisms are essentially driven by how hard it is to
parse the desired signal from the sound. As discussed earlier, this
can be assessed based on the sensation level of the sound -- how many
decibels it is above the minimum audible volume. However, for central
fatigue, it's not just sensation level relative to minimum audible
volume that matters, but also sensation level relative to the minimum
volume at which the desired signal (whether music, words, other
auditory nuances) can be extracted. If we define a "task-specific
sensation level" as the sensation level relative to the volume at
which signal can be extracted, then central fatigue mechanisms
essentially go down as the task-specific sensation level of the sound
goes up.

However, there are two caveats to the "central fatigue goes down as
volume goes up" thumb rule:

* Signal-noise ratio: Recordings often have some background noise,
  intentional or unintentional. As volume is raised, the background
  noise becomes more and more clear, which means more effort is needed
  to filter it out. Therefore, beyond a point, raising volume
  increases central processing effort of filtering the noise out
  cognitively.

* Indirect effect of peripheral fatigue: The strain of peripheral
  fatigue can cause degraded sound signals and general tiredness that
  make it harder to parse sound.

In practice, a TSL of 20-30 dB is ideal for central fatigue: it's high
enough to get all the benefits without the SNR and peripheral fatigue
effects. However, the exact optimum can vary based on how much noise
there is in the recording and what the absolute task-specific
threshold is (because peripheral fatigue is more affected by absolute
levels while central fatigue is more affected by TSL).

### Loudness bias, loudness wars, and volume ratchet effect

Humans have a loudness bias; this is essentially a bias toward finding
sounds better as they get louder, particularly when the sounds are
played side by side or the louder sound is played right after the less
loud sound. The loudness bias creates a [loudness
war](https://en.wikipedia.org/wiki/Loudness_war), where recorded music
deliberately tries to sound loud (for a given level of volume at the
control) through signal processing techniques to amplify itself,
including dynamic range compression and equalization.

This is one reason music generally sounds louder than other recorded
audio (such as podcasts or lectures) at the same volume: the music has
been processed in a way to more fully saturate the allowed volume with
sounds. Podcasts and lectures generally undergo either no such
processing or a much more minimal form of such processing.

The fact that sequentially raising the volume of sound makes it sound
better creates what I call the volume ratchet effect: a tendency to
keep raising the volume on sound to make it sound better, particularly
for the good parts, and then forget to turn the volume down.

### Music versus podcasts: the key differences

* Music has a fundamentally lower extraction threshold than speech due
  to greater redundancy in presentation.

* Dynamic range compression for music further makes the music feel
  louder at a given volume.

Combined, these considerations mean that music is better listened to
at lower volumes than speech.

### Sound characteristics and their relationship to damage and fatigue

* Rapid-onset percussive sounds (drums, consonants, clicks) have more
  peripheral fatigue and damage potential because the rapid onset
  creates a mechanical impulse that stresses the cochlear structures
  more than a gradual onset of equivalent total energy. The stapedius
  reflex, which stiffens the ossicular chain to protect the cochlea
  from loud sounds, has a latency of roughly 25-150ms — too slow to
  protect against rapid-onset impulse sounds, which is why gunshots
  and sudden impacts cause more cochlear damage than sustained sounds
  of equivalent energy. They also cause more central fatigue because
  they require rapid auditory scene analysis

* Predictable, regular sound patterns are less fatiguing centrally
  than unpredictable or irregular ones, because the auditory cortex
  builds predictive models of expected sound sequences and can process
  predictable sequences with reduced active attention.

* Tonal content is less fatiguing centrally because the auditory
  cortex has specialized circuits for harmonic processing that operate
  relatively automatically.

### Sound delivery format and its relationship to damage and fatigue

#### Bone conduction headphones versus air conduction (over-ear or in-ear headphones or room speakers)

Advantages of bone conduction headphones for peripheral fatigue:

* Bone conduction headphones deliver less total acoustic energy than
  air conduction (whether normal headphones or speakers in the orom)
  for comparable perceived loudness, so they create less total fatigue
  through that route.

* Bone conduction headphones bypass the inner and middle ear, so they
  don't fatigue those parts of the ear, leading to less of some of the
  inner and middle ear muscle fatigue. There are separate postural
  benefits and costs in terms of how they interact with the skin,
  which may or may not be favorable compared to normal headphones.

Advantages of bone conduction headphones for central fatigue: over-ear
or in-ear headphones can produce a slight occlusion effect and
resonance effects, making the sound feel unnatural.

Other advantages of bone conduction headphones: They are great for
listening to content while maintaining situational awareness because
they don't block the ears (this is the same as the occlusion effect
mentioned, but with a different downstream benefit).

The main disadvantage of bone conduction headphones is not related to
damage or fatigue. Rather, in-ear or over-ear headphones shine for
dedicated, other-blocking listening, with faithful representation of a
wider range of frequencies. In-ear or over-ear headphones shine here
(better representation of low and high frequencies), and therefore are
ideal for finer appreciation of music or close listening to specific
passages for nuances. The "other-blocking listening" is the occlusion
effect showing up yet again, but in this context it becomes an
*advantage* of in-ear or over-ear headphones.

#### Headphones versus room speakers

Headphones in general (both bone conduction headphones and normal
headphones) have advantages over room speakers for central
fatigue. This is primarily because room speakers create "room
acoustics" due to their spatial separation from the ears:

* This includes complications such as reflections, standing waves,
  comb filtering from multiple reflection paths. These add spectral
  and temporal complexity to the signal that the auditory cortex must
  process and de-reverberate.

* There is also a spatial complexity: speakers in a room produce a
  complex spatial sound field that the binaural system continuously
  processes for localization and source separation. This is further
  compounded if I am moving around, but it gets activated even if I am
  stationary relative to the speakers.

* There is further complexity if moving around: The particular pattern
  of spatial and temporal complexity of sound varies a lot based on
  exact position relative to the speakers. This means that slight
  repositioning can dramatically affect the intelligibility of the
  sound. Combined with the fact of lack of volume control to
  compensate for these changes, and the central fatigue load adds up.

#### Overall take

Bone conduction headphones are ideal for listening while moving around
the house to stuff that doesn't require very careful auditory
processing, while maintaining situational awareness. In particular,
they're good for extended listening to podcasts or re-listening to
previously watched dramas or familiar music, where the goal is not to
capture all the auditory nuances but listen clearly enough to extract
the main signal.

Over-ear headphones are ideal for listening while on the computer and
relatively stationary, and are ideal for careful listening to music or
close listening to specific passages for nuances.

Room speakers are mostly a fallback for me. There is a common belief
that room speakers are better than headphones for loudness, but most
of this factors through people using higher-than-ideal volumes on
their headphones. Broadly speaking, while neither bone conduction
headphones nor over-ear headphones strictly dominate room speakers,
the union of the two options (bone conduction and over-ear) with the
right option selected based on the situation, does largely dominate
room speakers.

### Lombard effect

The Lombard effect is a tendency to raise the volume of sound (whether
one's own speech or stuff one is listening to) when the environment is
louder. This plays when speaking or listening to music in noisy
environments, such as fast-moving trains or planes, cafes, or
malls. This effectively creates a ratchet that's a bit different from
the sequential ratchet alluded to earlier, but broadly similar:
everybody talks loudly because everybody else talks loudly, and the
volume goes up in general, further reducing intelligibility and
raising the need for volume.

## My specific practices

### Sound delivery format

I use bone conduction headphones exclusively for listening when on the
move, both when away from the computer and when on or near the
computer (so with eyes on the screen) but moving around significantly;
for instance, doing exercise in front of the computer. This gives me
the benefits of situational awareness while physically allowing me the
movement that wired headphones don't. This includes listening to
podcasts, watching TV shows or movies during exercise, re-listening to
previously watched TV shows or movies, and casual listening to music.

I use wired over-ear headphones (a Sony headset) for listening while
on the computer. This includes dedicates hands-on computer time, meal
time, as well as time during meal prep when seated and cutting or
tearing vegetables.

### Volume control

For music with over-ear headphones, I generally use a volume of 1 to 4
out of 16 on my Macbook Air, with the low end for highly produced pop
music and the higher end for single-instrument instrumentals.

For podcast and speech content with over-ear headphones, I generally
use a volume of 5 to 10 out of 16. The higher volume here reflects
both the greater minimum audible volume for extraction of speech
signals and the fact that speech is less heavily produced and has less
dynamic range compression.

With bone conduction headphones, I generally do an extra 2 or 3 points
out of 16 relative to over-ear headphones for the same material.

While the Macbook Air volume controls, as interpreted by over-ear and
bone conduction headphones, don't directly map to decibel levels, I'm
reasonably confident that I rarely exceed 50 dB, and generally stay
below 40 dB.

### Battling the volume ratchet effect

There is a temptation to raise volume when music gets to the powerful
parts. Instead of doing so, I generally try to hum along or use other
mechanisms to express my enthusiasm for that portion of the
music. Unlike raising volume, that can have a ratchet effect if not
promptly reversed, humming naturally stops once the exciting part
ends.

### Opting out of optional listening in noisy environments

For the most part, I avoid listening to audio in noisy environments,
particularly music, as the Lombard effect would result in too large a
volume setting. This means no listening to music in fast trains or
planes. Any auditory processing is either tied to interaction with my
environment or phone calls that I must take.

Historically, I used to ride the train (Bay Area Rapid Transit (BART))
to work regularly, and would plug headphones in and listen to
music. This was back in the day when BART trains got pretty noisy in
tunnels and the Transbay Tube and particularly during turns (BART has
since improved the sound profile). The music volume tended to be loud
due to the Lombard effect. This was likely not a good choice
health-wise.

### Duration interaction

The EEH discussed earlier covered the idea of how volume and duration
interact, with a 3 dB reduction requiring a doubling of the duration
to produce equivalent peripheral damage, and something loosely similar
applying to peripheral fatigue. The central fatigue picture is more
complicated and doesn't quite follow an EEH-like rule: in fact,
central fatigue *falls* as volume rises, at least initially.

For these reasons, rather than set any very definite auditory
thresholds, I mostly use my felt sense of already-experienced and
anticipated fatigue when deciding what to listen to, whether during
meals or during post-meal cleanup.

I do have soft and hard limits on passive optional cognitive
stimulation (POCS) based on the cognitive stimulation aspect of it, as
documented in the [document on best practices around exertion and
stimulation](best-practices-around-exertion-and-stimulation.md#passive-optional-cognitive-stimulation-pocs). This
includes a point with limits on the use of speakers, which is somewhat
irrelevant since I always use bone conduction headphones where
available. Importantly, however, these limits only limit POCS, and
don't cover other forms of listening such as watching TV shows or
movies or listening to music. I don't have hard limits for those and
instead rely on my felt sense of already-experienced and anticipated
fatigue, as mentioned above. The framework here is helpful mainly in
making it easier for me to notice the fatigue and identify it as
something valid to act upon in terms of the decision of what to listen
to.

### Correlated fatigue: light-based and head/neck/shoulder soreness

Eye and head fatigue from bright and concentrated light sources as
well as head/neck/shoulder soreness from exercise or posture both
increase my fatiguability from listening. This has a bunch of
mechanisms, including many of the peripheral and central fatigue
mechanisms as well as postural components.

Therefore, my goal is to factor in my fatigue of the above types when
deciding what to listen to and how much. Opting out of listening to
stuff during post-meal cleanup, or choosing stuff that is lighter in
auditory and cognitive terms, helps. A lot of this factoring in is
automatic in my "felt sense" discussed above, but in some cases I also
make an explicit decision not to listen to music, even though I feel
fine auditorily, because of head/neck/shoulder soreness that I know
means I am more fatiguable auditorily.
