
```r
countOdds <- function(z) {
    k <- 0
    for (n in z) {
        if (n%%2 == 1) 
            k <- k + 1
    }
    return(k)
}

countOdds(1:9)
```

```
## [1] 5
```

```r

countEvens <- function(i) {
    m <- 0
    t <- 0
    for (g in i) {
        if (g%%2 == 1) 
            m <- m + 1
    }
    t <- g - m
    return(t)
}

countEvens(1:9)
```

```
## [1] 4
```

```r

hypotenuseLength <- function(a, b) {
    c = sqrt((a^2 + b^2))
    return(c)
}

hypotenuseLength(3, 4)
```

```
## [1] 5
```

```r
hypotenuseLength(13, 84)
```

```
## [1] 85
```

```r

lawOfCosines <- function(a, b, l) {
    c = sqrt(a^2 + b^2 - 2 * (a) * (b) * cos(l))
    return(c)
}

lawOfCosines(13, 84, pi/2)
```

```
## [1] 85
```

```r
lawOfCosines(13, 84, 3 * pi/4)
```

```
## [1] 93.64
```

```r

thetaFromLengths <- function(a, b, c) {
    d = acos(sqrt((a^2 + b^2 - c^2))/(2 * a * b))
    return(d)
}

thetaFromLengths(3, 4, 5)
```

```
## [1] 1.571
```

```r

thetaFromLengthsTest <- function(a, b, l) l - thetaFromLengths(a, b, lawOfCosines(a, 
    b, l))

thetaFromLengthsTest(3, 4, pi/2)
```

```
## [1] 0
```

```r

canvas <- function(mn = 0, mx = 100) {
    plot(1:2, ylim = c(mn, mx), xlim = c(mn, mx), type = "n", xaxt = "n", yaxt = "n", 
        xlab = "", ylab = "", bty = "n", asp = 1)
}

canvas(0, 100)

drawcircle <- function(o, p, q, color) {
    angs <- seq(0, 2 * pi, length = 100)
    xpts <- o + q * cos(angs)
    ypts <- p + q * sin(angs)
    polygon(xpts, ypts, col = color, border = NULL)
}

drawcircle(50, 50, 10, "blue")
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r

drawcircle2 <- function(x, y, r, ...) {
    angs2 <- seq(0, 2 * pi, length = 100)
    xpts2 <- x + r * cos(angs2)
    ypts2 <- y + r * sin(angs2)
    polygon(xpts2, ypts2, ...)
}

canvas(0, 100)

drawcircle2(40, 40, 20, col = "red", border = "green", lwd = 20)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

```r

canvas(0, 100)
angles = seq(0, 2 * pi, length = 1000)
c = 40 + 20 * cos(angles)
d = 70 + 20 * sin(angles)
polygon(c, d, col = "green")
e = 50 + 20 * cos(angles)
r = 50 + 20 * sin(angles)
polygon(e, r, col = "red")
t = 60 + 20 * cos(angles)
z = 70 + 20 * sin(angles)
polygon(t, z, col = "blue")
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-13.png) 

```r

canvas(0, 100)
angles = seq(0, 2 * pi, length = 1000)
ab = 20 + 10 * cos(angles)
ac = 60 + 10 * sin(angles)
polygon(ab, ac, border = "light blue", lwd = 10)
ad = 32 + 10 * cos(angles)
ae = 50 + 10 * sin(angles)
polygon(ad, ae, border = "gold", lwd = 10)
af = 44 + 10 * cos(angles)
ag = 60 + 10 * sin(angles)
polygon(af, ag, border = "black", lwd = 10)
ah = 56 + 10 * cos(angles)
ai = 50 + 10 * sin(angles)
polygon(ah, ai, border = "green", lwd = 10)
aj = 68 + 10 * cos(angles)
ak = 60 + 10 * sin(angles)
polygon(aj, ak, border = "red", lwd = 10)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-14.png) 

