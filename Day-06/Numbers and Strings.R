outlier <- function(x1){
  lqr = quantile(x1,probs=.25)
  uqr = quantile(x1,probs=.75)
  as.logical(x1 < lqr | x1 > uqr)}

outlier(1:10)

digitToWord <- function(integer,language="English"){
  French <- c("zero","un","deux","trois","quatre","cinq","six")
  English <- c("zero","one", "two", "three", "four","five","six")
  Spanish <- c("cero","uno", "dos", "tres", "quatro", "cinco", "seis")
  Words <- switch( language, 
                   French=French,
                   Spanish=Spanish,
                   English=English
  ) 
  return(Words[integer+1])
}

digitToWord(c(1,2,3),"English")

digitToWord(4:6,"French")

lettersMatch <- function(words, pattern){
  ans <- grep(pattern,words)
  return(words[ans])
}

lettersMatch(c("super","cali","fab","dooze"),"^....$")

lettersMatch(c("super","cali","fab","dooze"),"^.....$")

words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))

crosswordPattern <- function(v,numchar){
  scrabstr  <- rep(".",numchar)
  scrabstr[v] <- names(v)
  scrabstr2 <- paste("^",paste(scrabstr,collapse=""),"$",sep="")
  matched2 <- grep(scrabstr2,words)
  return(words[matched2])
}

crosswordPattern(c(q=1,s=7),7)

piSeries <- function(n){
  k <- 1:n
  terms <- (-1)^(k+1)/(2*k-1)
  return(4*sum(terms))
}

piSeries(100)

howCloseToPi <- function(n){
  k <- 1:n
  y <- sapply(k, FUN=piSeries) - pi
  plot(k,y,xlab="n",ylab="Approx to pi")
}

howCloseToPi(200)

piSeries(160)

##Need about 160 terms to specify pi to three digits

##I'd estimate that about 800 terms are required to specify pi to 15 digits.
##160 terms satisfy 3 digits. 15/3 = 5. 160 * 5 = 800.

randomApproxToPi <- function(n){
  x <- runif(n)
  y <- runif(n)
  z <- x^2 + y^2
  return(4*mean(z<1))
}

randomApproxToPi(500)

CloseToPiRandomApprox <- function(n){
  k <- 1:n
  y <- sapply(k, FUN=randomApproxToPi) - pi
  plot(k,y,xlab="n",ylab="Approx to pi")
}

CloseToPiRandomApprox(500)