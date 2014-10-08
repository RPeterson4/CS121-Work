
```r

formatWord <- function(word, trans, class1) {
    if (is.na(trans)) 
        return(word)
    ans1 <- paste("<span class='", class1, "' ", sep = "")
    ans2 <- paste(ans1, "title='", trans, "'>", sep = "")
    ans3 <- paste(ans2, word, "</span>", sep = "")
    return(ans3)
}

cat(formatWord("Hello", "hi there!", "hiword"))
```

<span class='hiword' title='hi there!'>Hello</span>

```r

cat(formatWord("Hello", "hi there!", class = "hiword"), "to", "all", "of", "you", 
    "in", formatWord("Television Land.", "TV Viewers", "hiword"))
```

<span class='hiword' title='hi there!'>Hello</span> to all of you in <span class='hiword' title='TV Viewers'>Television Land.</span>

```r

formatString <- function(word, tips, styles) {
    results <- c()
    for (k in 1:length(word)) {
        results[k] <- formatWord(word[k], tips[k], styles[k])
    }
    return(cat(results))
}

formatString(c("How", "now", "brown", "cow", "!"), c("How are you doing?", NA, 
    "Why brown?", "bovine", "enthusiasm"), c("hiword", "", "brown", "blue", 
    "hiword"))
```

<span class='hiword' title='How are you doing?'>How</span> now <span class='brown' title='Why brown?'>brown</span> <span class='blue' title='bovine'>cow</span> <span class='hiword' title='enthusiasm'>!</span>

```r

formatString(c("How", "now", "brown", "cow", "!", "Zuh"), c("How are you doing?", 
    NA, "Why brown?", "bovine", "enthusiasm", "Fancy Font!"), c("hiword", "", 
    "brown", "blue", "hiword", "bigfancy"))
```

<span class='hiword' title='How are you doing?'>How</span> now <span class='brown' title='Why brown?'>brown</span> <span class='blue' title='bovine'>cow</span> <span class='hiword' title='enthusiasm'>!</span> <span class='bigfancy' title='Fancy Font!'>Zuh</span>

<style>
.hiword {background:pink;}
.brown {background:brown;}
.blue {background:blue;}
.bigfancy {font:italic bold 30px serif;}
</style>
This <span class='hiword' title='This one!'> set of words </span> has a tool tip. 
