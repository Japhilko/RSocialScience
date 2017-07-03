Pluspunkte von R
----------------

-   Als Weg kreativ zu sein ...
-   [Graphiken](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html),
    Graphiken, Graphiken
-   In Kombination mit anderen Programmen nutzbar
-   Zur Verbindung von Datenstrukturen
-   Zum Automatisieren
-   Um die Intelligenz anderer Leute zu nutzen ;-)
-   ...

GrÃ¼nde
-------

-   R ist [frei verfÃ¼gbar](https://www.r-project.org/). Es kann umsonst
    [runtergeladen](http://www.inside-r.org/why-use-r) werden.
-   R ist eine Skriptsprache / [PopularitÃ¤t von
    R](http://blog.revolutionanalytics.com/popularity/)

![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)

[Modularer Aufbau](http://stats.idre.ucla.edu/r/seminars/intro/)
----------------------------------------------------------------

![](http://revolution-computing.typepad.com/.a/6a010534b1db25970b01bb086253c2970d-500wi)

[Viel genutzte Pakete](https://gallery.shinyapps.io/cran-gauge/)
----------------------------------------------------------------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/CRANdownloads.PNG)

Organisation des Kurses
-----------------------

-   Unterlagen sind komplett auf Github hinterlegt, damit man den Kurs
    gleich mitverfolgen kann (mehr dazu gleich)
-   Es werden viele verschiedene kleine BeispieldatensÃ¤tze verwendet um
    spezifische Dinge zu zeigen
-   Alle Funktionen in R sind mit diesen kleinen Beispielen hinterlegt
-   An geeigneten Stellen verwende ich auch
    grÃ¶ÃŸere (sozialwissenschaftliche) DatensÃ¤tze

Dem Kurs folgen
---------------

-   <https://japhilko.github.io/RSocialScience/>

![](https://raw.githubusercontent.com/Japhilko/RSocialScience/master/slides/figure/HP_RSocialscience.PNG)

Komplette FoliensÃ¤tze
----------------------

Die kompletten FoliensÃ¤tze kann man hier herunterladen:

-   Teil 1 - [Von der EinfÃ¼hrung bis Graphiken mit
    `lattice`](https://github.com/Japhilko/RSocialScience/blob/master/slides/RSocialScience1.pdf)
-   Teil 2 - [Von den Paketen ggplot2 und ggmap bis zu
    Mehrebenenmodellen](https://github.com/Japhilko/RSocialScience/blob/master/slides/RSocialScience2.pdf)
-   Teil 3 - [Die Arbeitsorganisation mit Rstudio und
    Rmarkdown](https://github.com/Japhilko/RSocialScience/blob/master/slides/RSocialScience3.pdf)
-   Teil 4 - [PrÃ¤sentationen, Dashboards, Notebooks und
    InteraktivitÃ¤t](https://github.com/Japhilko/RSocialScience/blob/master/slides/RSocialScience4.pdf)

Der R-code
----------

-   Den R-code kann man direkt in die R-Konsole kopieren und ausfÃ¼hren.
-   Begleitend zu den Folien wird meistens auch jeweils ein
    R-File angeboten.
-   Der R-code befindet sich in folgendem Ordner:

<https://github.com/Japhilko/RSocialScience/tree/master/code>

Daten herunterladen
-------------------

-   Vereinzelt sind auch DatensÃ¤tze vorhanden.

-   `.csv` Dateien kÃ¶nnen direkt von R eingelesen werden (wie das geht,
    werde ich noch zeigen).

-   Wenn die `.csv` Dateien heruntergeladen werden sollen - den Raw
    Button verwenden.

-   Alle anderen Dateien (bspw. `.RData`) auch mittels Raw
    Button herunterladen.

Ausdrucken
----------

-   Zum Ausdrucken eignen sich die pdf-Dateien am besten.

-   Diese kÃ¶nnen mit dem Raw Button heruntergeladen werden.

### Raw Button bei Github

![Raw Button zum
Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

Basis R ...
-----------

-   Wenn man nur R herunterlÃ¤dt und installiert, sieht das so aus:
-   So habe ich bis 2012 mit R gearbeitet.

![](http://i1.wp.com/www.rensenieuwenhuis.nl/wp-content/uploads/2008/11/2-r.jpg)

... und Rstudio
---------------

-   Rstudio bietet Heute sehr viel UnterstÃ¼tzung:
-   und macht einige Themen dieses Workshops erst mÃ¶glich

![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)

Aufgabe - Vorbereitung
----------------------

-   PrÃ¼fen Sie, ob eine Version von R auf Rechner installiert ist.
-   Falls dies nicht der Fall ist, laden Sie [R](r-project.org) runter
    und installieren Sie R.
-   PrÃ¼fen Sie, ob Rstudio installiert ist.
-   Falls nicht - [Installieren](http://www.rstudio.com/) sie Rstudio.
-   Laden Sie die R-Skripte von meinem GitHub-Account
-   Erstellen Sie ein erstes Script und finden Sie das Datum mit dem
    Befehl `date()` und die R-version mit `sessionInfo()` heraus.

<!-- -->

    ## [1] "Mon Jul 03 07:37:50 2017"

    ## R version 3.3.3 (2017-03-06)
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
    ##  [1] Rcpp_0.12.10    lattice_0.20-34 digest_0.6.12   rprojroot_1.2  
    ##  [5] MASS_7.3-45     grid_3.3.3      nlme_3.1-128    backports_1.0.5
    ##  [9] magrittr_1.5    evaluate_0.10   stringi_1.1.1   minqa_1.2.4    
    ## [13] nloptr_1.0.4    Matrix_1.2-8    rmarkdown_1.5   splines_3.3.3  
    ## [17] lme4_1.1-13     tools_3.3.3     stringr_1.2.0   yaml_2.1.14    
    ## [21] htmltools_0.3.6 knitr_1.15.20
