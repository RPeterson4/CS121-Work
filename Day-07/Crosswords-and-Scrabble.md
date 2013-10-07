
```r
words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))

## Words of length 1, 2, and 3
length(words[grep("^.$", words)])
```

```
## [1] 0
```

```r
length(words[grep("^..$", words)])
```

```
## [1] 85
```

```r
length(words[grep("^...$", words)])
```

```
## [1] 908
```

```r

## 100 longest words
tophundred <- function() {
    results <- c()
    topword <- c()
    for (topword in words) {
        ind <- which.max(nchar(words))
        topword <- words[ind]
        words <- words[-ind]
        results <- c(results, topword)
        if (length(results) >= 100) 
            break
    }
    return(results)
}

tophundred()
```

```
## Warning: closing unused connection 5
## (http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt)
```

```
##   [1] "counterdemonstrations" "hyperaggressivenesses"
##   [3] "microminiaturizations" "counterdemonstration" 
##   [5] "counterdemonstrators"  "hypersensitivenesses" 
##   [7] "microminiaturization"  "representativenesses" 
##   [9] "anticonservationist"   "comprehensivenesses"  
##  [11] "counterdemonstrator"   "counterinflationary"  
##  [13] "counterpropagations"   "counterretaliations"  
##  [15] "disinterestednesses"   "electrocardiographs"  
##  [17] "extraconstitutional"   "hyperaggressiveness"  
##  [19] "inappropriatenesses"   "inconsideratenesses"  
##  [21] "interdenominational"   "irreconcilabilities"  
##  [23] "miscellaneousnesses"   "multidenominational"  
##  [25] "absentmindednesses"    "adventitiousnesses"   
##  [27] "antiadministration"    "antidiscrimination"   
##  [29] "apprehensivenesses"    "biodegradabilities"   
##  [31] "bloodthirstinesses"    "cantankerousnesses"   
##  [33] "characteristically"    "chemotherapeutical"   
##  [35] "counteraccusations"    "counteraggressions"   
##  [37] "counterpropagation"    "counterretaliation"   
##  [39] "counterrevolutions"    "countersuggestions"   
##  [41] "electrocardiograms"    "electrocardiograph"   
##  [43] "feeblemindednesses"    "heterogenousnesses"   
##  [45] "hydroelectricities"    "hyperconscientious"   
##  [47] "hypernationalistic"    "hypersensitiveness"   
##  [49] "hypersensitivities"    "indispensabilities"   
##  [51] "industrializations"    "interinstitutional"   
##  [53] "internationalizing"    "interrelatednesses"   
##  [55] "irresponsibilities"    "lightheartednesses"   
##  [57] "misinterpretations"    "misrepresentations"   
##  [59] "nondiscriminations"    "obstreperousnesses"   
##  [61] "perpendicularities"    "postfertilizations"   
##  [63] "rehospitalizations"    "remunerativenesses"   
##  [65] "representativeness"    "simultaneousnesses"   
##  [67] "straightforwardest"    "subclassifications"   
##  [69] "subconsciousnesses"    "superintellectuals"   
##  [71] "superintelligences"    "unscrupulousnesses"   
##  [73] "acquaintanceships"     "antiauthoritarian"    
##  [75] "antieavesdropping"     "antiestablishment"    
##  [77] "antimaterialistic"     "antimiscegenation"    
##  [79] "antirevolutionary"     "antitechnological"    
##  [81] "blameworthinesses"     "carnivorousnesses"    
##  [83] "characterizations"     "circumnavigations"    
##  [85] "comprehensiveness"     "consideratenesses"    
##  [87] "constitutionality"     "coproprietorships"    
##  [89] "counteraccusation"     "counteraggression"    
##  [91] "counterchallenges"     "countercomplaints"    
##  [93] "countercriticisms"     "counterinfluences"    
##  [95] "counterrevolution"     "counterstrategies"    
##  [97] "countersuggestion"     "countertendencies"    
##  [99] "counterterrorisms"     "counterterrorists"
```

```r

## Number of words starting with a, b, and c
length(words[grep("^a", words)])
```

```
## [1] 6557
```

```r
length(words[grep("^b", words)])
```

```
## [1] 6848
```

```r
length(words[grep("^c", words)])
```

```
## [1] 10385
```

```r

## Full list of words with q but no u
length(words[grep("q[^u]", words)])
```

```
## [1] 14
```

```r

## Crossword Helper
crossword <- function(pattern) {
    matched <- grep(pattern, words)
    return((words)[matched])
}

crossword("quarter")
```

```
##  [1] "forequarter"    "forequarters"   "headquarter"    "headquartered" 
##  [5] "headquartering" "headquarters"   "hindquarter"    "hindquarters"  
##  [9] "quarter"        "quarterback"    "quarterbacked"  "quarterbacking"
## [13] "quarterbacks"   "quartered"      "quartering"     "quarterlies"   
## [17] "quarterly"      "quartermaster"  "quartermasters" "quartern"      
## [21] "quarterns"      "quarters"
```

```r

## A better crossword helper
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

![Pic](http://ec2-54-218-188-239.us-west-2.compute.amazonaws.com:8787/files/CS121-Work/Day-09/Crossword2.png)

```r
## 9 Across, 'Slow moving and has a shell

crosswordPattern(c(t = 1, r = 3, l = 5), 6)
```

```
## [1] "tartly" "termly" "thrall" "thrill" "torula" "turtle"
```

```r

## 8 Across, 'Lives in the cold and waddles'

crosswordPattern(c(n = 3, n = 7), 7)
```

```
##  [1] "agnomen" "benison" "benzoin" "bondman" "bondmen" "canakin" "canikin"
##  [8] "canteen" "cinerin" "concern" "condemn" "condign" "conjoin" "consign"
## [15] "contain" "contemn" "dendron" "denizen" "dungeon" "einkorn" "finikin"
## [22] "gentian" "handgun" "hangman" "hangmen" "hanuman" "junkman" "junkmen"
## [29] "kinetin" "kingpin" "kinsman" "kinsmen" "landman" "landmen" "lanolin"
## [36] "lantern" "lineman" "linemen" "linkman" "linkmen" "lyncean" "manakin"
## [43] "manikin" "mansion" "mention" "minikin" "monsoon" "monuron" "munnion"
## [50] "nankeen" "ninepin" "nonagon" "penguin" "pension" "pontoon" "rontgen"
## [57] "rundown" "sandman" "sandmen" "sunburn" "sundown" "tension" "tinhorn"
## [64] "tongman" "tongmen" "venison" "wanigan" "wingman" "wingmen" "xanthin"
```

```r

scrabble <- function(rack) {
    splitword <- strsplit(rack, split = character(0))[[1]]
    search <- c()
    for (k in 1:length(splitword)) {
        search <- splitword[k]
        words <- words[grep(search, words)]
    }
    results <- c()
    topword <- c()
    for (topword in words) {
        ind <- which.max(nchar(words))
        topword <- words[ind]
        words <- words[-ind]
        results <- c(results, topword)
        if (length(results) >= 10) 
            break
    }
    return(results)
}

scrabble("zanebla")
```

```
##  [1] "generalizability" "demobilizations"  "demobilization"  
##  [4] "verbalizations"   "alphabetizing"    "verbalization"   
##  [7] "cannibalized"     "cannibalizes"     "hypnotizable"    
## [10] "liberalizing"
```

