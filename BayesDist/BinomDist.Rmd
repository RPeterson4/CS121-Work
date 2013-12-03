<img src="http://www1.free-clipart.net/gallery2/clipart/Hands/Coin_Toss.jpg" width="100" height="250" align="left"> The Binomial Distribution is often used to model the number of times an event occurs (aka "successes") over $n$ trials whereby $p$ is some probability of success. It has three assumptions:

1) $n$ is fixed

2) Each trial has two possible outcomes (e.g., "success" or "failure")

3) Trials are independent from one another and have the same probability of success ($p$)

The Binomial Distribution can be modeled as a probability mass function:

<center> $X \sim Binom(n,p)$

$f(x|n,p) = {n \choose x} p^x (1-p)^{n-x}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> for </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n>0$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $0 \leq p \leq 1$ <b>, </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x \in \{0,1,2...n\}$ </center>

whereby:

<center> $E(X) = np$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X) = np(1-p)$ </center>

Here, the domain ranges from 0 to 10 while $n$ ranges from 0 to 10 and $p$ from 0 to 1.
