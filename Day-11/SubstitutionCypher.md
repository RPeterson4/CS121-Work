
```r

## Step 1, the Key
key <- "zoo"
getnum <- function(L) {
    which(L == letters)
}
paste(sapply(unlist(strsplit(key, split = NULL)), FUN = getnum), collapse = "")
```

```
## [1] "261515"
```

```r


## Step 2, the cypher
set.seed(paste(sapply(unlist(strsplit(key, split = NULL)), FUN = getnum), collapse = ""))
characters <- c(letters, LETTERS, ".", ":", ",", ";", 0:9)
fromandto <- sample(characters)
fromandto
```

```
##  [1] "q" "z" "j" ":" "D" "s" "i" "F" "y" "a" "8" "W" "K" "O" "f" "k" "d"
## [18] "u" "L" "," "P" "l" "Q" "E" "C" "Z" "A" "n" "G" "X" "g" "o" "b" "S"
## [35] "J" "m" "V" "v" "7" "H" "e" "Y" "6" "4" "5" "0" "2" "U" "1" "r" "t"
## [52] "w" "h" ";" "p" "M" "9" "x" "3" "I" "R" "c" "T" "." "B" "N"
```

```r

## Step 3, the encryption
output <- chartr(paste(characters, collapse = ""), paste(fromandto, collapse = ""), 
    "Encrypted message")
output
```

```
## [1] "gOjuCk,D: KDLLqiD"
```

```r

## Step 4, the decryption

decoded <- chartr(paste(fromandto, collapse = ""), paste(characters, collapse = ""), 
    output)
decoded
```

```
## [1] "Encrypted message"
```

