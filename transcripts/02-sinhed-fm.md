## Unorthodoxically Modulated Frequency

One other way to abuse FM synthesis is to take a rather exotic modulator function. In this example we will take a _hyperbolic sine_ and see what comes out.

Hyperbolic functions, in contrast to trigonometric functions, are defined on a hyperbola rather than on a circle. The hyperbolic sine, in particular, is a function that quickly approaches (negative) infinity for both positive and negative arguments. It's not periodic, at least not in the real domain.

## A Closer Look at `sinh`

So what if we take a normal FM and exchange the sine modulator for a hyperbolic sine? Let's find out.

Let's look at how those functions look plotted, first. We'll first take a simple phasor and plot that. I've adjusted the buffer size of the scope so we can see two periods. Next we take a `[cycle]` object and see the well-known cosine coming out of the second outlet. Okay, just for demonstration purposes, I'll scale the phasor up to a range from -5 to 5, and pipe that into a `[sinh]`. And that's what it looks like. Actually it's approaching positive and negative infinity here, but naturally in a DSP environment that's clipped somewhere.

## Adding a Chaotic Touch

Now what would happen if we used this hyperbolic sine to modulate a cosine oscillator? We'll try that out scaling from 100 to 1000 here, and using that as a `[cycle]`'s frequency. Okay, rather than the soft vibrato we'd get from another cosine oscillator modulating it, we get a rather fierce sweep. 

Alright, but where is the indeterminacy? Let's another few parameters to this. First, we can make the modulation frequency adjustable from outside. Secondly, the same for the modulation amplitude. We do that by simply adding a multiplication after the `[phasor]` and adding another inlet.

Now we're getting that interesting FM sound.

But there's another distinction we can make: Because we're multiplying the `[phasor]`'s output by positive values, we're taking only the positive half wave of the `[sinh]`. We can see that in the spectrum, too, because we have a DC offset here which we'd have to remove. We could, however, optionally scale the `[phasor]`'s output from -1 to 1 so we also get the negative half wave. Let's try that out too.

Last, we can add the typical FM carrier frequency parameter.

Now, the FM theory behind this phenomenon is beyond the scope of this tutorial. Understanding plain FM synthesis alone involves difficult math, such as modelling partials' amplitudes as Bessel functions, etc. But it's not necessary: We're only interested in rich timbres, and we've got a lot of them at our disposal here.