<img src="http://upload.wikimedia.org/wikipedia/commons/a/af/Times_New_Roman_Greek_small_letter_beta.svg" width="100" height="200" align="left">

The Beta Distribution ranges from 0 to 1, and as such is used for modeling proportions and probabilities:

$X$ = a proportion or probability

Which can be modeled as:

<center> $X \sim Beta(a,b)$ 

$f(x|a,b)= cx^{a-1} (1-x)^{b-1}$ &nbsp;&nbsp; <b>for</b> &nbsp;&nbsp; $0 \leq x \leq 1$ </center>

whereby $c$ is a normalizing constant that ensures that the probability density function integrates to 1 (i.e., $\int_0^1 f(x|a,b)dx =1$):

$c$ is equivalent to:

<center> $c = \frac{1}{\int_0^1x^{a-1}(1-x)^{b-1}dx}$</center>

The mean and variance for the Beta can be calculated as:

<center> $E(X)= \frac{a}{a+b}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> and </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Var(X)=\frac{ab}{(a+b)^2(a+b+1)}$</center>

Notice that $E(X)$ is directly related to $a$ and inversely related to $b$

Here, $a$ and $b$ range from 0 to 10.
