#' ---
#' title: "Wie bekommt man Hilfe"
#' author: "Jan-Philipp Kolb"
#' date: "17 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' <!--
#' 
#' ## Wie bekommt man Hilfe 
#' 
#' - Foren, Blogs und Supportmöglichkeiten
#' 
#' -->
#' 
#' ## Wie bekommt man Hilfe?
#' 
#' -  [Um generell Hilfe zu bekommen:](http://itfeature.com/tag/how-to-get-help-in-r)
#' 
#' 
## ----eval=F--------------------------------------------------------------
## help.start()

#' 
#' -  [Online Dokumentation für die meisten Funktionen:](https://www.r-project.org/help.html)
#' 
## ----eval=F--------------------------------------------------------------
## help(name)

#' 
#' -  Nutze ? um Hilfe zu bekommen.
#' 
## ----eval=F--------------------------------------------------------------
## ?mean

#' 
#' -  example(lm) gibt ein Beispiel für die lineare Regression
#' 
## ----eval=F--------------------------------------------------------------
## example(lm)

#' 
#' ## Vignetten
#' 
#' - Dokumente zur Veranschaulichung und Erläuterung von Funktionen im Paket 
## ----eval=F--------------------------------------------------------------
## browseVignettes()

#' 
#' ## Demos
#' 
#' - zu manchem Paketen gibt es Demonstrationen, wie der Code zu verwenden ist
#' 
## ----eval=F--------------------------------------------------------------
## demo()
## demo(nlm)

#' 
#' ## Die Funktion `apropos`
#' 
#' - sucht alles, was mit dem eingegebenen String in Verbindung steht
#' 
## ------------------------------------------------------------------------
apropos("lm")

#' 
#' - man kann das auch in Verbindung mit regulären Ausdrücken verwenden
#' 
## ----eval=F--------------------------------------------------------------
## ?"regular expression"

#' 
#' 
## ----eval=F--------------------------------------------------------------
## help.search("^glm")

#' 
#' ## [Suchmaschine für die R-Seite](http://search.r-project.org/cgi-bin/namazu.cgi?query=glm&max=20&result=normal&sort=score&idxname=functions&idxname=vignettes&idxname=views)
#' 
## ----eval=F--------------------------------------------------------------
## RSiteSearch("glm")

#' 
#' 
#' ## Nutzung Suchmaschinen
#' 
#' -  Ich nutze meistens google 
#' -  Tippe:
#' 
#' ```
#' R-project + Was ich schon immer wissen wollte
#' ```
#' -  Das funktioniert natürlich mit jeder Suchmaschine!
#' 
#' ## [Stackoverflow](http://stackoverflow.com/)
#' 
#' -  Für Fragen zum Programmieren
#' -  [Ist nicht auf R fokussiert, es gibt aber viele Diskussionen zu R](https://stackoverflow.com/tags/r/info)
#' -  Sehr detailierte Diskussionen
#' 
#' ![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/StackoverflowEx.PNG?raw=true)
#' 
#' ## [Quick R](http://www.statmethods.net/interface/help.html)
#' 
#' - Immer eine Seite mit Beispielen und Hilfe zu einem Thema
#' - Beispiel: [Quick R - Getting Help](http://www.statmethods.net/interface/help.html)
#' 
#' ### Weitere Links
#' 
#' - [Übersicht - Hilfe bekommen in R](https://www.r-project.org/help.html)
#' 
#' - [Eine Liste mit HowTo`s](http://rprogramming.net/)
#' 
#' - [Eine Liste der wichtigsten R-Befehle](https://www.personality-project.org/r/r.commands.html)
#' 
#' ## Ein Schummelzettel - Cheatsheet
#' 
#' <https://www.rstudio.com/resources/cheatsheets/>
#' 
#' ![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/cheatsheetBaseR.PNG?raw=true)
