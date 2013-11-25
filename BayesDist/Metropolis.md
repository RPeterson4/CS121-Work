In hierarchical Bayesian modeling, the high number of priors often makes deriving the posterior density difficult. A possible solution is a Markov chain Monte Carlo (MCMC) simulation. For $Y$, a set of complicated prior parameters, and $X=x$, an observed set of data, MCMC involves taking a chain of samples ($y_1,y_2,...,y_n$) from a distribution $\neq f(y|x)$, whereby the samples are dependent upon one another (i.e., $y_{i+1}$ depends on $y_i$). A couple criteria allow this chain to approximate the posterior $f(y|x)$, also known as the target density:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; the chain can only visit a limited range of $y$ values

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; The time spent at each $y$ value must be proportional to $f(y|x)$

The chain of $y$ values then takes on the shape of a random sample from $f(y|x)$. Once this chain is large enough, we can approximate the posterior density of $f(y|x)$.

Consider the following example:

Ross is a novice economist trying to predict the price of lollipops. Let $P$ be the price of lollipops whereby $P=p$ and the forecasted price of lollipops is a function of $p$ such that:

<center> $P \sim Gamma (7.5, .15)$ 

$f(p|7.5,.15) \propto y^{6.5}e^{-.15y}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>for</b> $y > 0$

</center>

$p > 0$ because the price of lollipops can't be negative nor zero (sorry, no free lollipops).

Ross spends a certain number of days on each price of lollipops that he predicts (e.g., for six days he might predict a price of 35 cents). He intends for this number of days to be proportional to the forecasted price of lollipops. How can a Metropolis Algorithm simulate Ross's predictions?

Let Ross start at $P_1 = 50$:

For each day, we propose a new forecasted price of lollipops to Ross from some symmetric distribution, $N(\mu,\sigma)$:

<i>set.seed(2000)</i>

<i> p1 = 50 </i>

<i>f1 = rnorm(1,mean=p1,sd=10)</i>

Ross then compares the new price to the price he is currently predicting:

<i>paccept = min(1,dgamma(f1,s=7.5,r=.15)/dgamma(p1,s=7.5,r=.15))</i>

If the new price > current price, Ross will always switch to the new price. This is reflected in the command <i>min (1...)</i>. If the new price > current price, <i>min(1...)</i> will always select 1, a probability of 100%.

If the new price < current price, Ross will switch based on the probability generated from $\frac{new \ price}{current \ price}$: simulated by: <i> dgamma(f1,s=7.5,r=.15)/dgamma(p1,s=7.5,r=.15) </i>. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; Note that Ross's decision to accept the new price depends on his current price

Ross's potential acceptance of the new price can be simulated as:

<i> p2 = sample(c(f1,p1),size=1,prob(paccept,1-paccept))</i>

As the days pass, new forecasted prices come in and Ross compares them to his current price, making for a cyclical algorithm that after enough samples approximates $P \sim Gamma (7.5, .15)$. 

Here, the number of samples has been set from 100 to 10,000. $\sigma$ alters the standard deviation of the forecasted prices proposed to Ross.
