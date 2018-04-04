## Why chaotic?

We start our series on unpredictable, semi-stable oscillators and similar stuff with a little experiment. We will try to use the concept of FM (frequency modulation) synthesis to come up with a chaotic sound texture generator. Chaotic, by the way, is meant to be understood in terms of chaos theory, i.e. systems governed by simple rules that exhibit complex behaviour with intermittent harmonic sections.

## Setup

We start by pulling in `[gen~]` and making a simple cosine oscillator, `[cycle]`. To make it useful for frequency (or rather, phase) modulation, we set it to be driven by a phase input. We connect a `[phasor]` and set a pitch from outside.

In ordinary FM, we would now take a second `[cycle]` to modulate the frequency of the first one by adding an offset to the carrier frequency, let's try that out quickly.

## Adding feedback

In feedbacked FM, however, we use the output of the phase-driven oscillator to modulate *itself*, i.e. its *own* frequency. To not make this patch blow up, we have to add a `[delay]` here and specify the `feedback` attribute to allow loops in the patcher, otherwise we would end up in an infinite loop. We add a delay of 100 samples, which is a totally arbitrary value.

Being good audio synthesis citizens, we first limit our feedback to the range between 0. and 1. Let's therefore add a feedback `[param]` and a dial to access it from outside.

## Going crazy

Not really much is happening here. Now let's put away politeness and drive this feedback loop with factors of up to 1000. At almost every carrier frequency, there is a point at which the output gets a chaotic touch, while still retaining a clear fundamental frequency.

Then even more so, followed by an intermittent section of periodicity again, then again superseded by chaos.

So with a very simple setup, we have a very rich set of timbres at hand to play around with.

## Shameless plug

I've written a Max4Live device that does exactly this:

[![PRRPLEXOR image](https://s3.eu-central-1.amazonaws.com/julianrubisch-website/images/software/prrplexor.png)](http://maxforlive.com/library/device/3613/prrplexor)

