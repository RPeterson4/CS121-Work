<img src="http://s.quickmeme.com/img/eb/ebe7556b5b0b0d91e11e8f00567394a6079d6396f8c86e969936509fe946ee9f.jpg" width="225" height="270" align="left" style="margin-right: 20px;">

The Gamma Distribution is often used to model the waiting time before the <i>s</i>th occurrence of an event. It can also model the expected number of occurrences of an event over an interval of time, similar to a Poisson Distribution. The Gamma Distribution depends on two parameters, $s$, which affects the <i><u>s</u></i>hape of the Gamma density, and $r$, which affects the <i><u>r</u></i>ate at which the Gamma decays. For $X$, the Gamma Distribution is:

<center> $X \sim Gamma(s,r)$</center>

whereby $X$ has the corresponding probability density function:

<center>$f(x|s,r) = \frac{r^2}{\Gamma (s)} x^{s-1} e^{-rx} \propto x^{s-1}e^{-rx}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $x > 0$ <b>,</b> &nbsp;&nbsp; $s > 0$ <b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $r >0$</center>

The mean and variance for $X$ can be calculated as:

<center>$E(X|s,r) = \frac{s}{r}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X|s,r) = \frac{s}{r^2}$  </center>

Notice that both $E(X|s,r)$ and $Var(X|s,r)$ are directly related to $s$ and inversely related to $r$. That is, as $s$ increases, both $E(X|s,r)$ and $Var(X|s,r)$ increase. But as $r$ increases, both $E(X|s,r)$ and $Var(X|s,r)$ decrease.

Here, the x-axis has been set from 0 to 100 while $s$ ranges from 200 to 300 and $r$ from 3 to 7.
