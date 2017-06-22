# Jan-Philipp Kolb
# Wed Jun 21 09:37:52 2017

library(foreign)
library('DT')


setwd("D:/Daten/owncloud/Workshops/RSocialScience")

dat <- read.dta("ZA5666_d_gesis_panel_campus_file_b_2014_STATA12.dta")

var.labels <- attr(dat,"var.labels")

erg <- vector()
nauspr <- vector()

for (i in 1:ncol(dat)){
  tab <- table(dat[,i])
  erg[i] <- length(tab)  
  nauspr[i] <- names(sort(tab))[1]
}

## Erhebungsjahr

JahrI <- substr(colnames(dat),1,1)
Jahr <- rep(2013,length(JahrI))

Jahr[JahrI=="b"] <- 2014
Jahr[JahrI=="c"] <- 2015
Jahr[JahrI=="d"] <- 2016
Jahr[JahrI=="e"] <- 2017

table(Jahr)

infodat <- data.frame(Variablen=colnames(dat),
                      "Variablen Namen"=var.labels,
                      "Zahl der Ausprägungen"=erg,
                      "Häufigste Ausprägung"=nauspr,
                      Erhebungsjahr=Jahr)


datatable(infodat,filter="top")


# https://dbk.gesis.org/dbksearch/SDesc2.asp?DB=D&no=5982
