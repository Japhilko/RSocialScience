#' ---
#' title: "Datenaufbereitung"
#' author: "Jan-Philipp Kolb"
#' date: "21 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval=T)

#' 
#' 
#' 
#' ## Data Frames
#' 
#' Beispieldaten einlesen:
#' 
## ----echo=F--------------------------------------------------------------
library(foreign)
dat<-read.dta("https://github.com/Japhilko/RSocialScience/raw/master/data/GPanel.dta")

#' 
## ----eval=F--------------------------------------------------------------
## library(foreign)
## dat<-read.dta("https://github.com/Japhilko/RSocialScience/
##               raw/master/data/GPanel.dta")

#' 
#' 
## ------------------------------------------------------------------------
typeof(dat)

#' 
#' 
#' ## In Dataframe übertragen
#' 
#' Diese beiden Vektoren zu einem data.frame verbinden:
#' 
## ------------------------------------------------------------------------
Daten <- data.frame(dat)

#' 
#' Anzahl der Zeilen/Spalten herausfinden
#' 
## ------------------------------------------------------------------------
nrow(Daten) # Zeilen
ncol(Daten) # Spalten

#' 
#' ## Die Daten anschauen
#' 
#' - die ersten zeilen anschauen
#' 
## ----eval=F--------------------------------------------------------------
## head(Daten)

#' 
#' - Übersicht mittels Rstudio
#' 
#' ![](https://github.com/Japhilko/RSocialScience/raw/master/slides/figure/DatenAnschauen.PNG)
#' 
#' 
#' ## Indizieren
#' 
#' Indizieren eines dataframe:
#' 
## ------------------------------------------------------------------------
Daten[1,1]

#' 
## ------------------------------------------------------------------------
Daten[2,]
Daten[,1]

#' 
## ------------------------------------------------------------------------
Daten[,1:2]

#' 
#' ## Operatoren um Subset für Datensatz zu bekommen
#' 
#' Diese Operatoren eignen sich gut um Datensätze einzuschränken
#' 
## ------------------------------------------------------------------------
Dauer <- as.numeric(Daten$bazq020a)
head(Daten[Dauer>20,])

#' 
#' 
#' ## Einschränken mit dem Paket `tidyverse`
#' 
#' - einfacher geht es mit dem Paket `tidyverse`
#' 
## ------------------------------------------------------------------------
library(tidyverse)
filter(Daten, Dauer>20)

#' 
#' 
#' 
#' ## Datensätze einschränken
#' 
## ------------------------------------------------------------------------
SEX <- Daten$a11d054a

Daten[SEX=="Männlich",]
# gleiches Ergebnis:
Daten[SEX!="Weiblich",]

#' 
#' 
#' ## Weitere wichtige Optionen
#' 
## ------------------------------------------------------------------------
# Ergebnis in ein Objekt speichern
subDat <- Daten[Dauer>20,]

#' 
## ------------------------------------------------------------------------
# mehrere Bedingungen können mit
# & verknüpft werden:
Daten[Dauer>18 & SEX=="Männlich",]

#' 
#' ## Die Nutzung einer Sequenz
#' 
## ------------------------------------------------------------------------
Daten[1:3,]

#' 
#' 
#' 
#' ## [Variablen Labels](https://stackoverflow.com/questions/2151147/using-stata-variable-labels-in-r)
#' 
## ------------------------------------------------------------------------
library(foreign)
dat <- read.dta("https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")

#' 
## ----eval=F--------------------------------------------------------------
## attributes(dat)

#' 
#' 
#' 
## ----eval=T--------------------------------------------------------------
var.labels <- attr(dat,"var.labels")

#' 
#' - Genauso funktioniert es auch mit dem Paket `haven`
#' 
## ----eval=F,echo=T-------------------------------------------------------
## library(haven)
## dat2 <- read_dta(
## "https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")
## var.labels2 <- attr(dat,"var.labels")

#' 
#' ## Die Spaltennamen umbenennen
#' 
#' - Mit `colnames` bekommt man die Spaltennamen angezeigt
#' 
## ------------------------------------------------------------------------
colnames(dat)

#' 
#' - So kann man die Spaltennamen umbenennen:
#' 
## ------------------------------------------------------------------------
colnames(dat) <-var.labels

#' 
#' - Analog geht das für die Reihennamen
#' 
## ------------------------------------------------------------------------
rownames(dat)

#' 
#' 
#' ## Indizieren
#' 
#' - Das Dollarzeichen kann man auch nutzen um einzelne Spalten anzusprechen
#' 
## ------------------------------------------------------------------------
head(dat$a11c019a)

dat$a11c019a[1:10]

#' 
#' ## Auf Spalten zugreifen
#' 
#' - Wie bereits beschrieben kann man auch Zahlen nutzen um auf die Spalten zuzugreifen
#' 
#' 
## ----eval=F--------------------------------------------------------------
## head(dat[,1])
## head(dat[,"a11c019a"]) # liefert das gleiche Ergebnis

#' 
#' ## Exkurs - Labels wie verwenden
#' 
#' > Tools for Working with Categorical Variables (Factors) 
#' 
## ------------------------------------------------------------------------
library("forcats")

#' 
#' - `fct_collapse` -  um Faktorlevel zusammenzufassen
#' - `fct_count` - um die Einträge in einem Faktor zu zählen
#' - `fct_drop`	- Unbenutzte Levels raus nehmen
#' 
#' ## [Rekodieren](https://www.r-bloggers.com/recoding-variables-in-r-pedagogic-considerations/)
#' 
## ------------------------------------------------------------------------
library(car)

#' 
## ----eval=T--------------------------------------------------------------
head(dat$a11c020a)
head(recode(dat$a11c020a,"'Eher unzufrieden'='A';else='B'"))

#' 
#' ## Das Paket `tibble`
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("tibble")

#' 
#' 
## ------------------------------------------------------------------------
library(tibble)
gpanel1 <- as_tibble(dat)
gpanel1

#' 
#' ## Schleifen
#' 
## ------------------------------------------------------------------------
erg <- vector()

for (i in 1:ncol(dat)){
  erg[i] <- length(table(dat[,i]))  
}

#' 
#' ## [Fehlende Werte ausschließen](http://faculty.nps.edu/sebuttre/home/R/missings.html)
#' 
#' - Mathe-Funktionen haben in der Regel einen Weg, um fehlende Werte in ihren Berechnungen auszuschließen.
#' - `mean(), median(), colSums(), var(), sd(), min()` und `max() all take the na.rm argument.
#' 
#' 
#' ## Fehlende Werte umkodieren
#' 
## ------------------------------------------------------------------------
Daten$bazq020a[Daten$bazq020a==-99] <- NA

#' 
#' - [Quick-R zu fehlenden Werten](http://www.statmethods.net/input/missingdata.html)
#' 
#' - [Fehlende Werte rekodieren](http://uc-r.github.io/na_recode)
#' 
#' ## Weitere Links
#' 
#' - [Tidy data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html) - das Paket `tidyr`
#' 
#' - [Die `tidyverse` Sammlung](http://tidyverse.org/)
#' 
#' - [Data wrangling with R and RStudio](https://www.rstudio.com/resources/webinars/data-wrangling-with-r-and-rstudio/)
