Do you know this plot? This is the _logistic map_, it is used to model the development (reproduction and starvation, that is) of populations in biological systems. But it is most significantly known for its archetypal display of how chaotic behaviour can arise from totally deterministic, but non-linear dynamic equations.

The logistic map is written $x_{n+1} = rx_{n}(1-x_{n})$, the two feedforward terms denoting reproduction and starvation, cancelling each other and preventing overflow, and thus clipping. The significant parameter is $r$, which is plotted from 2.4 to 4.0 in the previous plot. Depending on it, the output sequence tends to either converge towards one value, as when $r$ is below 3, or oscillate between two or more values, as between 3 and 3.567, or display chaotic behaviour, above that.

What is very characteristic of this function is that even after the onset of chaos, there are intermittent sections exhibiting oscillating attractors. It is exactly this behaviour which makes it very interesting for sound synthesis.

## Logistic `[gen~]`

We implement the logistic map in a `[gen~]` patcher, again, because it allows us to implement a feedforward loop easily. Let's start with that. We use a _named_ `[history]` object this time, name it x and give it an initial value of 0.5. As denoted in the equation, we multiply that by its complement, that is, one minus that value. Afterwards, we multiply by the parameter $r$, and clip to protect our ears. 

We're going to verify that this is correct by plotting that bifurcation diagram from above first. The easiest way to do it is to `jit.poke~` it into a Jitter matrix as we did in the Jitter-to-sound series. We're going to send a `[line]` into our `[gen~]` patcher using values in the interesting range between 2 and 4, and a very long ramp time. Seems as if our setup works correctly!

...
