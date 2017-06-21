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
