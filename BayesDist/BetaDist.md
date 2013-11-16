The Beta Distribution ranges from 0 to 1, and as such is used for modeling proportions and probabilities:

$X$ = a proportion or probability

Which can be modeled as:

<center> $X \sim Beta(a,b)$ 

$f(x|a,b)= cx^{a-1} (1-x)^{b-1}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $0 \leq x \leq 1$<b>,</b> &nbsp;&nbsp; $a=1,2,3...$<b>,</b> &nbsp;&nbsp; <b> and </b> &nbsp;&nbsp; $b = 1,2,3...$ </center>

whereby $c$ is a normalizing constant that ensures that the probability density function integrates to 1 (i.e., $\int_0^1 f(x|a,b)dx =1$):

$c$ is equivalent to:

<center> $c = \frac{1}{\int_0^1x^{a-1}(1-x)^{b-1}dx}$</center>

Further:

<center> $E(X)= \frac{a}{a+b}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X)=\frac{ab}{(a+b)^2(a+b+1)}$</center>

Notice that $E(X)$ is directly related to $a$ and inversely related to $b$

Here, $a$ and $b$ range from 0 to 10.
