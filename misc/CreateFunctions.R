if (1==1){
  cat("Ja")
}

installed.packages()

p <-"ggplot2"

is.element(p, installed.packages()[,1])

#### Funktionen

abfun <- function(x){
  mx <- mean(x,na.rm=T)
  cat("Hallo Welt")
  return(mx)
}

abfun(1:10)

abfun2 <- function(x,y=1:4){
  tab <- table(x,y)
  return(tab)
}

abfun2(1:4,1:4)

abfun2(1:4)

library(ggplot2)
data(diamonds)
diamonds2 <- diamonds[1:1000,]

x <- 1:4

qplot(x)
qplot(factor(x))

?png
png("plot.png",height=230)

library(ggmap)
qmap("Gesis Mannheim")


roller.lm <- lm(depression ~ weight, data = roller)

summary(roller.lm)
