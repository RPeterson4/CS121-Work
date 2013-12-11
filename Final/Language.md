
```r

require(mosaic)
```

```
## Loading required package: mosaic Loading required package: grid Loading
## required package: lattice
## 
## Attaching package: 'mosaic'
## 
## The following objects are masked from 'package:stats':
## 
## D, IQR, binom.test, cor, cov, fivenum, median, prop.test, sd, t.test, var
## 
## The following object is masked from 'package:base':
## 
## max, mean, min, print, prod, range, sample, sum
```

```r
fetchData("COMP121/word-hints.R")
```

```
## Retrieving from http://www.mosaic-web.org/go/datasets/COMP121/word-hints.R
```

```
## [1] TRUE
```

```r

letterProportion <- function(input) {
    input2 <- unlist(strsplit(tolower(input), split = character(0)))
    total <- length(input2)
    ans <- c()
    for (k in 1:total) {
        prop <- table(input2[[k]][1])/total
        ans <- c(ans, prop)
    }
    return(ans)
}

letterProportion("string")
```

```
##      s      t      r      i      n      g 
## 0.1667 0.1667 0.1667 0.1667 0.1667 0.1667
```

```r

freqCompare <- function(lang, input) {
    diff <- function(input) {
        letterProportion(input)
    } - lang  ##diff in frequencies
    square <- sum(diff)^2/sum(lang)  ##square and divide
    return(diff)
}

freqCompare(English, "string")
```

```
## Error: Error in base::sum(x = diff): invalid 'type' (closure) of argument
## Did you perhaps omit data= ?
```

```r

whichLanguage <- function(string, langlist) {
    ans <- c()
    for (k in 1:length(langlist)) {
        diff <- function(input) {
            letterProportion(string)
        } - langlist[k]
        square <- sum(diff)^2/sum(lang)
        ans <- c(ans, square)
    }
    return(min(ans))
}
```

