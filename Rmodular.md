[Wo sind die Routinen enthalten](https://stats.idre.ucla.edu/r/seminars/intro/)
-------------------------------------------------------------------------------

-   Viele Funktionen sind im Basis-R enthalten
-   Viele spezifische Funktionen sind in zusÃ¤tzlichen Bibliotheken
    integriert
-   R kann modular erweitert werden durch sog. packages bzw. libraries
-   Auf CRAN werden die wichtigsten packages gehostet (im Moment 10430)
-   Weitergehende Pakete finden sich z.B. bei
    [bioconductor](www.bioconductor.org)

Ãœbersicht R-Pakete
-------------------

![](https://raw.githubusercontent.com/Japhilko/IntroR/master/2017/slides/figure/Packages.PNG)

Installation
------------

    install.packages("lme4")

    library(lme4)

Installation von Paketen mit RStudio
------------------------------------

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/PaketeRstudio.PNG?raw=true)

Vorhandene Pakete und Installation
----------------------------------

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/packages3.PNG?raw=true)

Ãœbersicht viele nÃ¼tzliche Pakete:
-----------------------------------

-   Luhmann - [Tabelle mit vielen nÃ¼tzlichen
    Paketen](http://www.beltz.de/fileadmin/beltz/downloads/OnlinematerialienPVU/28090_Luhmann/Verwendete%20Pakete.pdf)

Weitere interessante Pakete:

-   Paket fÃ¼r den Import/Export -
    [foreign](http://cran.r-project.org/web/packages/foreign/foreign.pdf)

-   [Pakete fÃ¼r Survey
    Sampling](http://iase-web.org/documents/papers/icots8/ICOTS8_4J1_TILLE.pdf)

-   `xtable` Paket fÃ¼r die Integration von Latex und R ([xtable
    Galerie](http://cran.r-project.org/web/packages/xtable/vignettes/xtableGallery.pdf))

-   [Paket zur Erzeugung von
    Dummies](http://cran.r-project.org/web/packages/dummies/dummies.pdf)

-   [Multivariate
    Normalverteilung](http://cran.r-project.org/web/packages/mvtnorm/index.html)

-   [Paket fÃ¼r Karten](http://www.r-bloggers.com/tag/maptools/)

Pakete installieren
-------------------

### Pakete von CRAN Server installieren

    install.packages("lme4")

### Pakete von Bioconductor Server installieren

    source("https://bioconductor.org/biocLite.R")
    biocLite(c("GenomicFeatures", "AnnotationDbi"))

### Pakete von Github installieren

    install.packages("devtools")
    library(devtools)

    install_github("hadley/ggplot2")

Wie bekomme ich einen Ãœberblick
--------------------------------

-   [Pakete entdecken, die neulich auf CRAN hochgeladen
    wurden](https://mran.microsoft.com/packages/)

-   [Pakete die in letzter Zeit von CRAN heruntergeladen
    wurden](https://gallery.shinyapps.io/cran-gauge/)

-   [Quick-list nÃ¼tzlicher
    Pakete](https://support.rstudio.com/hc/en-us/articles/201057987-Quick-list-of-useful-R-packages)

-   [Beste Pakete fÃ¼r Datenbearbeitung und
    Analyse](http://www.computerworld.com/article/2921176/business-intelligence/great-r-packages-for-data-import-wrangling-visualization.html)

-   [Die 50 meist genutzten
    Pakete](https://www.r-bloggers.com/the-50-most-used-r-packages/)

CRAN Task Views
---------------

-   Zu einigen Themen sind alle MÃ¶glichkeiten in R zusammengestellt.
    ([Ãœbersicht der Task Views](https://cran.r-project.org/web/views/))
-   Zur Zeit gibt es 35 Task Views
-   [Alle Pakete eines Task Views kÃ¶nnen mit folgendem Befehl
    installiert werden:](https://mran.microsoft.com/rpackages/)

<!-- -->

    install.packages("ctv")
    library("ctv")
    install.views("Bayesian")

![](https://raw.githubusercontent.com/Japhilko/IntroR/master/2017/slides/figure/CRANtaskViews.PNG)

Aufgabe - Zusatzpakete
----------------------

Gehen Sie auf <https://cran.r-project.org/> und suchen Sie in dem
Bereich, wo die Pakete vorgestellt werden, nach Paketen,...

-   die fÃ¼r die deskriptive Datenanalyse geeignet sind.
-   um Regressionen zu berechnen
-   um fremde DatensÃ¤tze einzulesen (z.B. SPSS-Daten)
-   um mit groÃŸen Datenmengen umzugehen
