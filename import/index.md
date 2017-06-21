Datenimport
-----------

![](figure/Datenimport.PNG)

Dateiformate in R
-----------------

-   Von R werden quelloffene, nicht-proprietäre Formate bevorzugt
-   Es können aber auch Formate von anderen Statistik Software Paketen
    eingelesen werden
-   R-user speichern Objekte gerne in sog. Workspaces ab
-   Auch hier jedoch gilt: (fast) alles andere ist möglich

Formate - base package
----------------------

R unterstützt von Haus aus schon einige wichtige Formate:

-   CSV (Comma Separated Values): `read.csv()`
-   FWF (Fixed With Format): `read.fwf()`
-   Tab-getrennte Werte: `read.delim()`

<!-- -->

    gpanel <- read.csv2("ZA5666_d_gesis_panel_campus_file_b_2014.csv")
    head(gpanel)

Der Arbeitsspeicher
-------------------

So findet man heraus, in welchem Verzeichnis man sich gerade befindet

    getwd()

So kann man das Arbeitsverzeichnis ändern:

Man erzeugt ein Objekt in dem man den Pfad abspeichert:

    main.path <- "C:/" # Beispiel für Windows
    main.path <- "/users/Name/" # Beispiel für Mac
    main.path <- "/home/user/" # Beispiel für Linux

Und ändert dann den Pfad mit setwd()

    setwd(main.path)

Bei Windows ist es wichtig Slashs anstelle von Backslashs zu verwenden.

Alternative - Arbeitsspeicher
-----------------------------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/SetWD.PNG)

Import von Excel-Daten
----------------------

-   `library(foreign)` ist für den Import von fremden Datenformaten
    nötig
-   Wenn Excel-Daten vorliegen - als .csv abspeichern
-   Dann kann `read.csv()` genutzt werden um die Daten einzulesen.
-   Bei Deutschen Daten kann es sein, dass man `read.csv2()` wegen der
    Komma-Separierung braucht.

<!-- -->

    library(foreign)
    ?read.csv
    ?read.csv2

CSV Dateien einlesen
--------------------

Zunächst muss das Arbeitsverzeichnis gesetzt werden, in dem sich die
Daten befinden:

    Dat <- read.csv("schuldaten_export.csv")

Wenn es sich um Deutsche Daten handelt:

    Dat <- read.csv2("schuldaten_export.csv")

SPSS Dateien einlesen
---------------------

Dateien können auch direkt aus dem Internet geladen werden:

    link<- "http://www.statistik.at/web_de/static/
    mz_2013_sds_-_datensatz_080469.sav"

    ?read.spss
    Dat <- read.spss(link,to.data.frame=T)

stata Dateien einlesen
----------------------

    MZ02 <- read.dta("MZ02.dta")

-   Einführung in Import mit R
    ([is.R](http://is-r.tumblr.com/post/37181850668/reading-writing-stata-dta-files-with-foreign))

[Das Paket `rio`](https://cran.r-project.org/web/packages/rio/vignettes/rio.html)
---------------------------------------------------------------------------------

    install.packages("rio")

    library("rio")
    x <- import("mtcars.csv")
    y <- import("mtcars.rds")
    z <- import("mtcars.dta")

-   [rio: A Swiss-Army Knife for Data
    I/O](https://cran.r-project.org/web/packages/rio/README.html)

Datenmanagement ähnlich wie in SPSS oder Stata
----------------------------------------------

    install.packages("Rz")
    library(Rz)

[Weitere Alternative Rcmdr](https://cran.r-project.org/web/packages/Rcmdr/index.html)
-------------------------------------------------------------------------------------

    install.packages("Rcmdr")

-   [Funktioniert auch mit Rstudio](http://www.rcommander.com/)

<!-- -->

    library(Rcmdr)

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/Rcommander.PNG)
