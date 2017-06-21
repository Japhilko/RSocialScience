# Jan-Philipp Kolb
# Wed Jun 21 09:37:52 2017

library(foreign)

setwd("D:/Daten/owncloud/Workshops/RSocialScience")

dat <- read.dta("ZA5666_d_gesis_panel_campus_file_b_2014_STATA12.dta")


nrow(dat)
ncol(dat)

var.labels <- attr(dat,"var.labels")

samp <- sample(1:nrow(dat),100)

GPanel <- dat[samp,c(colnames(dat)[5:20],c("bazq020a","a11d054a","a11d056z"))]

datapath <- "D:/Daten/GitHub/RSocialScience/data"

setwd(datapath)

write.dta(GPanel,file="GPanel.dta")


dat3 <- read.dta("https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")
