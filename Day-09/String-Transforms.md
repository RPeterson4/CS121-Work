# Oct 1, 2013

## Reverser


```r

load(file = "RossData.Rdata")
reverse2 <- function(input) {
    input2 <- strsplit(input, split = character(0))
    input3 <- input2[[1]][nchar(input):1]
    return(paste(input3, collapse = ""))
}

reverse2("shadow")
```

```
## [1] "wodahs"
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
## [1] "wahsod"
```

```r
scramble("shadow")
```

```
## [1] "odsahw"
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

