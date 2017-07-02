#' ---
#' title: "Data Tables"
#' author: "Jan-Philipp Kolb"
#' date: "20 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,warning=F,message = F)
internet =F

#' 
#' ## The R-package DT
#' 
#' - [DT: An R interface to the DataTables library](https://rstudio.github.io/DT/)
#' 
## ----eval=F,eval=internet------------------------------------------------
install.packages('DT')

#' 
#' 
## ----eval=internet-------------------------------------------------------
library('DT')

#' 
## ----eval=internet-------------------------------------------------------
exdat <- read.csv("data/exdat.csv")

#' 
## ----eval=internet-------------------------------------------------------
datatable(exdat)

#' 
#' ## Beispiel für interaktive Tabelle
#' 
#' Hier ist das Ergebnis - [Beispiel für eine interaktive Tabelle](http://rpubs.com/Japhilko82/osmplzbe)
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RpubsPLZBer.PNG)
#' 
#' 
#' ## [Default Optionen verändern](http://rstudio.github.io/DT/options.html)
#' 
## ----eval=internet-------------------------------------------------------
datatable(head(exdat, 20), options = list(
  columnDefs = list(list(className = 'dt-center', targets = 5)),
  pageLength = 5,
  lengthMenu = c(5, 10, 15, 20)
))

#' 
#' 
#' ## [Suchoptionen kennzeichnen](http://rstudio.github.io/DT/006-highlight.html)
#' 
## ----eval=internet-------------------------------------------------------
datatable(exdat, options = list(searchHighlight = TRUE), 
          filter = 'top')

#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/tbHighlsearch.PNG)
#' 
