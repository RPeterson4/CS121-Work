
```r
outlier <- function(x1) {
    lqr = quantile(x1, probs = 0.25)
    uqr = quantile(x1, probs = 0.75)
    as.logical(x1 < lqr | x1 > uqr)
}

outlier(1:10)
```

```
##  [1]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE
```

```r

digitToWord <- function(integer, language = "English") {
    French <- c("zero", "un", "deux", "trois", "quatre", "cinq", "six")
    English <- c("zero", "one", "two", "three", "four", "five", "six")
    Spanish <- c("cero", "uno", "dos", "tres", "quatro", "cinco", "seis")
    Words <- switch(language, French = French, Spanish = Spanish, English = English)
    return(Words[integer + 1])
}

digitToWord(c(1, 2, 3), "English")
```

```
## [1] "one"   "two"   "three"
```

```r

digitToWord(4:6, "French")
```

```
## [1] "quatre" "cinq"   "six"
```

```r

lettersMatch <- function(words, pattern) {
    ans <- grep(pattern, words)
    return(words[ans])
}

lettersMatch(c("super", "cali", "fab", "dooze"), "^....$")
```

```
## [1] "cali"
```

```r

lettersMatch(c("super", "cali", "fab", "dooze"), "^.....$")
```

```
## [1] "super" "dooze"
```

```r

words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))

crosswordPattern <- function(v, numchar) {
    scrabstr <- rep(".", numchar)
    scrabstr[v] <- names(v)
    scrabstr2 <- paste("^", paste(scrabstr, collapse = ""), "$", sep = "")
    matched2 <- grep(scrabstr2, words)
    return(words[matched2])
}

crosswordPattern(c(q = 1, s = 7), 7)
```

```
##  [1] "qindars" "qintars" "qiviuts" "quaeres" "quaggas" "quahogs" "quaichs"
##  [8] "quaighs" "quakers" "quartes" "quartos" "quasars" "quashes" "quasses"
## [15] "quatres" "quavers" "queries" "queuers" "quezals" "quiches" "quietus"
## [22] "quinces" "quinins" "quinoas" "quinols" "quippus" "quivers" "quizzes"
## [29] "quorums" "quoters" "qurshes"
```

```r

piSeries <- function(n) {
    k <- 1:n
    terms <- (-1)^(k + 1)/(2 * k - 1)
    return(4 * sum(terms))
}

piSeries(100)
```

```
## [1] 3.132
```

```r

howCloseToPi <- function(n) {
    k <- 1:n
    y <- sapply(k, FUN = piSeries)
    plot(k, y, xlab = "n", ylab = "Approx to pi")
}

howCloseToPi(200)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-11.png) 

```r

piSeries(160)
```

```
## [1] 3.135
```

```r

## Need about 160 terms to specify pi to three digits

## I'd estimate that about 800 terms are required to specify pi to 15 digits.
## 160 terms satisfy 3 digits. 15/3 = 5. 160 * 5 = 800.

randomApproxToPi <- function(n) {
    x <- runif(n)
    y <- runif(n)
    z <- x^2 + y^2
    return(4 * mean(z < 1))
}

randomApproxToPi(1000)
```

```
## [1] 3.048
```

```r

CloseToPiRandomApprox <- function(n) {
    k <- 1:n
    y <- sapply(k, FUN = randomApproxToPi)
    plot(k, y, xlab = "n", ylab = "Approx to pi")
}

CloseToPiRandomApprox(1000)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-12.png) 

