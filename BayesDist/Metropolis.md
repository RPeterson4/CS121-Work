In hierarchical Bayesian modeling, the high number of priors often makes deriving the posterior density difficult. A possible solution is a Markov chain Monte Carlo (MCMC) simulation. For $Y$, a set of complicated prior parameters, and $X=x$, an observed set of data, MCMC involves taking a chain of samples ($y_1,y_2,...,y_n$) from a distribution $\neq f(y|x)$, whereby the samples are dependent upon one another (i.e., $y_{i+1}$ depends on $y_i$). A couple criteria allow this chain to approximate the posterior $f(y|x)$, also known as the target density:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; the chain can only visit a limited range of $y$ values

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; The time spent at each $y$ value must be proportional to $f(y|x)$

The chain of $y$ values then takes on the shape of a random sample from $f(y|x)$. Once this chain is large enough, we can approximate the posterior density of $f(y|x)$.

Consider the following example:

Ross presides over continuous farmland. Let $Y>0$ be the distance from Ross's barn and $f(y)$ be the plant growth density at acre $y$ such that:

<center> $Y \sim Gamma (7.5, .15)$ 

$f(y|7.5,.15) \propto y^{6.5}e^{-.15y}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>for</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y > 0$

</center>

Ross intends his time spent working on each acre to be proportional to its relative plant density. How can a Metropolis Algorithm simulate Ross's work schedule?

Let $y$ start at acre $50$:

For each day, we propose a new acre to Ross from some symmetric distribution, $N(\mu,\sigma)$:

<i>set.seed(2000)</i>

<i> y1 = 50 </i>

<i>f1 = rnorm(1,mean=y1,sd=10)</i>

Ross then compares the plant growth of the new acre to that of the acre he is currently working on:

<i>paccept = min(1,dgamma(f1,s=7.5,r=.15)/dgamma(y1,s=7.5,r=.15))</i>

If the plant growth of the new acre > old acre, Ross will always switch to the new acre. This is reflected in the command <i>min (1...)</i>. If the plant growth of the new acre > current acre, <i>min(1...)</i> will always select 1, a probability of 100%.

If the plant growth of the new acre < current acre, Ross will switch based on the probability generated from $\frac{plant \ growth \ of \ new \ acre}{plant \ growth \ of \ current \ acre}$: simulated by: <i> dgamma(f1,s=7.5,r=.15)/dgamma(y1,s=7.5,r=.15) </i>. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; Note that Ross's decision to work on the new acre depends on the plant growth of his current acre

Ross's potential acceptance of the new acre can be simulated as:

<i> p2 = sample(c(f1,y1),size=1,prob(paccept,1-paccept))</i>

As the days pass, we propose new acres to Ross who then compares them to his current acre, making for a cyclical algorithm that after enough samples approximates $P \sim Gamma (7.5, .15)$. 

Here, the number of samples has been set from 100 to 10,000. $\sigma$ alters the standard deviation of the acres proposed to Ross.
