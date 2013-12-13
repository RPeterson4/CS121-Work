<img src="http://winetastingguy.com/wp-content/uploads/2008/08/coin-flip.jpg" width="300" height="300" align="left" style="margin-right: 20px;"> 

The Binomial Distribution is used to model the number of times an event occurs (aka "successes") over $n$ trials whereby $p$ is some probability of success. An example would be flipping a coin 10 times ($n$), whereby each heads is a success and each tails is a failure. In this case, $p=.5$ because we are using a fair coin. The Binomial Distribution has three assumptions:

1) $n$ is fixed.

2) Each trial has two possible outcomes (e.g., success or failure).

3) Trials are independent from one another and have the same probability of success ($p$). For example, the outcome of one coin flip has no influence on the outcome of the next coin flip.

For $X$, the Binomial Distribution is:

<center> $X \sim Binom(n,p)$</center>

whereby $X$ has the corresponding probability mass function:

<center>$f(x|n,p) = {n \choose x} p^x (1-p)^{n-x}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> for </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n \in \{1,2,...\}$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $0 \leq p \leq 1$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x \in \{0,1,2...n\}$ </center>

The mean and variance for $X$ can be calculated as:

<center> $E(X) = np$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X) = np(1-p)$ </center>

Here, the x-axis ranges from 0 to 10 while $n$ ranges from 0 to 10 and $p$ from 0 to 1.
