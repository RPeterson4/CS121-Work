<img src="http://images1.wikia.nocookie.net/__cb20120728230149/smallville/images/8/89/Metropolis2013.png" width="265" height="145" align="left" style="margin-right: 20px;">

In hierarchical Bayesian modeling, the high number of priors often makes deriving the posterior density, $f(y|x)$, difficult. A possible solution is a Markov chain Monte Carlo (MCMC) simulation. For $Y$, a set of prior parameters, and $X=x$, an observed set of data, MCMC involves taking a chain of samples ($y_1,y_2,...,y_n$) from a distribution $\neq f(y|x)$, whereby the samples are dependent upon one another (i.e., $y_{i+1}$ depends on $y_i$). Because the time spent at each $y$ value is proportional to $f(y|x)$, the chain can approximate the posterior $f(y|x)$, also known as the target density.

The chain of $y$ values then takes on the shape of a random sample from $f(y|x)$. Once this chain is large enough, we can use it approximate the posterior density of $f(y|x)$.

Consider the following example:

<img src="http://www.nrcs.usda.gov/Internet/FSE_MEDIA/stelprdb1049230.jpg" style="float:right" width="350" height="175">

Ross presides over continuous farmland. Let $Y>0$ be the distance from Ross's barn and $f(y)$ be the plant growth density at acre $y$ such that:

<center> $Y \sim Gamma (7.5, .15)$ 

$f(y|7.5,.15) \propto y^{6.5}e^{-.15y}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>for</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y > 0$

</center>

Ross intends his time spent working on each acre to be proportional to its relative plant growth density. How can a Metropolis Algorithm simulate Ross's work schedule?

Let $y$ start at acre $50$:

For each day, we propose a new acre to Ross from some symmetric distribution, $N(\mu,\sigma)$:

$Y_1 = 50$

$F_1 \sim N(Y_1,10^2)$

Ross then compares the plant growth of the new acre to that of the acre he is currently working on:

If the plant growth of the new acre > old acre, Ross will always switch to the new acre (i.e., $P_{accept}=1$). If the plant growth of the new acre < current acre, Ross will switch based on the probability generated from the above fraction, $P_{accept} = \frac{Gamma(F_1,7.5,.15)}{Gamma(Y_1,7.5,.15)}$.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; Note that Ross's decision to work on the new acre depends on the plant growth of his current acre.

As each day passes, we propose a new acre to Ross from the symmetric distribution. Ross then compares the plant growth of the new acre to that of his current acre before deciding whether to move to the new acre. Each one of these comparisons is called a sample. After enough samples have been gathered, the Metropolis Algorithm approximates $Y \sim Gamma (7.5, .15)$, our target density. 

Here, the sample has been set from 100 to 10,000. $\sigma$ ranges from 5 to 75 alters the standard deviation of the acres proposed to Ross. Users can choose to view the sample of acres Ross visits, a histogram of the density of the sample, and the running sample mean. The table below the plot provides the acceptance rate for acres proposed to Ross. 
