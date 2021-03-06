<img src="http://i.stack.imgur.com/hN4lW.png" width="225" height="350" align="left" style="margin-right: 20px;">

Recall the Binomial Distribution, used to model the number of times an event occurs, $X$, over $n$ trials. Given $p$, some probability of success, the Binomial Distribution for $X$ is:

<center> $X|p \sim Binom(n,p)$</center>

whereby $X|p$ has the corresponding probability mass function:

<center>$f(x|n,p) = {n \choose x} p^x (1-p)^{n-x}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> for </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n \in \{1,2,...\}$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $0 \leq p \leq 1$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x \in \{0,1,2...n\}$ </center>

Above is the data model, the focus of frequentist statistics. In Bayesian statistics, though, the data model is only half the equation. Often we have some prior belief about the distribution of $p$, which can be represented by the following Beta Distribution:

<center> $p \sim Beta(a,b)$ </center>

whereby $p$ has the corresponding probability density function:

<center>$f(p|a,b)= cp^{a-1}(1-p)^{b-1}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $0 \leq p \leq 1$</center>

Once we have observed some number of trials, $n$, we can add these observations to our prior beliefs about $p$. Both the Binomial data model and the Beta prior can then be combined into a posterior distribution of $p$. By multiplying the Binomial data model and the Beta prior together, we can derive the Beta posterior $p|X$:

<center> $f(p|x) \propto f(X|p)*f(p)$</center>

<br>
As ${n \choose x}$ for the Binomial Distribution is a constant, we can exclude it from our multiplication of the two probability functions. The probability density function of the Beta posterior $p|X$ is then derived as:

<center>$f(p|x) \propto p^x (1-p)^{n-x} * p^{a-1}(1-p)^{b-1} = p^{x+a-1}(1-p)^{n-x+b-1}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> for </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n \in \{1,2,...\}$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $0 \leq p \leq 1$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x \in \{0,1,2...n\}$</center>

<img src="http://i1.cpcache.com/product_zoom/683200970/feeling_marginally_significant_mug.jpg?height=460&width=460&padToSquare=true" width="275" height="250" align="right">

The Beta Posterior Distribution of $p|X$ is then:

<center>$p|X = x \sim Beta(a+x, n-x+b)$</center>

Note that the prior and posterior are both part of the same family, namely the Beta Distribution. In Bayesian terminology, a prior and a posterior of the same family are called conjugate distributions.

The mean and variance for the Beta Posterior $p|X$ can be calculated as:

<center>$E(p|X = x)=\frac{a+x}{a+b+n}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(p|X = x) = \frac{(a+x)(n-x+b)}{(a+b+n)^2(a+b+n+1)}$
</center>

Here, $a$, $b$, $n$, and $x$ each range from 0 to 10. The Beta prior is already on the plot, highlighted in red. The frequentist estimate of $p$ can be added as a vertical line to the plot via the coordinating checkbox, highlighted in blue. The Beta posterior can be added to the plot via a checkbox as well, highlighted in purple (what do you get when you mix red with blue???). The frequentist estimate of $p$ is provided in a table, as are both the Beta prior and Beta posterior means and variances. 

After the Beta posterior has been plotted, the table below the plot calculates the 95% credible interval for $p$ (i.e., there is a 95% chance that $p$ falls within the range calculated). Hypothesis tests are also available for calculating regions beneath the curve of the posterior. Users can change the minimum and maximum values of the region of integration, each set from 0 to 1. The region is then highlighted in gray beneath the posterior, with its value provided in a table.
