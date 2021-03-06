
```r
cat(paste(paste(5, 4, 3, 2, 1, collapse = ""), "Blastoff!", collapse = ""))
```

```
## 5 4 3 2 1 Blastoff!
```

```r

blastoffFor <- function(time) {
    for (k in time:1) {
        Sys.sleep(1)
        cat(time, "\n")
        time <- time - 1
    }
    Sys.sleep(1)
    cat("Blastoff!")
}

blastoffFor(5)
```

```
## 5 
## 4 
## 3 
## 2 
## 1 
## Blastoff!
```

```r

blastoffWhile <- function(time) {
    while (time != 0) {
        Sys.sleep(1)  #Computer pauses for a second
        cat(time, "\n")
        time <- time - 1
    }
    Sys.sleep(1)
    cat("Blastoff!")
}

blastoffWhile(5)
```

```
## 5 
## 4 
## 3 
## 2 
## 1 
## Blastoff!
```

```r

blastoffRepeat <- function(time) {
    repeat {
        cat(time, "\n")
        time <- time - 1
        Sys.sleep(1)
        if (time == 0) 
            break
    }
    Sys.sleep(1)
    cat("Blastoff!")
}

blastoffRepeat(5)
```

```
## 5 
## 4 
## 3 
## 2 
## 1 
## Blastoff!
```

```r

testLatency <- function(N, pauses = rexp(N, rate = 1/2)) {
    result <- rep(0, N)
    readline("When ready, press return:")
    for (k in 1:N) {
        cat(rep("\n", 20))
        Sys.sleep(pauses[k])
        before <- Sys.time()
        readline("Press return:")
        after <- Sys.time()
        delay <- as.numeric(after - before)
        result[k] <- delay  #reaction time assigned to 1st click, then 2nd, etc.
    }
    return(data.frame(pause = pauses, lag = result))
}

## Performed test latency for RossData4

load("RossData4.RData")
plot(lag ~ pause, data = RossData4)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r

scrambleLatency <- function(N, pauses = rexp(N, rate = 1/2)) {
    result <- rep(0, N)
    readline("When ready, press return:")
    for (k in 1:N) {
        cat(rep("\n", 20))
        Sys.sleep(pauses[k])
        before <- Sys.time()
        scramble <- strsplit("random", split = character(0))
        input3 <- scramble[[1]][sample(nchar("random"):1)]
        input3 <- paste(input3, collapse = "")
        userVal <- readline(paste("Type in: ", input3, " "))
        while (input3 != userVal) {
            userVal <- readline(paste("Try again: "))
        }
        after <- Sys.time()
        delay <- as.numeric(after - before)
        result[k] <- delay  #reaction time assigned to 1st click, then 2nd, etc.
    }
    return(data.frame(pause = pauses, lag = result))
}

## Performed scrambleLatency for RossData5

load("RossData5.RData")
plot(lag ~ pause, data = RossData5)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

```r

## Lag is higher in this case because I had to type in a randomly generated
## string of 'random' instead of simply pressing return.
```

