##Words of length 1, 2, and 3
length(words[grep("^.$",words)])
length(words[grep("^..$",words)])
length(words[grep("^...$",words)])

## 100 longest words
tophundred <- function(){
results <- c()
topword <- c()
for (topword in words){
  ind <-  which.max(nchar(words)) 
  topword <- words[ind]
  words <- words[-ind]
  results <- c(results, topword)
  if (length(results)>=100)
    break
}
return(results)
}

tophundred()

##Number of words starting with a, b, and c
length(words[grep("^a",words)])
length(words[grep("^b",words)])
length(words[grep("^c",words)])

##Full list of words with q but no u
length(words[grep("q[^u]",words)])

##Crossword Helper
crossword <- function(pattern){
  matched <- grep(pattern,words)
  return((words)[matched])
}

crossword("quarter")

##A better crossword helper
crosswordPattern <- function(v,numchar){
  scrabstr  <- rep(".",numchar)
  scrabstr[v] <- names(v)
  scrabstr2 <- paste("^",paste(scrabstr,collapse=""),"$",sep="")
matched2 <- grep(scrabstr2,words)
return(words[matched2])
}

crosswordPattern(c(q=1,s=7),7)

![Walt Whitman](Crossword.jpg)

## 9 Across, "Slow moving and has a shell

crosswordPattern(c(t=1,r=3,l=5),6)

## 8 Across, "Lives in the cold and waddles"

crosswordPattern(c(n=3,n=7),7)

scrabble <- function(rack){
  splitword <- strsplit(rack,split=character(0))[[1]]
  search <- c()
  for (k in 1:length(splitword)){
    search <- splitword[k]
    words <- words[grep(search,words)]
  }
  results <- c()
  topword <- c()
  for (topword in words){
    ind <-  which.max(nchar(words)) 
    topword <- words[ind]
    words <- words[-ind]
    results <- c(results, topword)
    if (length(results)>=10)
      break
  }
  return(results)
}

scrabble("zanebla")