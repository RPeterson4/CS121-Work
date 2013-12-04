<img src="http://www.clker.com/cliparts/a/7/n/G/p/e/goldfish.svg" width="250" height="125" align="left" style="margin-right: 20px;">

The Poisson Distribution is often used for modeling the occurrences of an event over time whereby:

<center> $X$ = the number of occurrences over an interval of time

$\lambda$ = the expected number of occurrences over the interval </center>

$X$ is conditioned on $\lambda$ because we have some expectation of the number of occurrences of an event ($\lambda$) before those occurrences actually happen ($X$).

The Poisson Distribution can then be modeled as:

$X \sim Pois(\lambda)$

<center> $f(x|\lambda) = \frac{e^{\lambda}\lambda^x}{x!}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $x=0,1,2...$ &nbsp;&nbsp; <b>and</b> &nbsp;&nbsp; $\lambda>0$</center>

whereby: 

<center> $E(X) = Var(X) = \lambda$ </center>

Notice that because $Var(X) = \lambda$, the distribution becomes more spread out as $\lambda$ increases. This is because the more occurrences we expect, the wider our range becomes of possible occurrences. 

As occurrences either happen or they don't, $X$ is a discrete random variable, making for a probability mass function.

Here, the domain has been set from 0 to 20 while $\lambda$ ranges from 0 to 10:
