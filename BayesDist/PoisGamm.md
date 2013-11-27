Recall the Gamma Distribution, often used to model the expected number of occurrences of an event over an interval of time. For $\lambda$, the Gamma Distribution is:

<center> $\lambda \sim Gamma(s,r)$

$f(\lambda|s,r) \propto \lambda^{s-1}e^{-r\lambda}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $\lambda > 0$ <b>,</b> &nbsp;&nbsp; $s > 0$ <b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $r >0$ </center>

A gamma distribution can act as a prior to longitudinal data from a poisson distribution. In particular, a gamma can inherit a random sample of $n$ observations from the poisson. For the poisson distribution of the data $X_1,X_2,...X_n|\lambda$:

<center> $f(x_1,x_2,...x_n|\lambda) \propto \lambda^{\sum\limits_{i=1}^nx_i}e^{-n\lambda}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $x_i \in \{1,2,...n\}$ &nbsp;&nbsp; <b>and</b> &nbsp;&nbsp; $\lambda>0$</center>

The posterior distribution is then:

<center> $f(\lambda|x_1,x_2,...x_n) = f(x_1,x_2,...x_n|\lambda)f(\lambda$)

$f(x_1,x_2,...x_n|\lambda) \propto \lambda^{\sum\limits_{i=1}^nx_i}e^{-n\lambda}*\lambda^{s-1}e^{-r\lambda}$ =$\lambda^{(s-1)+\sum\limits_{i=1}^nx_i}e^{-(n+r)\lambda}$

&nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $\lambda > 0$ <b>,</b> &nbsp;&nbsp; $s > 0$ <b>,</b> &nbsp;&nbsp; $r>0$ <b>,</b> &nbsp;&nbsp; $x_i \in \{1,2,...n\}$<b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $\lambda >0$ 

$\propto \lambda|x_1,x_2,...,x_n \sim Gamma(s+\sum\limits_{i=1}^nx_i,r+n)$

</center>

Here, $s$ ranges from 200 to 300 and $r$ from 4 to 8. The poisson distribution takes a sum of $x_i$ values ranging from 20 to 300, as well as a value of $n$ ranging from 1 to 10. The average, $\frac{\sum\limits_{i=1}^nx_i}{n}$, is given in a table.
