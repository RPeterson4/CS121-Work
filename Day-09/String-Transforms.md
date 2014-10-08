# Oct 1, 2013

## Reverser


```r
reverse <- function(input) {
    input2 <- strsplit(input, split = character(0))
    input3 <- input2[[1]][nchar(input):1]
    return(paste(input3, collapse = ""))
}

reverse("shadow")
```

```
## [1] "wodahs"
```

```r

superreverse <- function(input) {
    sapply(input, FUN = reverse)
}

superreverse(c("string", "constant"))
```

```
##     string   constant 
##   "gnirts" "tnatsnoc"
```

```r

scramble <- function(input) {
    input2 <- strsplit(input, split = character(0))
    input3 <- input2[[1]][sample(nchar(input):1)]
    return(paste(input3, collapse = ""))
}

scramble("shadow")
```

```
## [1] "sawhdo"
```

```r
scramble("shadow")
```

```
## [1] "dhawso"
```

```r

superscramble <- function(input) {
    sapply(input, FUN = scramble)
}

superscramble(c("string", "constant"))
```

```
##     string   constant 
##   "nrstig" "oncantst"
```

```r

superscramble(c("string", "constant"))
```

```
##     string   constant 
##   "igrnst" "cttnonsa"
```

```r

VowelBleeper <- function(input) {
    superSub <- gsub("[aeiou]", "*", input)
    return(superSub)
}

VowelBleeper("shadow")
```

```
## [1] "sh*d*w"
```

```r

superVowelBleeper <- function(input) {
    sapply(input, FUN = VowelBleeper)
}

superVowelBleeper(c("string", "constant"))
```

```
##     string   constant 
##   "str*ng" "c*nst*nt"
```

```r

L33t <- function(input) {
    gsub1 <- gsub("e", "3", input)
    gsub2 <- gsub("o", "0", gsub1)
    gsub3 <- gsub("s", "5", gsub2)
    gsub4 <- gsub("g", "9", gsub3)
    return(gsub4)
}

L33t("shadow")
```

```
## [1] "5had0w"
```

```r

superL33t <- function(input) {
    sapply(input, FUN = L33t)
}

superL33t(c("string", "constant"))
```

```
##     string   constant 
##   "5trin9" "c0n5tant"
```

```r

cypher <- function(input) {
    supercypher <- chartr("abcdefghijklmnopqrstuvwxyz", "mnopqrstuvwxyzabcdefghijkl", 
        input)
    return(supercypher)
}

cypher("shadow")
```

```
## [1] "etmpai"
```

```r

cypher2 <- function(input) {
    sapply(input, FUN = cypher)
}

cypher2(c("string", "constant"))
```

```
##     string   constant 
##   "efduzs" "oazefmzf"
```

