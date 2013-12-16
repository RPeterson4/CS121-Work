<img src="http://www.pepijnvanerp.nl/wordpress/wp-content/uploads/2012/05/xkcd-p-value-xs.png" width="200" height="260" align="left" style="margin-right: 20px;">

Recall the Poisson Distribution, used to model the number of occurrences of an event, $X$, over an interval of time, whereby $\lambda$ is the expected number of occurrences over the interval. Given $\lambda$, let $X_1, X_2,...,X_n$ be a random sample from $Pois(\lambda)$. For example, the $X_i$ are the number of children born each week for $n$ different weeks and $\lambda$ is the weekly birth rate. Let $x=(x_1,x_2,...,x_n)$ be the observed values of $(X_1,X_2,...,X_n)$. Given $\lambda$, the Poisson Distribution for $X_1,X_2,...,X_n$ is:

<center>$X_i|\lambda \sim Pois(\lambda)$</center>

whereby $X_i|\lambda$ has the corresponding probability mass function:

<center> $f(x_1,x_2,...x_n|\lambda) \propto \lambda^{\sum\limits_{i=1}^nx_i}e^{-n\lambda}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $x_i \in \{1,2,...n\}$ &nbsp;&nbsp; <b>and</b> &nbsp;&nbsp; $\lambda>0$</center>

Above is the frequentist data model of $\lambda$. Notice that $\sum\limits_{i=1}^nx_i$ is the sum of the $X_i$ values. For Bayesian statisticians, though, the data model is only half the equation. Often we have some prior belief about the distribution of $\lambda$, which can be represented by the following Gamma Distribution:

<center> $\lambda \sim Gamma(s,r)$</center>

whereby $\lambda$ has the corresponding probability density function:

<center>$f(\lambda|s,r) \propto \lambda^{s-1}e^{-r\lambda}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $\lambda > 0$ <b>,</b> &nbsp;&nbsp; $s > 0$ <b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $r >0$ </center>

Once we have observed some random sample of $X_i$, we can add this sample to our prior beliefs about $\lambda$. Both the Poisson data model and the Gamma prior can then be combined into a posterior distribution of $\lambda$, categorized as a conjugate Gamma posterior. By multiplying the Poisson data model and the Gamma prior together, we can derive the probability density function of the Gamma posterior $\lambda|X_i$:

<img src="http://web.ics.purdue.edu/~jltobias/BayesClass/peanuts.jpg" style="float:right" width="325" height="225">

<center> $f(\lambda|x_1,x_2,...x_n) = f(x_1,x_2,...x_n|\lambda)*f(\lambda$)

$f(x_1,x_2,...x_n|\lambda) \propto \lambda^{\sum\limits_{i=1}^nx_i}e^{-n\lambda}*\lambda^{s-1}e^{-r\lambda}$ =$\lambda^{(s-1)+\sum\limits_{i=1}^nx_i}e^{-(n+r)\lambda}$

&nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $\lambda > 0$ <b>,</b> &nbsp;&nbsp; $s > 0$ <b>,</b> &nbsp;&nbsp; $r>0$ <b>,</b> &nbsp;&nbsp; $x_i \in \{1,2,...n\}$<b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $\lambda >0$</center>

The Gamma Posterior Distribution of $\lambda|X_i$ is then:

<center>$\lambda|x_1,x_2,...,x_n \sim Gamma(s+\sum\limits_{i=1}^nx_i,r+n)$</center>

The mean and variance for the Gamma Posterior of $\lambda|X_i$ can be calculated as:

<center>$E(\lambda|X_i)=\frac{s+\sum\limits_{i=1}^nx_i}{r+n}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(\lambda|X_i)=\frac{s+\sum\limits_{i=1}^nx_i}{(r+n)^2}$</center>

Here, $s$ ranges from 200 to 300 and $r$ from 4 to 8. The poisson distribution takes a sum of $x_i$ values ranging from 20 to 300, as well as a value of $n$ trials ranging from 1 to 10. The layout is highly similar to the Beta Binomial. The Gamma prior is already on the plot, highlighted in red. The frequentist estimate of $\lambda$, $\frac{\sum\limits_{i=1}^nx_i}{n}$, can be added as a vertical line to the plot via the coordinating checkbox, highlighted in blue. The Gamma posterior can be added to the plot via a checkbox as well, highlighted in purple. The frequentist estimate of $\lambda$ is provided in a table, as are both the Gamma prior and Gamma posterior means and variances. 

After the Gamma posterior has been plotted, the table below the plot calculates the 95% confidence interval for $\lambda$ (i.e., there is a 95% chance that $\lambda$ falls within the range calculated). Hypothesis tests are also available for calculating regions beneath the curve of the posterior. Users can change the minimum and maximum values of the region of integration, each set from 20 to 120. The region is then highlighted in gray beneath the posterior, with its value provided in a table.
