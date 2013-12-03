plotGamma <- function(s,r,...){
  x <- seq(0,100,length=101)
  plot(1:2,ylim=c(0,.04),xlim=c(0,100),xlab="x",ylab="Prob Density",type="n")
  lines(x,dgamma(x,s,r),...)
}

gammaApp <- function(){
  manipulate({plotGamma(s,r,col=color,lwd=lwd)},
             s=slider(0,25,initial=1,label="s",step=1),
             r=slider(0,1,initial=0,label="r",step=.1),
             color=picker(as.list(colors())),
             lwd = slider(0,10,initial=1,label="lwd",step=1)
  )
}


plotBeta2 <- function(a,b,sample,col=color,data,post){
  x <- seq(0,1,length=101)
  plot(1:2,ylim=c(0,5),xlim=c(0,1),xlab="x",ylab="Prob Density", type="n")
  lines(x, dbeta(x,a,b),col="red")
  if (data=="Show data"){
    lines(sample/10,col="blue")
    if (post=="Show posterior"){
      lines(x, dbeta(x,a+sample,10-sample+b),col="purple")
    }
  }
}

betaApp2 <- function(){
  manipulate({plotBeta2(a,b,sample,data=data,post=post)},
             a=slider(0,10,initial=1,label="Prior a",step=1),
             b=slider(0,10,initial=2,label="Prior b",step=1),
             mbutton = button("Calculate mean"),
             sdbutton = button("Calculate standard deviation"),
             sample=slider(0,10,initial=0,label="Posterior from x successes out of 10",step=1),
             databox = checkbox(FALSE,"Show data"),
             postbox = checkbox(FALSE,"Show posterior")
  )
}

plotBeta10 <- function(a,b,sample,col=color){
  x <- seq(0,1,length=101)
  plot(1:2,ylim=c(0,5),xlim=c(0,1),xlab="x",ylab="Prob Density", type="n")
  lines(x, dbeta(x,a,b),col="red")
    lines(sample/10,5,col="blue")
      lines(x, dbeta(x,a+sample,10-sample+b),col="purple")
  }

betaApp10 <- function(){
  manipulate({plotBeta10(a,b,sample)},
             a=slider(0,10,initial=1,label="Prior a",step=1),
             b=slider(0,10,initial=2,label="Prior b",step=1),
             sample=slider(0,10,initial=0,label="Posterior from x successes out of 10",step=1)
             )
}