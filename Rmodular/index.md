Wo sind die Routinen enthalten
------------------------------

![](https://raw.githubusercontent.com/Japhilko/IntroR/master/2017/slides/figure/figure/Packages.PNG)

-   Viele Funktionen sind im Basis-R enthalten
-   Viele spezifische Funktionen sind in zusätzlichen Bibliotheken
    integriert
-   R kann modular erweitert werden durch sog. packages bzw. libraries
-   Auf CRAN werden die wichtigsten packages gehostet (im Moment 10430)
-   Weitergehende Pakete finden sich z.B. bei
    [bioconductor](www.bioconductor.org)

<!-- -->

    install.packages("lme4")

    library(lme4)

Installation von Paketen mit RStudio
------------------------------------

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/PaketeRstudio.PNG?raw=true)

Vorhandene Pakete und Installation
----------------------------------

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/packages3.PNG?raw=true)

Übersicht viele nützliche Pakete:
---------------------------------

-   Luhmann - [Tabelle mit vielen nützlichen
    Paketen](http://www.beltz.de/fileadmin/beltz/downloads/OnlinematerialienPVU/28090_Luhmann/Verwendete%20Pakete.pdf)

Weitere interessante Pakete:

-   Paket für den Import/Export -
    [foreign](http://cran.r-project.org/web/packages/foreign/foreign.pdf)

-   [Pakete für Survey
    Sampling](http://iase-web.org/documents/papers/icots8/ICOTS8_4J1_TILLE.pdf)

-   `xtable` Paket für die Integration von Latex und R ([xtable
    Galerie](http://cran.r-project.org/web/packages/xtable/vignettes/xtableGallery.pdf))

-   [Paket zur Erzeugung von
    Dummies](http://cran.r-project.org/web/packages/dummies/dummies.pdf)

-   [Multivariate
    Normalverteilung](http://cran.r-project.org/web/packages/mvtnorm/index.html)

-   [Paket für Karten](http://www.r-bloggers.com/tag/maptools/)

Pakete von Github installieren
------------------------------

    install.packages("devtools")
    library(devtools)

    install_github("hadley/ggplot2")

Wie bekomme ich einen Überblick
-------------------------------

-   [Explore Packages Currently on
    CRAN](https://mran.microsoft.com/packages/)

-   [Pakete die in letzter Zeit von CRAN heruntergeladen
    wurden](https://gallery.shinyapps.io/cran-gauge/)

CRAN Task Views
---------------

-   Zu einigen Themen sind alle Möglichkeiten in R zusammengestellt.
    ([Übersicht der Task Views](https://cran.r-project.org/web/views/))
-   Zur Zeit gibt es 35 Task Views
-   [Alle Pakete eines Task Views können mit folgendem Befehl
    installiert werden:](https://mran.microsoft.com/rpackages/)

<!-- -->

    install.packages("ctv")
    library("ctv")
    install.views("Bayesian")

![](figure/CRANtaskViews.PNG)

Aufgabe - Vorbereitung
----------------------

-   Prüfen Sie, ob eine Version von R auf Rechner installiert ist.
-   Falls dies nicht der Fall ist, laden Sie [R](r-project.org) runter
    und installieren Sie R.
-   Prüfen Sie, ob Rstudio installiert ist.
-   Falls nicht - [Installieren](http://www.rstudio.com/) sie Rstudio.
-   Laden Sie die R-Skripte von meinem GitHub-Account
-   Erstellen Sie ein erstes Script und finden Sie das Datum mit dem
    Befehl `date()` und die R-version mit `sessionInfo()` heraus.

<!-- -->

    date()

    ## [1] "Thu Jun 22 09:31:24 2017"

    sessionInfo()

    ## R version 3.3.2 (2016-10-31)
    ## Platform: x86_64-w64-mingw32/x64 (64-bit)
    ## Running under: Windows 7 x64 (build 7601) Service Pack 1
    ## 
    ## locale:
    ## [1] LC_COLLATE=German_Germany.1252  LC_CTYPE=German_Germany.1252   
    ## [3] LC_MONETARY=German_Germany.1252 LC_NUMERIC=C                   
    ## [5] LC_TIME=German_Germany.1252    
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] backports_1.0.4 magrittr_1.5    rprojroot_1.1   tools_3.3.2    
    ##  [5] htmltools_0.3.5 yaml_2.1.14     Rcpp_0.12.9     stringi_1.1.2  
    ##  [9] rmarkdown_1.3   knitr_1.15.1    stringr_1.2.0   digest_0.6.11  
    ## [13] evaluate_0.10
