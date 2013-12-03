<img src="http://i1.sndcdn.com/avatars-000059094172-rgbc57-crop.jpg?3eddc42" width="200" height="200" align="left">

Two normal distributions can combine to form a joint distribution, termed the bivariate normal distribution. Consider the normal distributions of $X$ and $Y$:

<center> $X\sim N(\mu_x,\sigma_x^2)$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Y\sim N(\mu_y,\sigma_y^2)$ </center>

$X$ and $Y$ can be correlated with each other according to the value of $\rho$. Think of $\rho$ as like a correlation coefficient, whereby $\rho>0$ indicates a positive relationship and $\rho<0$ a negative relationship. If $\rho=0$, $X$ and $Y$ are independent.

The bivariate normal distribution is then:

\[\left(\begin{array}{cc}
X \\
Y \end{array} \right)\sim N \left(\left(\begin{array}{cc}
\mu_x \\
\mu_y \end{array} \right), \left( \begin{array}{cc}
\sigma_x^2 & \rho \sigma_x \sigma_y \\
\rho \sigma_x \sigma_y & \sigma_y^2 \end{array} \right)\right)=N(\mu,\Sigma)\]

whereby $\mu$ is the mean vector and $\Sigma$ is the covariance matrix.

The joint density is:

\[f(x,y) =\frac{1}{2\pi}|\Sigma|^{\frac{-1}{2}}exp\left\{ -\frac{1}{2}(x-\mu_x,y-\mu_y)\Sigma^{-1}\left(\begin{array}{cc}
x-\mu_x \\
y-\mu_y \end{array} \right)\right\} \] <center> <b>for</b> &nbsp;&nbsp; $\infty < x,y < \infty$ &nbsp;&nbsp; <b>and</b> &nbsp;&nbsp; $-1\leq \rho \leq 1$</center>

whereby $|\Sigma|$ is the determinant of the covariance matrix $\Sigma$ and $\Sigma^{-1}$ is the matrix inverse.

When $X$ and $Y$ are independent, the joint density is:

\[f(x,y) =f(x)f(y) =\frac{1}{2\pi\sigma_x \sigma_y}exp\left\{ -\frac{1}{2}\left(\frac{x-\mu_x}{\sigma_x}\right)^2\right\}exp\left\{-\frac{1}{2}\left(\frac{y-\mu_y}{\sigma_y}\right)^2\right\}\]
