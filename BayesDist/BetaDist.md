<img src="http://media.cagle.com/6/2008/02/27/48139_600.jpg" width="225" height="305" align="left">

The Beta Distribution is used to model proportions and probabilities, and as such is defined from 0 to 1. For $X$, a proportion or probability, the Beta Distribution is:

<center> $X \sim Beta(a,b)$</center>

whereby $X$ has the corresponding probability density function:

<center>$f(x|a,b)= cx^{a-1} (1-x)^{b-1}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $0 \leq x \leq 1$ </center>

$c$ is a normalizing constant that ensures that the probability density function integrates to 1 (i.e., $\int_0^1 f(x|a,b)dx =1$). $c$ is equivalent to:

<center> $c = \frac{1}{\int_0^1x^{a-1}(1-x)^{b-1}dx}$</center>

The mean and variance for $X$ can be calculated as:

<center> $E(X)= \frac{a}{a+b}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X)=\frac{ab}{(a+b)^2(a+b+1)}$</center>

Notice that $E(X)$ is directly related to $a$ and inversely related to $b$. That is, as $a$ increases, $E(X)$ increases. But as $b$ increases, $E(X)$ decreases.

Here, $a$ and $b$ each range from 0 to 10.
