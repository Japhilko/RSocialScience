#' ---
#' title: "Datenexport"
#' author: "Jan-Philipp Kolb"
#' date: "12 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval=T)

#' 
#' ## Die Exportformate von R
#' 
#' -  In R werden offene Dateiformate bevorzugt
#' -  Genauso wie `read.X()` Funktionen stehen viele `write.X()` Funktionen zur Verfügung
#' -  Das eigene Format von R sind sog. Workspaces (`.RData`)
#' 
#' ## Beispieldatensatz erzeugen
#' 
## ------------------------------------------------------------------------
A <- c(1,2,3,4)
B <- c("A","B","C","D")

mydata <- data.frame(A,B)

#' 
#' 
## ----eval=T,echo=F-------------------------------------------------------
library(knitr)
kable(mydata)

#' 
#' 
#' 
#' ## Überblick Daten Import/Export
#' 
#' - wenn mit R weitergearbeitet wird, eignet sich das `.RData` Format am Besten:
#' 
## ----eval=F--------------------------------------------------------------
## save(mydata, file="mydata.RData")

#' 
#' - Der Datensatz kann dann mit `load` wieder eingelesen werden
#' 
## ----eval=F--------------------------------------------------------------
## load("mydata.RData")

#' 
#' 
#' ## Daten in `.csv` Format abspeichern
#' 
## ----eval=F--------------------------------------------------------------
## write.csv(mydata,file="mydata.csv")

#' 
#' - Wenn mit Deutschem Excel weitergearbeitet werden soll, eignet sich  `write.csv2` besser
#' 
## ----eval=F--------------------------------------------------------------
## write.csv2(mydata,file="mydata.csv")

#' 
#' - Sonst sieht das Ergebnis so aus:
#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/csvDeutsch.PNG)
#' 
#' ## [Das Paket `xlsx`](http://www.sthda.com/english/wiki/r-xlsx-package-a-quick-start-guide-to-manipulate-excel-files-in-r#read-an-excel-file)
#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/sthda.PNG)
#' 
#' 
## ----eval=F--------------------------------------------------------------
## library(xlsx)
## write.xlsx(mydata,file="mydata.xlsx")

#' 
#' ## [Das Paket `foreign`](https://www.r-bloggers.com/readingwriting-stata-dta-files-with-foreign/)
#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/isRstata.PNG)
#' 
#' - Funktionen im Paket `foreign`
#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/Funktionenforeign.PNG)
#' 
#' 
#' ## Daten in stata Format abspeichern
#' 
## ----eval=F--------------------------------------------------------------
## library(foreign)
## write.dta(mydata,file="data/mydata.dta")

#' 
#' ## Das Paket `rio`
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("rio")

#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/ImportExport.PNG)
#' 
#' ## [Daten als .sav abspeichern (SPSS)](https://cran.r-project.org/web/packages/rio/vignettes/rio.html)
#' 
## ----eval=F--------------------------------------------------------------
## library("rio")
## # create file to convert
## 
## export(mtcars, "data/mtcars.sav")

#' 
#' 
#' ## Dateiformate konvertieren
#' 
## ----eval=F--------------------------------------------------------------
## export(mtcars, "data/mtcars.dta")
## 
## # convert Stata to SPSS
## convert("data/mtcars.dta", "data/mtcars.sav")

#' 
#' 
#' ## Links Export
#' 
#' - [Quick R](http://www.statmethods.net/input/exportingdata.html) für das Exportieren von Daten:
#' 
#' - Hilfe zum Export auf dem [cran Server](http://cran.r-project.org/doc/manuals/r-release/R-data.pdf)
#' 
#' - [Daten aus R heraus bekommen](https://www.stat.ubc.ca/~jenny/STAT545A/block05_getNumbersOut.html)
#' 
