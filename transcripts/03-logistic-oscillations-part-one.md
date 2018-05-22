## The Logistic Map

Do you know this plot? This is the _logistic map_, it is used to model the development (reproduction and starvation, that is) of populations in biological systems. But it is most significantly known for its archetypal display of how chaotic behaviour can arise from totally deterministic, but non-linear dynamic equations.

![Logistic Map](https://upload.wikimedia.org/wikipedia/commons/5/50/Logistic_Bifurcation_map_High_Resolution.png)
[https://upload.wikimedia.org/wikipedia/commons/5/50/Logistic_Bifurcation_map_High_Resolution.png](https://upload.wikimedia.org/wikipedia/commons/5/50/Logistic_Bifurcation_map_High_Resolution.png)

The logistic map is written $x_{n+1} = rx_{n}(1-x_{n})$, the two feedforward terms denoting reproduction and starvation, cancelling each other and preventing overflow, and thus clipping. The significant parameter is $r$, which is plotted from 2.4 to 4.0 in the previous plot. Depending on it, the output sequence tends to either converge towards one value, as when $r$ is below 3, or oscillate between two or more values, as between 3 and 3.567, or display chaotic behaviour, above that.

What is very characteristic of this function is that even after the onset of chaos, there are intermittent sections exhibiting oscillating attractors. It is exactly this behaviour which makes it very interesting for sound synthesis.

## Logistic `[gen~]`

We implement the logistic map in a `[gen~]` patcher, again, because it allows us to implement a feedforward loop easily. Let's start with that. We use a _named_ `[history]` object this time, name it x and give it an initial value of 0.5. As denoted in the equation, we multiply that by its complement, that is, one minus that value. Afterwards, we multiply by the parameter $r$, and clip to protect our ears. 

We're going to verify that this is correct by plotting that bifurcation diagram from above first. The easiest way to do it is to `jit.poke~` it into a Jitter matrix as we did in the Jitter-to-sound series. We're going to send a `[line]` into our `[gen~]` patcher using values in the interesting range between 2 and 4, and a very long ramp time. Seems as if our setup works correctly!

## Making It Audible

Now let's take this patch and adapt it for audio synthesis. For one, the generated output by definition is somewhere between 0 and 1. In an audio signal, this would introduce a DC offset, which is not what we want. That part is easy: We scale and clip accordingly.

The second problem we have is the generated frequency: Because `[history]` is a one-sample delay, the output will oscillate as a rectangle at Nyquist frequency, which is why we will only hear aliasing artifacts at first. The simplest approach for our purposes is to _downsample_ to get output at a desired frequency. For that we will use the `[latch]` gen object, which will output the first input if the second input is non-zero, otherwise output the last known value - a very simple sample and hold logic.

We make a `[phasor]` followed by a `[delta]` differentiator as the control signal. That gives us the difference between consecutive phasor samples. When that value turns negative, it means a new phasor cycle has begun, so we take a logic operator and output 1 if that is the case, otherwise 0. That is our very simple downsampler, with the advantage that we can determine a frequency rather than a downsample factor (as with the `[downsamp~]` object).

Technically, if we put that into an upsampling `[poly~]` patch, we should get more clean results, but I'll leave that to you to try out.

```
----------begin_max5_patcher----------
3142.3oc6cszjihiD9rqeErD6oIppBIj30Fyk89tm1icrgCrMkK5ACrfbUU2
Sz8u8UfDXIdHD1FapI5CsKaI.k5KUlJUpOT+mOrxbS5GgElF+CiuXrZ0e9vp
UUEUVvJ9uWYdH3iswAEUWlYR36oa9p4irpHgePpJNyXSzKGy2FPhRSV+VTww
f3nuW8q5qM43gnj3PR0yAbpvzij1klEP19ZTx904gaILoy1w8YviFPmpOwdk
+wx5Yfw+keOQ6pDDpv8DxqtMKHeKNrpbSwGcXNuGx6hqLeIJN7sv7hR4kVE7
Qd4AYYBEuR3VJwkulV8fberonnDVQnlhxConA+9saJMHm1AIzd2wbl78gmi4
oGS5tv7jiQUhBqve7PsHIfI9UfA.W9GWLr7OXOvIPgpL2Gmt8OB2IftqLSyB
ShRxxCKBSHLcjX06BeI3XLY8KoIjhnuWIePJT2W8uDrMbvaNI3.qy8OyiBhq
6dl6yi1klTJDRPcYw0M2WLf1U8MawNS0UjDj0yMSU6TXYfJKncxiEaBxK0Da
XCHrpqjjlFKWUy8EG9BgWcVTRRKTjjlMbk4Q6eUw8tIkV4AUO6pZJVeLgU6Z
pAHYcQvaxnMIHNlaQJ+3+HHI5P.IjDwTAVflJCSBnczWK1lmFGK0eY07VO0r
iNHda36Q6HuV0PhCFnWdTV8fHyFs7tn8gED4xHA6KjKoiAJsnia3FoqIgGxh
o8B4KPxmknEonuKoxa4C6PXQQv9vF6MQGYaiCCxEqQzLQveDDTZnUZ8UZYXf
ba6PpqOOK4JD76AEaut99P3pmNqAGnkZaMK9HEbMBsD6aLQf7sLtQmoozyTP
4TW3Od3g5u73Lf9VTGXkiUA.MTAdnJeD9Ue5LmJ.tR1EonkzTA3d2weoYvkg
+3njPpws9XOzpBLvnwAezffukVfODXqnozD8GYz+i2cMPd5wjc+TCEfuGKDH
WG1r9y3neK6Jj2xFqnozTAfsUpAJh1mPiT3ShNvC4bqzAP.55oCvKec.UHlh
F.T4FBogaH3EpAfd1JZJc0.vOAZfsAwg+jNafA7YCGL8uZMwPseILagZVUKJ
wBoRk3HTwvKa3rcaYgUII5NwAZxZLokOgZhX9dpLsd1.WpGqzmSv759qLq8+
cUTlHmO2JSpuQpQoF5OWrkf9yFLt5CNOpOeAk2.hgt5Nukut6qQjmydOJYW5
65rRRHlOyBaPsCSm4feF5gPP+yYtrQBoFCYqckk.I0sntKrzUmPquMFHk3+g
.RdzGFYo+Q3NCnw1WCxK85U9uonSXN.g7I0lESGM0UPrJIQSsjuRkDE2Vyvs
tqD5laDQR2uONbB5JDyuRymyPLfbcgmhFRSEgZuXQIDYzOKHmNZhDlulkiNw
r8cWlC5+Qkl7TZXvSPA4BO8oZSIq4YVHt5C6qPNzcZH0VRaBR1ubCfnZ9Ipi
wexcOZY.zOXBjkGKDLMhl.MiQSf.NpjCcWIFXB4i6lqC2bjPZ1.MMV0Uc3d0
eNCt.qWUEPQKoaHCS0F51mO5OnKVxVe7GZwFZ5bAt39WAjzKcMuPd9PbtDSC
3YaZXcCLMdINkhL5nZfrzGifBK93LSQzXYp1kugr9JZJMQe6QCmtq8wXQI7R
ZNM7t1qRmBqQGnPIsXrjhiBI0U.tAZTU1g4F+c3Dz0NrbzAmyDxx007XOgWh
tFsj2Sn8gISY+H3dd7lwLwV6jimI1KJW3WThXaKlmnUhLVOH8RFhhIst89nZ
x.zMYXJmLNsSFh5IRzOoEETnw1yBCiEZsCfEgscqkEsxLbWDoTMtY+1zXlP+
EpaE+GE9.19l5i8JZvfEcXwxnLYQS1rnfQK5wpkQX1xnraYTFtLBKWFmoKix
1EMX7hNrdYJLeQA6WFkALpYAiZlvnlMLJYDyPrhoelwLrulwYHS+rjosSk1y
Mzo9wlinMwYhxLdBZ.aeEC4zWsi+gb9yYegMKi18tKbp1zeMlhcnoYklpUd5
1YFZ+MkPp0UBRArIR8e1dbH0+yNjVEprQtRfEbo.acRjcXCVszYvp2uFrpwf
UHzW+Aqte1gz+1SysWU9RV8XdB7zYfpymcT80nBRZ92LZmimYaRKDKuy15ft
1e1QWp7dQCZAZip7Ub5pCrhMOKLSNX8RVRNRjUURa40oFPKROlusVgxCUwna
GfFQIcsSMKy4KM8kxq8rT0mq7YOA4yo2qMMeGaYxfEqf6pVvg2TA2YhBN7FO
hvcBxm+cXDq2DkuaM94OA4yZIYQMEAuequCQ6xRiRHbeotNUAywySOamkD+A
ixkrqBgd9LsPETumpQHCpmdai53l+TRU6CyDRsZGrB1t+OjBFIagnLytSVH.
ZJEv4THrzTH7mSgvWWjnqz10Z69HZtCKYVyhjoqhqisda6bHDVZBCYItmu33
V+BXWS1Ia9ulogB0Vbi1sv1y3.RzBvxD4nKRfmSovSWo.LmRg+BvKEV2YMp0
byiTfmhBANWRg8TjBqYRJzUHP25YMzFcfCKYvYQxb0MxmYbHrttTPyo0r1gb
3tHB7ALsAJb4sdWhMK2ttcqYaa45.BIOZyQBKZZAYbZu736iS2DDy23qlMiU
0aR9oMU6gSxa0mLvTmy6hsoGNDlP5bfW76OYTPBxI8d5V.m5oagEK8ULJC4f
ayrXIxh31ygawYzwnx1lv7IH9VCK9rLaBc5m1SRRecF3zfSSp3yzE14k4ZT+
78q2MtXPt50eRg6MW69fS3TWJ5IkEXzvnUy02OAGtzQG8eLuHPFHcFx.GcHi
0.b3QJos9ChBsHnye0OuWXo511ZXt1LYd17qSHlU+5Dh4WmPLJm0W1GXb59H
ZLSaMNDjoya+BmLpUlt.9GmCqHAiPHUGfvlLZ06KmjHoXjNJLlGVkpBE2k9d
RQ.U4EZd0gBTc7Hr+XCFELfl2SJ196xu+MWIVx5wewXvCum9S3sw3NyB4cgw
jf4Cj.PEGsRhfj2RFjxdMnHM275e.vvOpqX1S3wQoE8gbTThDwDFjyWmGFwd
knPfQwHmE8AAUYG75OPhyzPWrvReTgQK5WLhpyTCCfArMqWupfEh4+1CMJXA
WxfUerC9J4CmiSLmS1iiSfkLN8aylQmJ58p+QDv8dFtNz18J49VGp5p+6u+e
UGDoj1seZNkCaQm1q14C1nTncH5yt3PngnF600isB5vNg2D16KR0llqWoUvx
PHLaH03KKAO+KeMKHIL952QwfZWIMqByB5oXk5HyQeWLKylZ6lNHYOOqdtxu
KysySJvEBbqxSJB6.pxXpG1xEZ240SzLKOMKMuI4nOi7uU7IS6sw6luSzPso
xBbQrOmnYjzBPc23Y3rR1MmEwNOqKQ.pAs4QJfSb+uuuDwDu.3ivnz46Rns6
by9DuIPiq4xKf6BfJYNSfTov6L4obu0TTRWAyYZyk1PIlyX22iidK748AQm1
r82BNQ4kt01KSEjiCydzsh2Cd5nkt5bOr28h2cr8h+QwuU9uWhSCHkeINpfn
lbGPI5C0vaHELH5sf3igouzcy5O83iSS1OL1IcoEuRimSyqstmC5otCT0QYc
OIFroT8AUpemdqMJIhTta37PREFyIbQGoWTS3u3GDG8cVC4jNOktP5.wOS1z
gOPP6qDef5b1F064ZTumoQyDWhDNyhzw.ENJdxYLDTEdZg0fwPWV+sHiJX4G
OrKO3898.g6iqThL7XxccDimPX.ef0.biqYSsGiuTsHkRGNTcFvR322ErcJd
jAi4Ql+e6KX65O6sKCVdzAr19mozFwAf2hfPfEaSyBUq8xohBWzdhkuBgdj1
p1Fei7W6EPye5CcbF9+Hy1FDuca5wjpmKRnKW8bjy1.CAZGXDGG5R1do0FnS
zPsBQqC1eUaYKo2Do1KGAydkgXawX86QjzuP7CINVVrq9U29A3h5GHrF8CrP
D+yKhgc6WYYcQMsM5l0Ic0YXAXVFQpcSCu1ChrtYChjSTkZC9Kqgr0AMwcZI
lKsVbysrQZwI2V7wsKWbGlGts4faE+aYtca4F8TDMG2Ek9epXN55+cXxQlm4
Z9sJCEa1+RTbbSplEWBS8LdlrZqSWrTZos7wPnWYxnQPjqkS02new1VXfG+d
f02D1F6CrJuTrikK1t5adVHajLGDY2l0o1B.8Ys.v2CfYeiVDrEyg6Mm58jU
7lq+HIcedvtnP1jV.oUq7HejTNs11y1YdfBnQ02S0Zq+wC+e.FgTZxB
-----------end_max5_patcher-----------
```