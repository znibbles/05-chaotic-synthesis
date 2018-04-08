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


```
----------begin_max5_patcher----------
1313.3ocyYs0rhhCD9Y8WAE09zrtVj.3k8oY+cbporhPTyLgDJH3wyL047ae
CI.RPtoGcFeAkt6jz8WeKI7qoSr2xOgSss9WqWrlL4WSmLQQJmvjh2mXGgNE
PQoJwroji34gDD0dll6QTBCEgMY9B3ak7iQhfCD19MI3.gdkff49yr.t4O87
l6Hetbti02pFQhbBE3jMXFZKUM0fBdrrHBihEo0IRBUqNe62+G.z9rj7LQon
vBpZRh2hwZUw1dlk8NJGIUsx0OEcDGtAIDIjsYB74+kVfKE.StsSyv7ckjKo
W2Dnb19J7IlHwhBEzPpzC7DwvhUp2NsvKRBLJK0Yd6rQmzrcZWfLFQjJdSC2
tZ9uOc54eTOee5r6ZfROQI.viKLY8ybTxNLNbKJ3GCGnzmj8GqnCF.iJX.74
CFRikt0jrnvDzqezmOGtL2OC7Vnb2JsyBrvolaeGmcF.9ujZwPFNcuKc5KZ2
oCpMw6PA0AsVBDLziTxO0HDbtyMfJQ3zTzdboZIvmDFtUq+BLb9wh04XzREf
Ag0.JC3nLxtxoZaeI.42O.0FXbCVMC+pbwtvn2iYeLbOCGkc5tpeqELFq08J
s1ThLEkZWq9iTIwIMy12Qn3i3jTBmUa5lXihiqQ1rPPD56b0DsrJWTZMZRtU
jRvGIki2qhJJQBUBINkknM0SqVbtdPDODmvxHF4wkpzYz0UWeErBl+yBcdmm
es7tI13PhH2mrce.mp0sWrbludVsGf5CX6dJO3G3v5Ugr4wXFgEmfSwLARTX
NUrCw6PYTwllYWswuQxpIyVKQLwdeBIjyxUBCmSN4xkSlY4q.C+5FiRBFJtk
AKClj.YGLSkFYV5VTRtuqnKErjofyolrpFGEuSTvNlvXMPQAOtalIj8G5Yra
4RlQ8M2JNoxl.ZtajothM486LkCQoE4xlS+IDiDgDXAQ6Bja4nJFR0o9PZPB
mRMrWMmisvITF1GfekDJNnVn5ACRwIwkAQ1Ud4Pxdbpvjl.sO0jxEUGjjx1V
jVuQfihoRqvT.i8KWOGtdUOC58U8yrBXHlhdKumr0Wq5..pKYaMA7UMLcUkE
AtKaVWryNAcf.cTir65j81Yn11FJ6PbmwruHiGfCfQ9NZHR0zv0eXHBbMPD7
YGh96QAOPef5m04sYuiQP.mmc7I9.JU1NaTfzp0kGC4tBRqe5wn7SFXUUUxY
9PkkVo1OwRUJG.3LLd4bM30pm9xRiqrM.r7gjzs7YGeBdKfhs9JgEhOYkm.h
GWMbWfF1VcmKh62MfA6Evl8aDzHrA2Nf7jx4mRBpQq6cZG3YOrRtxCBQ5HIO
G0IcFyFltp.IutgHmVvfymufRXcswRkQjyucvIkmkDTB0EcSrLsG4FkkGcq5
zVuTEzmK2nbMWqNrZj5frRkE3AoCKGoNjuEkFBFQBi4Dlnvi.VrPUgVGt3ut
5kGjl6ORM2cHEWqpt9dmOjfwKEW2Vg4srQZ.OITe+FN+QsR3ExUoXfGhh4dE
AuOpP.3H0AuGnNzRhQ6Jw5GoRbMYwsWJof3Mcy0cbake4iZG7r66qDpuJIO3
c31Yg258UdCVM9mgnfguNVnOTeQgkO+DlGncyq98pqlcyNkZioYLUgI0emwg
6JdAnM10weDqiQQlKZ3.UazcsqpTc0++jpk6HTqE8oVEa+1S+iqpqg5spAX1
x3gpoFUHazR3lWX3HVXvexEFbugZ.b7AqWjK13iZjuFM9XFM9PFW9QL59CXz
7iWHW42m9+ztY7uO
-----------end_max5_patcher-----------
```