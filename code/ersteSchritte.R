#' ---
#' title: "Erste Schritte"
#' author: "Jan-Philipp Kolb"
#' date: "22 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' 
#' ## R ist eine Objekt-orientierte Sprache
#' 
#' Vektoren und Zuweisungen
#' 
#' -  R ist eine Objekt-orientierte Sprache
#' -  `<-` ist der Zuweisungsoperator (Shortcut: "Alt" + "-")
#' 
## ------------------------------------------------------------------------
b <- c(1,2) # erzeugt ein Objekt mit den Zahlen 1 und 2

#' -  Eine Funktion kann auf dieses Objekt angewendet werden:
#' 
## ------------------------------------------------------------------------
mean(b) # berechnet den Mittelwert

#' 
#' Mit den folgenden Funktionen können wir etwas über die Eigenschaften des Objekts lernen:
#' 
## ------------------------------------------------------------------------
length(b) # b hat die Länge 2

#' 
#' 
#' ## Objektstruktur - Datentypen
#' 
## ------------------------------------------------------------------------
str(b) # b ist ein numerischer Vektor

#' 
#' - mehr zu den [möglichen Datentypen](http://www.statmethods.net/management/typeconversion.html) später
#' 
#' ## Funktionen im base-Paket
#' 
#' |Funktion |Bedeutung          |Beispiel  |
#' |:--------|:------------------|:---------|
#' |length() |Länge              |length(b) |
#' |max()    |Maximum            |max(b)    |
#' |min()    |Minimum            |min(b)    |
#' |sd()     |Standardabweichung |sd(b)     |
#' |var()    |Varianz            |var(b)    |
#' |mean()   |Mittelwert         |mean(b)   |
#' |median() |Median             |median(b) |
#' 
#' Diese Funktionen brauchen nur ein Argument.
#' 
#' ## Funktionen mit mehr Argumenten
#' 
#' Andere Funktionen brauchen mehr:
#' 
#' |Argument   |Bedeutung         |Beispiel       |
#' |:----------|:-----------------|:--------------|
#' |quantile() |90 % Quantile     |quantile(b,.9) |
#' |sample()   |Stichprobe ziehen |sample(b,1)    |
#' 
#' 
#' ## Beispiel - Funktionen mit einem Argument
#' 
## ------------------------------------------------------------------------
max(b)
min(b)
sd(b)
var(b)

#' 
#' ## Funktionen mit einem Argument
#' 
## ------------------------------------------------------------------------
mean(b)
median(b)

#' 
#' 
#' ## Funktionen mit mehr Argumenten
#' 
## ------------------------------------------------------------------------
quantile(b,.9)
sample(b,1) 

#' 
#' 
#' ## [Übersicht Befehle](http://cran.r-project.org/doc/manuals/R-intro.html)
#' 
#' <http://cran.r-project.org/doc/manuals/R-intro.html>
#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/UebersichtBefehle.PNG)
#' 
#' ## Aufgabe - Zuweisungen und Funktionen
#' 
#' Erzeugt einen Vektor b mit den Zahlen von 1 bis 5 und berechnet...
#' 
#' 
#' 1. den Mittelwert
#' 
#' 2. die Varianz
#' 
#' 3. die Standardabweichung
#' 
#' 4. die quadratische Wurzel aus dem Mittelwert
#' 
#' 
#' ## Verschiedene Datentypen
#' 
#' |Datentyp  |Beschreibung                 |Beispiel      |
#' |:---------|:----------------------------|:-------------|
#' |numeric   |ganze und reele Zahlen       |`5, 3.462`    |
#' |logical   |logische Werte               |`FALSE, TRUE` |
#' |character |Buchstaben und Zeichenfolgen |`"Hallo"`     |
#' 
#' Quelle: [R. Münnich und M. Knobelspieß](https://www.uni-trier.de/fileadmin/fb4/prof/VWL/FIN/Oekonometrie/PC-UEbung/Einfuehrung_in_R.pdf) (2007): Einführung in das statistische Programmpaket R
#' 
#' ## Verschiedene Datentypen
#' 
## ------------------------------------------------------------------------
b <- c(1,2) # numeric
log <- c(T,F) # logical
char <-c("A","b") # character
fac <- as.factor(c(1,2)) # factor

#' 
#' Mit `str()` bekommt man den Objekttyp.
#' 
## ------------------------------------------------------------------------
str(fac)

#' 
#' 
#' 
#' ## Indizieren eines Vektors:
#' 
#' 
## ------------------------------------------------------------------------
A1 <- c(1,2,3,4)
A1
A1[1]
A1[4]
A1[1:3]
A1[-4]

#' 
#' 
#' ## Logische Operatoren
#' 
## ------------------------------------------------------------------------
# Ist 1 größer als 2?
1>2
1<2

1==2

#' 
#' 
#' 
#' ## Sequenzen
#' 
## ------------------------------------------------------------------------
# Sequenz von 1 bis 10
1:10
# das gleiche Ergebnis
seq(1,10)

#' 
#' ## Weitere Sequenzen
#' 
## ------------------------------------------------------------------------
seq(-2,8,by=1.5)

a <-seq(3,12,length=12)
a

b <- seq(to=5,length=12,by=0.2)
b

#' 
#' 
#' ## Reihenfolge von Argumenten
#' 
## ------------------------------------------------------------------------
1:10
seq(1,10,1)
seq(length=10,from=1,by=1)

#' 
#' 
#' ## Wiederholungen
#' 
## ------------------------------------------------------------------------
# wiederhole 1 10 mal
rep(1,10)
rep("A",10)

#' 
#' ## Die Funktion paste
#' 
## ----eval=F--------------------------------------------------------------
## ?paste

#' 
#' 
## ------------------------------------------------------------------------
paste(1:4)
paste("A", 1:6, sep = "")

#' 
#' - Ein weiteres Beispiel:
#' 
## ------------------------------------------------------------------------
paste0("A", 1:6)

#' 
#' 
