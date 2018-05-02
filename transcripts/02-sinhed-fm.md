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

```
----------begin_max5_patcher----------
2025.3oc0Zk0aiaCD9YmeEFF8oVGCQQcVTTf96XQgAsDsC2pqJQ4jrK59au7
PTlzVzVN9HdyCN1bFoYlONW736OMY1px2vMyl96S+xzIS99SSlHFhOvjteOY
VN5sjLTifsYIk443B5r4RZT7aTw34kosYHZY8zWQawqKqyUrPRELTt5qOGnF
qg9dFVLrZjh1bRQFlJjBnavJDM4ERwlk03DpTKgwgKblO0m+Av2g+OW1mS+6
cumxVp5E4vG7+d5I9GyGoEliaZPavGXgqHUkYn5o+BX.Ky0QMnT5z2qvREd1
rdc6DVsqcq1MVXo.f2hHH6uf4SCfBa20psC9.1NsbylL7.1WjUyivbFFqEBN
oEFF0aftdBCzytA1+1pQ4XJtdIt.sRJ+OxD+QbsmhxqxHz1zgvFXzk6VCfQK
bX+A7Yyr9KfcX.vw8F3geLCccM9eawEIuOjgFd4FZrXVEDeiMQDkV2R5cZqI
L6EQIkE5pmloEqXccYAsf4NIn7W0DT1HBrSIMUYn2Y3mflmUTh+1WiRjtnZi
0P9lXL.GK9PIDg6xL..hTCd5QNb7PnI0nhc41t7DFMULEotMOsF85OFvkAbY
.6GEu7NBdEEH72fwBPxQlXMv4plG0VDVBpl4JVeznLvUHJCDIrNfyNuh339D
LW4Xs0YkrWxPVhu8o34rBpLWwqQoC.DrHf8mefoE20cf8JjtGq.Ru2VcNRHn
fOR3QRYEdn3hdjgVSXUb2hyDBcge2vxvTg48rzN70mzFYmDInrjjx1Bg9yRz
5cxzHwhfC.zo+e8xjqoav05SFWtuSUMtASGx2wypui5Yj8dLe+AtFMi.CEAK
P.CQzpT4HSYX0gpGeEJzxTDEo5st29kOzJCfjWBomWV.prkRtAkQ1hWrAQJ9
A+WrHMD2NeFtvGFA.gy64NritHRbGmdhFkULA.Cykafhq+fTrEkQR+SNYod9
CodzvYz4H7saBA3FoIS+gko.EkVuzcYXDx8ViP.2QAQ9NFb4aiKC1h3zT8T2
iNiwrg2Zy12Ar.v8wCtV1N+scNFu7aWsZMf6RslHOQol.Oi1zejqz.bNiRMx
VwuzBMAGoVc3t04354ceK1X04I7t36vJpn7czV+yCfuSA9UFJbPypavEC4PA
sBVMjME7156+1XAM33.MefbSPfiFwXuNoSjVZ1YqI7nf5FyUCxViTUk1vlYl
yQesT7hB6SLyz+x8xUWi2RTOue+nnZlQQYVTasDCdKRsQX7WCaQi0Er0ppVp
gXl6I0KTgCAdhZzPGQ0pftVQzaJbxLbJgxQuUaRJyj51WXA5wy09.n+.q1jU
l7O3TMWI1zZEtfTHZgQaMy8jSwqQsYzkCuLLS56szMShCtXvIy1TSRKK3Jgw
jCeXk3XoQ51+OciQvQApZfGl41x.RKDaXFYayJTMetqKtR00Aq9UYlIo9mKC
ul1QthTTrGJRKqrSjkb6ki7rqJYDyO16VPoYYagj5RVnLcYCZqIZSQYYcw1l
u92PEDV9BLkHmBbc5IJys7RSRcYVlg8Jorc.JoL29D7qjT5KxRKZy2L1IUJm
nY8yxojM3Fp4XTzlFyQNHsAan1Ucg0Ko37pLlUXxfwNZqGCqmEzX7ikMzLiX
CqNGdpCqKlmASA5rLTA2Sr4FVrPa0XstgZgrJ4SCEq2O5fLi11OiIppDFMhd
MwJQ4pocaZtEnBdcQJmiiThtM5.JuGGfp4UBSUsfPtWWDBdbDJRlV0U1PFq8
L+GEP52rErEcWC1j.jannQD2H2GG.hTLEZCi7zIXuz6GFAMZEXW1+yM9D5Ew
wSPGFu+oB74gsLIN00B3FOdr8x.OvwAO.HRdbYhkvAgi.8btadl1.uneNbL4
mUvCoi4uZAW8+DRJBBj+KD93jTL48j9Sy15FF8gb9lecc.AiAggf3QGa6dmZ
x6ETSost6BePhtOg6KPdQC5NOPviSzcCovVagAOHP6n7acAxs3J9wAZY0jrt
7seNpI0409X1rjMr06AoYot7oAQWTuR615oLRgs8bPHcN8gQ0lx15Dk6i5TS
LUjTbCkTzuQbeouD+tCS4DyomqNDNRcfePTtF7kSRqJIEzF0IyKZFHnaKtcj
ac4d.cYcpbOZc9TMF911L0hlAtIZVvH0rX6JlymphAht2Pl+H0rNK3lnCvyH
53VoCtmQVhakN.FapJwwJeyzBuywY8VkwTYhmTK7tkPgyY3YdyPhQpCgVAht
Akiblmjo9shPRdKptuIiCoNvNsNhi0btbAfpK9f7xwneVji5Ncqcxltx137h
jGDdf0S1z+HmEr5jm4GCT5R9E9jrpkh28sl8OHzsnrVb45COsycu9rxhM1wO
CVadorlNRdUnqy.zxYvGm1ygZM3YPGIbABFjJofP4sR1c1mZthZL0xXpuASu
mz8.+Ptc3ukhRF7xWL6hu5+ZtIvvtS8U84HtDmBVLaPUZQ6GX2YWGDPaz8wo
Kyb.xMV4DMB435bEDT3HDD7JHGnLK6X.tNd1u6YOvBf5dsFJWtWfqbS1L9km
7FfKOTKyeE2ckEC38gG2em6tHi5jyRF7z2QH7tHXvgB18lKXP7wlGYSH.Uhd
G4UXQsMSl+RehaueA61iJewlqB0uZ+lKF31ZmNCO0BtHI65bmhHcGiIdkjCX
DxAbgxA3ORfy8REDXjBxzhj0d16ZUwkwdWmp8tJUGdMpreEp1+5Swj7+8z+C
T0vx0
-----------end_max5_patcher-----------
```