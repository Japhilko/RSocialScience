#' ---
#' title: "Kreuztabellen und Zusammenhänge"
#' author: "Jan-Philipp Kolb"
#' date: "20 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' 
#' ## Die Daten laden
#' 
## ----eval=F--------------------------------------------------------------
## library(foreign)
## dat <- read.dta("https://github.com/Japhilko/RSocialScience/
##                 blob/master/data/GPanel.dta?raw=true")

#' 
## ----echo=F--------------------------------------------------------------
library(foreign)
dat <- read.dta("https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")

#' 
#' ## Eine Kreuztabelle erstellen
#' 
## ------------------------------------------------------------------------
Beruf_Gefordert <- dat$a11c109a
Beruf_Anerkannt <- dat$a11c111a


table(Beruf_Gefordert,Beruf_Anerkannt)

#' 
## ----eval=F,echo=F-------------------------------------------------------
## Berufsgruppe <- dat$a11d092a
## FreizeitWichtigkeit <- dat$a11c100a
## 
## table(Berufsgruppe,FreizeitWichtigkeit)

#' 
#' ## Eine Dreidimensionale Kreuztabelle - Array
#' 
## ------------------------------------------------------------------------
Geschlecht <- dat$a11d054a
tab3 <- table(Beruf_Gefordert,Beruf_Anerkannt,Geschlecht)
tab3

#' 
#' ## Indizieren eines Arrays
#' 
#' - nun muss man mit zwei Kommas arbeiten beim Indizieren
#' 
## ------------------------------------------------------------------------
tab3[,,1]

#' 
#' 
#' ## Edgar Anderson's Iris Daten
#' 
## ------------------------------------------------------------------------
data(iris)
head(iris)

#' 
#' petal length and width - Blütenblatt Länge und Breite
#' 
#' sepal length and width - Kelchblatt Länge und Breite 
#' 
#' - [Wikipedia Artikel zum IRIS Datensatz](https://en.wikipedia.org/wiki/Iris_flower_data_set)
#' 
#' ## Die Variable Species
#' 
## ------------------------------------------------------------------------
table(iris$Species)

#' 
#' 
#' 
#' ## Zusammenhang zwischen stetigen Variablen
#' 
## ------------------------------------------------------------------------
# Pearson Korrelationskoeffizient
cor(iris$Sepal.Length,iris$Petal.Length)

#' 
#' - Korrelation zwischen Länge Kelchblatt und Blütenblatt 0,87
#' - Der Pearson'sche Korrelationskoeffizient ist die default methode in `cor()`.
#' 
#' ## Zusammenhang zwischen mehreren Variablen
#' 
## ------------------------------------------------------------------------
pairs(iris[,1:4])

#' 
#' ## Zusammenhang zwischen mehreren Variablen
#' 
## ------------------------------------------------------------------------
library("psych")
pairs.panels(iris[,1:4],bg=c("red","yellow","blue")
[iris$Species],pch=21,main="")

#' 
#' ## Verschiedene Korrelationskoeffizienten
#' 
#' 
## ------------------------------------------------------------------------
# Pearson Korrelationskoeffizient
cor(iris[,1:4]) 

#' 
## ------------------------------------------------------------------------
# Kendall's tau (Rangkorrelation)
cor(iris[,1:4], method = "kendall") 

#' 
## ------------------------------------------------------------------------
# Spearman's rho (Rangkorrelation)
cor(iris[,1:4], method = "spearman") 

#' 
#' ## Der `BankWages` Datensatz
#' 
#' > Wages of employees of a US bank
#' 
## ----message=F-----------------------------------------------------------
library("lattice")
library("AER")
data(BankWages)

#' 
## ----echo=F--------------------------------------------------------------
library(knitr)
cat <- c("job category, with levels 'custodial', 'admin' and 'manage'","Education in years","Factor indicating gender","Factor. Is the employee member of a minority?")
bwdat <- data.frame(variables=colnames(BankWages),categories=cat)
kable(bwdat)

#' 
#' 
#' 
#' ## Levelplot
#' 
## ------------------------------------------------------------------------
levelplot(table(BankWages$education,BankWages$job))

#' 
#' ## [Levelplot mit anderen Farben](http://r.789695.n4.nabble.com/adjusting-levelplot-color-scale-to-data-td3997342.html)
#' 
## ------------------------------------------------------------------------
levelplot(table(BankWages$education,BankWages$job),
          col.regions=colorRampPalette(c("blue","red","white")))

#' 
#' 
#' 
#' ## Zusammenhang zwischen kategorialen Variablen
#' 
#' - `chisq.test()` testet, ob zwei kategoriale Merkmale stochastisch unabhängig sind.
#' - Getestet wird gegen die Nullhypothese der Gleichverteilung
#' 
## ------------------------------------------------------------------------
chisq.test(BankWages$education,BankWages$job)

#' 
#' 
#' ## Visualisierung von Zusammenhängen zwischen kategorialen Variablen
#' 
## ------------------------------------------------------------------------
mosaicplot(~ Sex + Age + Survived, 
           data = Titanic, color = TRUE)

#' 
#' ## Shading
#' 
#' Flächen werden entsprechend der Residuen eingefärbt:
#' 
## ------------------------------------------------------------------------
mosaicplot(~ Sex + Age + Survived, 
           data = Titanic, shade = TRUE)

#' 
#' ## Literatur zu Zusammenhangsmaßen
#' 
#' -  Methodensammlung mit R
#' -  Beispiele zu Zusammenhangsmaßen
#' -  Umsetzung in R
#' 
#' Sachs - [Angewandte Statistik mit R](https://books.google.de/books/about/Angewandte_Statistik.html?id=S-zXmAEACAAJ&redir_esc=y)
