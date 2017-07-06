date()
sessionInfo()

b <- c(1,2)
mean(b) # jjjj
# hhhhhhhhhh

n <- 1000

sample(1:1000,n*.7)

ab <- c(12,12.15,12.30,12.45,13)

sample(ab,1)

b <- c(1,2,3,4,5)

mean(b)

var(b)

sd(b)

sqrt(mean(b))

# Alternative
mb <- mean(b)
sqrt(mb)

a <- c(1,2)

a == 1 


seq(1,4)

seq(from=1,to=4)

seq(to=4,from=1)


install.packages("uwIntroStats")
install.packages("descriptr")

library(car)

mlexdat <- read_csv("D:/GESIS/Workshops/RSocialScience/data/mlexdat.csv")
mlexdat <- read_csv("D:/GESIS/Workshops/RSocialScience/data/mlexdat.csv")


##########################################

erg1 <- vector()

for(i in 1:20){
  erg1[i]<-i^i 
  cat(i,"\n")
}

# fehlende Werte

ab <- 1:10

ab[5] <- NA
ab
mean(ab)

mean(ab,na.rm=T)

for(i in 1:4){
  cat(i,"\n")
}

for (i in 1:ncol(Daten)){
  Daten[Daten[,i]==-99,i] <- NA 
  cat(i ,"\n")
}

Daten[]



library(mlmRev)
data(Chem97)

png("score.png")
hist(Chem97$gcsescore)
dev.off()

x<-rnorm(1000)
y<-rnorm(1000)

plot(x,y,pch="$",col=rgb(1,0,0,.1))



?prop.table

##############################################


?VADeaths

?barplot

barplot(VADeaths)

barplot(VADeaths,beside=T,
        col=1:5)


a <- sample(1:3,100,replace=T)
b <- sample(1:3,100,replace=T)

prop.table(table(a))

table(a,b)
prop.table(table(a,b))

prop.table(table(a,b),1)
prop.table(table(a,b),2)

install.packages("psych")

library("psych")
pairs.panels(iris[,1:4],bg=c("red","yellow","blue")
             [iris$Species],pch=21,main="")

###########################################



save.image("Rsocialscience2.RData")

load("")
getwd()

?savehistory

###############################################

datapath <- "D:/GESIS/Workshops/RSocialScience/data"

setwd(datapath)
setwd("C:/")

getwd()
setwd("..")
setwd("data/")

Daten$a11c01

colnames(Daten)
rownames(Daten)

Daten$Dauer <- as.numeric(Daten$bazq020a)

attributes(Daten)
attr(Daten,"row.names")

library(foreign)
?read.dta
