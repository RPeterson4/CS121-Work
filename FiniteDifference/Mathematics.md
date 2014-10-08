# Finite Differences




## Task 1

The function I chose:

$e^{-x/5} \sin(x)$

The function's derivative

$e^{-x/5} \cos(x)-\frac{1}{5}e^{-x/5} \sin(x)$



```r
evalD <- function(f, x) {
    h <- 1e-08
    return((f(x + h) - f(x - h))/(2 * h))
}

## Implementing the function in R:
f <- function(x) {
    exp(-x/5) * sin(x)
}

## Implementing the symbolic derivative
df <- function(x) {
    exp(-x/5) * cos(x) - exp(-x/5) * (1/5) * sin(x)
}

## Plot that shows value of Df() and finite-difference value found by
## applying evalD() to f
g <- function(x) {
    evalD(f, x)
}
plotFun(f(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(g(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-21.png) 

```r

## Plot that displays arithmetic difference between symbolic derivative and
## finite-difference derivative
plotFun(df(x) - g(x) ~ x, x.lim = c(0, 10))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-22.png) 

The finite-difference computation seems like a good approximation of the symbolic calculation given the small difference between the two.
##Task II

```r
evalD2 <- function(f, x, h) {
    return((f(x + h) - f(x - h))/(2 * h))
}
g2 <- function(x) {
    evalD2(f, x, 1e-20)
}
g3 <- function(x) {
    evalD2(f, x, 1e-15)
}
g4 <- function(x) {
    evalD2(f, x, 1e-10)
}
g5 <- function(x) {
    evalD2(f, x, 1e-05)
}
g6 <- function(x) {
    evalD2(f, x, 0.1)
}
g7 <- function(x) {
    evalD2(f, x, 1)
}
plotFun(g2(x) ~ x, x.lim = c(0, 10), col = "red")
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

An h-value of 1e^-20 is too small for evalD2 to work, dividing by zero to make  a straight line.

Next I plotted the symbolically computed derivative in black alongside each function of evalD2 in order to determine the best h value.


```r
plotFun(g3(x) ~ x, x.lim = c(0, 10), col = "blue")
plotFun(df(x) ~ x, x.lim = c(0, 10), col = "black", add = TRUE)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-41.png) 

```r
plotFun(g4(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(g5(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
plotFun(df(x) ~ x, x.lim = c(0, 10), col = "black", add = TRUE)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-42.png) 

```r
plotFun(g6(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(g7(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
plotFun(df(x) ~ x, x.lim = c(0, 10), col = "black", add = TRUE)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-43.png) 

An h-value of either 1e^-10, 1e^-5, and .1 appear to work best, each being almost identical to the symbolic derivative. 

## Task III

```r
g10 <- function(x) {
    evalD2(f, x, h = 1e-08 * abs(x))
}
g10(0)
```

```
## [1] NaN
```

The function returns "NaN" because h = 0. The equation then divides by zero, which isn't possible.


```r
pmax(1, abs(0))
```

```
## [1] 1
```

```r
pmax(1, abs(5))
```

```
## [1] 5
```

pmax return the highest value between 1 and abs(x). In the first instance above, pmax returns 1 because 1 > 0. In the second instance, pmax returns 5 because 5 > 1. This allows for any value of x to be used, as pmax(1,abs(x)) ensures that h will never equal zero.

##Task IV

```r
myD <- function(f, h = 1e-08) {
    return(function(x) evalD2(f, x, h = h))
}

myD(sin)
```

```
## function(x) evalD2(f, x, h = h)
## <environment: 0x3acbf08>
```

myD() returns a function.

Every time an equation is put into f, an environment is created for that equation. Upon putting a value into the equation, R refers back to that environment of f in order to compute it. 

The argument of x ensures that the function returned by myD() will take a single, numerical argument.

##Task V

```r
## 2nd derivative
myD2 <- function(f, h) {
    fprime <- myD(f, h = h)
    eprime <- myD(fprime, h = h)
    return(eprime)
}

## 3rd derivative
myD3 <- function(f, h) {
    fprime <- myD(f, h = h)
    eprime <- myD(fprime, h = h)
    return(myD(eprime, h = h))
}

## Plot of 2nd and 3rd derivatives

g20 <- myD2(f, 0.001)
g30 <- myD3(f, 0.001)

plotFun(g20(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(g30(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-81.png) 

```r

## Comparison between my numerical derivatives to derivatives produced by
## mosaic:D

## I will plot my 2nd and 3rd derivatives against those from mosaic:D

SecondD <- D(exp(-x/5) * sin(x) ~ x & x)
plotFun(g20(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(SecondD(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-82.png) 

Both second derivatives look identical to each other.

```r
ThirdD <- D(exp(-x/5) * sin(x) ~ x & x & x)
plotFun(g30(x) ~ x, x.lim = c(0, 10), col = "red")
plotFun(ThirdD(x) ~ x, x.lim = c(0, 10), col = "blue", add = TRUE)
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9.png) 

Both third derivatives also look identical to each other.

```r

evalD3 <- function(f, x, h) {
    return((f(x + h) - 2 * f(x) + f(x - h))/(h^2))
}
myD4 <- function(f, h = 1e-05) {
    return(function(x) evalD3(f, x, h = h))
}

## Plot showing second derivative test for h = 1e^-5
g50 <- myD4(f, 1e-05)
plotFun(g50(x) ~ x, x.lim = c(0, 10), col = "red")
```

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-10.png) 

A direct expression for a finite difference third derivative with a second order accuracy found using the link provided:

$\frac{\frac{-1}{2}f(x_{-2})+f(x_{-1})-f(x_{+1})+\frac{1}{2}f(x_{+2})}{h_x^3}+O(h_x^2)$
