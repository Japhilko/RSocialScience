Datenimport
-----------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/Datenimport.PNG)

Dateiformate in R
-----------------

-   Von R werden quelloffene, nicht-proprietÃ¤re Formate bevorzugt
-   Es kÃ¶nnen aber auch Formate von anderen Statistik Software Paketen
    eingelesen werden
-   R-user speichern Objekte gerne in sog. Workspaces ab
-   Auch hier jedoch gilt: (fast) alles andere ist mÃ¶glich

Formate - base package
----------------------

R unterstÃ¼tzt von Haus aus schon einige wichtige Formate:

-   CSV (Comma Separated Values): `read.csv()`
-   FWF (Fixed With Format): `read.fwf()`
-   Tab-getrennte Werte: `read.delim()`

Datenimport leicht gemacht mit Rstudio
--------------------------------------

![Import
Button](https://i1.wp.com/thepracticalr.files.wordpress.com/2017/01/rstudio-old-import.png?w=456&ssl=1)

CSV aus dem Web einladen
------------------------

-   Datensatz:

<https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD>

-   [Datenimport mit
    Rstudio](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-RStudio)

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/ImportCSVPNG.PNG)

Der Arbeitsspeicher
-------------------

So findet man heraus, in welchem Verzeichnis man sich gerade befindet

    getwd()

So kann man das Arbeitsverzeichnis Ã¤ndern:

Man erzeugt ein Objekt in dem man den Pfad abspeichert:

    main.path <- "C:/" # Beispiel fÃ¼r Windows
    main.path <- "/users/Name/" # Beispiel fÃ¼r Mac
    main.path <- "/home/user/" # Beispiel fÃ¼r Linux

Und Ã¤ndert dann den Pfad mit setwd()

    setwd(main.path)

Bei Windows ist es wichtig Slashs anstelle von Backslashs zu verwenden.

Alternative - Arbeitsspeicher
-----------------------------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/SetWD.png)

Import von Excel-Daten
----------------------

-   `library(foreign)` ist fÃ¼r den Import von fremden Datenformaten
    nÃ¶tig
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

ZunÃ¤chst muss das Arbeitsverzeichnis gesetzt werden, in dem sich die
Daten befinden:

    Dat <- read.csv("schuldaten_export.csv")

Wenn es sich um Deutsche Daten handelt:

    Dat <- read.csv2("schuldaten_export.csv")

Das Paket `readr`
-----------------

    install.packages("readr")

    library(readr)

-   [`readr` auf dem Rstudio
    Blogg](https://blog.rstudio.org/2015/10/28/readr-0-2-0/)

Import von Excel-Daten
----------------------

-   `library(readr)` ist fÃ¼r den Import von fremden Datenformaten
    hilfreich
-   Wenn Excel-Daten vorliegen - als .csv abspeichern

<!-- -->

    url <- "https://raw.githubusercontent.com/Japhilko/
    GeoData/master/2015/data/whcSites.csv"

    whcSites <- read.csv(url) 

Der Beispieldatensatz
---------------------

    head(data.frame(whcSites$name_en,whcSites$category))

    ##                                                      whcSites.name_en
    ## 1 Cultural Landscape and Archaeological Remains of the Bamiyan Valley
    ## 2                           Minaret and Archaeological Remains of Jam
    ## 3                          Historic Centres of Berat and Gjirokastra 
    ## 4                                                             Butrint
    ## 5                                             Al Qal'a of Beni Hammad
    ## 6                                                        M'Zab Valley
    ##   whcSites.category
    ## 1          Cultural
    ## 2          Cultural
    ## 3          Cultural
    ## 4          Cultural
    ## 5          Cultural
    ## 6          Cultural

Das Paket `haven`
-----------------

> Import and Export 'SPSS', 'Stata' and 'SAS' Files

    install.packages("haven")

    library(haven)

-   [Das R-Paket `haven` auf dem Rstudio
    Blogg](https://blog.rstudio.org/2016/10/04/haven-1-0-0/)

SPSS Dateien einlesen
---------------------

-   ZunÃ¤chst muss wieder der Pfad zum Arbeitsverzeichnis
    angeben werden.
-   SPSS-Dateien kÃ¶nnen auch direkt aus dem Internet geladen werden:

<!-- -->

    library(haven)
    mtcars <- read_sav(
    "https://github.com/Japhilko/RInterfaces/raw/master/
    data/mtcars.sav")

`foreign` kann ebenfalls zum Import genutzt werden
--------------------------------------------------

    library(foreign)
    link<- "http://www.statistik.at/web_de/static/
    mz_2013_sds_-_datensatz_080469.sav"

    ?read.spss
    Dat <- read.spss(link,to.data.frame=T)

stata Dateien einlesen
----------------------

    library(haven)
    oecd <- read_dta("https://github.com/Japhilko/IntroR/
                     raw/master/2017/data/oecd.dta")

-   EinfÃ¼hrung in Import mit R
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

Datenmanagement Ã¤hnlich wie in SPSS oder Stata
-----------------------------------------------

    install.packages("Rz")
    library(Rz)

[Weitere Alternative Rcmdr](https://cran.r-project.org/web/packages/Rcmdr/index.html)
-------------------------------------------------------------------------------------

    install.packages("Rcmdr")

-   [Funktioniert auch mit Rstudio](http://www.rcommander.com/)

<!-- -->

    library(Rcmdr)

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/Rcommander.PNG)

Aufgabe
-------

-   Gehen Sie auf meine Github Seite

<https://github.com/Japhilko/RSocialScience/tree/master/data>

-   Importieren Sie den Datensatz `GPanel.dta`
