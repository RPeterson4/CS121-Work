
```r
toBase <- function(input, base) {
    sofar <- c()
    while (input != 0) {
        remainder <- input%%base
        sofar <- c(sofar, remainder)
        input <- (input - remainder)/base
    }
    return(sofar)
}

toBase(10, 2)
```

```
## [1] 0 1 0 1
```

```r

baseToNumeric <- function(Nvec, b) {
    howMany <- length(Nvec)
    herdsize <- b^((howMany - 1):0)  ##3, 2, 1
    return(sum(as.numeric(Nvec) * herdsize))
}

baseToNumeric(c(7, 6, 5, 4), 8)
```

```
## [1] 4012
```

```r

convertAsALoop <- function(Nvec, b) {
    # Initialzie state
    Nvec <- as.numeric(Nvec)
    sheepCount <- 0
    boxsize <- 1
    for (k in length(Nvec):1) {
        sheepCount <- sheepCount + boxsize * Nvec[k]
        boxsize <- boxsize * b  #Exponentiating, 1, then 12, then 12^2 and so on
    }
    return(sheepCount)
}

convertAsALoop(c(7, 6, 5, 4), 8)
```

```
## [1] 4012
```

