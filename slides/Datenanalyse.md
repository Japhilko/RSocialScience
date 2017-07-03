Den Datensatz laden
-------------------

    library(foreign)
    dat <- read.dta(
    "https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")
    dat$bazq020a <- as.numeric(dat$bazq020a)

    ## Warning: NAs introduced by coercion

StreuungsmaÃŸe
--------------

In Basis R sind die wichtigsten StreuungsmaÃŸe enthalten:

-   Varianz: `var()`
-   Standardabweichung: `sd()`
-   Minimum und Maximum: `min()` und `max()`
-   Range: `range()`

<!-- -->

    var(dat$bazq020a)

    ## [1] NA

    var(dat$bazq020a,na.rm=T)

    ## [1] 476.8859

    sd(dat$bazq020a,na.rm=T)

    ## [1] 21.83772

    range(dat$bazq020a,na.rm=T)

    ## [1] -99  45

Extremwerte
-----------

    min(dat$bazq020a)

    ## [1] NA

    max(dat$bazq020a)

    ## [1] NA

Fehlende Werte
--------------

-   Sind `NA`s vorhanden muss dies der Funktion mitgeteilt werden

<!-- -->

    ab <- 1:10
    ab[10] <- NA
    var(ab)

    ## [1] NA

Bei fehlenden Werten muss ein weiteres Argument mitgegeben werden:

    var(ab,na.rm=T)

    ## [1] 7.5

HÃ¤ufigkeiten und gruppierte Kennwerte
--------------------------------------

-   Eine AuszÃ¤hlung der HÃ¤ufigkeiten der Merkmale einer Variable
    liefert `table()`
-   Mit `table()` sind auch Kreuztabellierungen mÃ¶glich indem zwei
    Variablen durch Komma getrennt werden: `table(x,y)` liefert
    HÃ¤ufigkeiten von `y` fÃ¼r gegebene AusprÃ¤gungen von `x`

<!-- -->

    table(dat$a11d054a)

    ## 
    ## Männlich Weiblich 
    ##       43       57

Tabellieren - weiteres Beispiel
-------------------------------

    ?table

    table(dat$a11d054a)

    ## 
    ## Männlich Weiblich 
    ##       43       57

    table(dat$a11d054a,dat$a11d056z)

    ##           
    ##            Ambiguous answer Item nonresponse Not reached Unit nonresponse
    ##   Männlich                0                0           0                0
    ##   Weiblich                0                0           0                0
    ##           
    ##            Not in panel 18 bis unter 20 Jahre 20 bis unter 25 Jahre
    ##   Männlich            0                     2                     2
    ##   Weiblich            0                     2                     4
    ##           
    ##            25 bis unter 30 Jahre 30 bis unter 35 Jahre
    ##   Männlich                     2                     3
    ##   Weiblich                     5                     2
    ##           
    ##            35 bis unter 40 Jahre 40 bis unter 45 Jahre
    ##   Männlich                     2                     1
    ##   Weiblich                     4                     4
    ##           
    ##            45 bis unter 50 Jahre 50 bis unter 55 Jahre
    ##   Männlich                     8                     9
    ##   Weiblich                     6                     7
    ##           
    ##            55 bis unter 60 Jahre 60 bis unter 63 Jahre
    ##   Männlich                     3                     2
    ##   Weiblich                     5                     9
    ##           
    ##            63 bis unter 65 Jahre 65 bis unter 70 Jahre 70 Jahre und Älter
    ##   Männlich                     3                     5                  1
    ##   Weiblich                     1                     5                  3

HÃ¤ufigkeitstabellen
--------------------

-   `prop.table()` liefert die relativen HÃ¤ufigkeiten
-   Wird die Funktion auÃŸerhalb einer `table()` Funktion geschrieben
    erhÃ¤lt man die relativen HÃ¤ufigkeiten bezogen auf alle Zellen

Die Funktion `prop.table`
-------------------------

    ?prop.table

    prop.table(table(dat$a11d054a,dat$a11d056z),1)

    ##           
    ##            Ambiguous answer Item nonresponse Not reached Unit nonresponse
    ##   Männlich       0.00000000       0.00000000  0.00000000       0.00000000
    ##   Weiblich       0.00000000       0.00000000  0.00000000       0.00000000
    ##           
    ##            Not in panel 18 bis unter 20 Jahre 20 bis unter 25 Jahre
    ##   Männlich   0.00000000            0.04651163            0.04651163
    ##   Weiblich   0.00000000            0.03508772            0.07017544
    ##           
    ##            25 bis unter 30 Jahre 30 bis unter 35 Jahre
    ##   Männlich            0.04651163            0.06976744
    ##   Weiblich            0.08771930            0.03508772
    ##           
    ##            35 bis unter 40 Jahre 40 bis unter 45 Jahre
    ##   Männlich            0.04651163            0.02325581
    ##   Weiblich            0.07017544            0.07017544
    ##           
    ##            45 bis unter 50 Jahre 50 bis unter 55 Jahre
    ##   Männlich            0.18604651            0.20930233
    ##   Weiblich            0.10526316            0.12280702
    ##           
    ##            55 bis unter 60 Jahre 60 bis unter 63 Jahre
    ##   Männlich            0.06976744            0.04651163
    ##   Weiblich            0.08771930            0.15789474
    ##           
    ##            63 bis unter 65 Jahre 65 bis unter 70 Jahre 70 Jahre und Älter
    ##   Männlich            0.06976744            0.11627907         0.02325581
    ##   Weiblich            0.01754386            0.08771930         0.05263158

Die aggregate Funktion
----------------------

-   Mit der `aggregate()` Funktion kÃ¶nnen Kennwerte fÃ¼r Untergruppen
    erstellt werden
-   `aggregate(x,by,FUN)` mÃ¼ssen mindestens drei Argumente Ã¼bergeben
    werden:

<!-- -->

    aggregate(dat$bazq020a,by=list(dat$a11d054a),mean,na.rm=T)

    ##    Group.1         x
    ## 1 Männlich 13.534884
    ## 2 Weiblich  8.773585

`x`: ein oder mehrere Beobachtungsvektor(en) fÃ¼r den der Kennwert
berechnet werden soll

`by`: eine oder mehrere bedingende Variable(n)

`FUN`: die Funktion welche den Kennwert berechnet (z.B. `mean` oder
`sd`)

-   Die Ausgabe kann mit Hilfe von `xtabs()` in eine schÃ¶ne
    zweidimensionale Tabelle Ã¼berfÃ¼hrt werden

Beispieldatensatz - apply Funktion
----------------------------------

    ApplyDat <- cbind(1:4,runif(4),rnorm(4))

    apply(ApplyDat,1,mean)

    ## [1] 0.4336569 0.7329258 1.2376599 1.5313687

    apply(ApplyDat,2,mean)

    ## [1] 2.50000000 0.36738620 0.08432227

Die Funktion apply
------------------

    apply(ApplyDat,1,var)

    ## [1] 0.242022 1.209131 2.427296 4.619268

    apply(ApplyDat,1,sd)

    ## [1] 0.4919573 1.0996051 1.5579782 2.1492482

    apply(ApplyDat,1,range)

    ##           [,1]       [,2]      [,3]       [,4]
    ## [1,] 0.1122281 0.02851178 0.0435775 0.07645724
    ## [2,] 1.0000000 2.00000000 3.0000000 4.00000000

    apply(ApplyDat,1,length)

    ## [1] 3 3 3 3

Argumente der Funktion apply
----------------------------

-   FÃ¼r `margin=1` die Funktion `mean` auf die Reihen angewendet,

-   FÃ¼r `margin=2` die Funktion `mean` auf die Spalten angewendet,

-   Anstatt `mean` kÃ¶nnen auch andere Funktionen wie `var`, `sd` oder
    `length` verwendet werden.

Die Funktion tapply
-------------------

-   Auch andere Funktionen kÃ¶nnen eingesetzt werden.... - Auch selbst
    programmierte Funktionen
-   Im Beispiel wird die einfachste eigene Funktion angewendet.

Beispiel Funktion tapply
------------------------

    tapply(dat$a11d054a,dat$a11d056z,mean)

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ## Warning in mean.default(X[[i]], ...): argument is not numeric or logical:
    ## returning NA

    ##      Ambiguous answer      Item nonresponse           Not reached 
    ##                    NA                    NA                    NA 
    ##      Unit nonresponse          Not in panel 18 bis unter 20 Jahre 
    ##                    NA                    NA                    NA 
    ## 20 bis unter 25 Jahre 25 bis unter 30 Jahre 30 bis unter 35 Jahre 
    ##                    NA                    NA                    NA 
    ## 35 bis unter 40 Jahre 40 bis unter 45 Jahre 45 bis unter 50 Jahre 
    ##                    NA                    NA                    NA 
    ## 50 bis unter 55 Jahre 55 bis unter 60 Jahre 60 bis unter 63 Jahre 
    ##                    NA                    NA                    NA 
    ## 63 bis unter 65 Jahre 65 bis unter 70 Jahre    70 Jahre und Älter 
    ##                    NA                    NA                    NA

    tapply(dat$a11d054a,
           dat$a11d056z,function(x)x)

    ## $`Ambiguous answer`
    ## NULL
    ## 
    ## $`Item nonresponse`
    ## NULL
    ## 
    ## $`Not reached`
    ## NULL
    ## 
    ## $`Unit nonresponse`
    ## NULL
    ## 
    ## $`Not in panel`
    ## NULL
    ## 
    ## $`18 bis unter 20 Jahre`
    ## [1] Weiblich Männlich Weiblich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`20 bis unter 25 Jahre`
    ## [1] Männlich Weiblich Männlich Weiblich Weiblich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`25 bis unter 30 Jahre`
    ## [1] Männlich Weiblich Männlich Weiblich Weiblich Weiblich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`30 bis unter 35 Jahre`
    ## [1] Männlich Weiblich Weiblich Männlich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`35 bis unter 40 Jahre`
    ## [1] Männlich Weiblich Weiblich Weiblich Weiblich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`40 bis unter 45 Jahre`
    ## [1] Männlich Weiblich Weiblich Weiblich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`45 bis unter 50 Jahre`
    ##  [1] Männlich Männlich Weiblich Männlich Weiblich Weiblich Weiblich
    ##  [8] Männlich Weiblich Männlich Weiblich Männlich Männlich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`50 bis unter 55 Jahre`
    ##  [1] Männlich Männlich Männlich Männlich Männlich Weiblich Männlich
    ##  [8] Männlich Männlich Weiblich Weiblich Weiblich Weiblich Männlich
    ## [15] Weiblich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`55 bis unter 60 Jahre`
    ## [1] Weiblich Männlich Weiblich Weiblich Weiblich Männlich Weiblich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`60 bis unter 63 Jahre`
    ##  [1] Weiblich Männlich Weiblich Weiblich Weiblich Weiblich Weiblich
    ##  [8] Weiblich Weiblich Männlich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`63 bis unter 65 Jahre`
    ## [1] Männlich Männlich Männlich Weiblich
    ## Levels: Männlich Weiblich
    ## 
    ## $`65 bis unter 70 Jahre`
    ##  [1] Männlich Weiblich Weiblich Männlich Weiblich Männlich Weiblich
    ##  [8] Weiblich Männlich Männlich
    ## Levels: Männlich Weiblich
    ## 
    ## $`70 Jahre und Älter`
    ## [1] Weiblich Weiblich Männlich Weiblich
    ## Levels: Männlich Weiblich

Links Datenanalyse
------------------

-   Die Benutzung von `apply`, `tapply`, etc. (Artikel bei
    [R-bloggers](http://www.r-bloggers.com/using-apply-sapply-lapply-in-r/))

-   [Quick-R zu deskriptiver
    Statistik](http://www.statmethods.net/stats/descriptives.html)

-   [Quick-R zur Funktion
    `aggregate`](http://www.statmethods.net/management/aggregate.html)
