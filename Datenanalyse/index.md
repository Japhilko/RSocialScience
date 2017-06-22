Streuungsmaße
-------------

In Basis R sind die wichtigsten Streuungsmaße enthalten:

-   Varianz: `var()`
-   Standardabweichung: `sd()`
-   Minimum und Maximum: `min()` und `max()`
-   Range: `range()`

<!-- -->

    ab <- rnorm(100)
    var(ab)

    ## [1] 0.7865071

    sd(ab)

    ## [1] 0.8868524

    range(ab)

    ## [1] -2.437371  2.135122

Extremwerte
-----------

    min(ab)

    ## [1] -2.437371

    max(ab)

    ## [1] 2.135122

Fehlende Werte
--------------

-   Sind `NA`s vorhanden muss dies der Funktion mitgeteilt werden

<!-- -->

    ab[10] <- NA
    var(ab)

    ## [1] NA

Bei fehlenden Werten muss ein weiteres Argument mitgegeben werden:

    var(ab,na.rm=T)

    ## [1] 0.7945273

Häufigkeiten und gruppierte Kennwerte
-------------------------------------

-   Eine Auszählung der Häufigkeiten der Merkmale einer Variable liefert
    `table()`
-   Mit `table()` sind auch Kreuztabellierungen möglich indem zwei
    Variablen durch Komma getrennt werden: `table(x,y)` liefert
    Häufigkeiten von `y` für gegebene Ausprägungen von `x`

<!-- -->

    x <- sample(1:10,100,replace=T)
    table(x)

    ## x
    ##  1  2  3  4  5  6  7  8  9 10 
    ##  9  4 19 11 10  9 10  9  8 11

Tabellieren - weiteres Beispiel
-------------------------------

    musician <- sample(c("yes","no"),100,replace=T)

    ?table

    table(x)

    ## x
    ##  1  2  3  4  5  6  7  8  9 10 
    ##  9  4 19 11 10  9 10  9  8 11

    table(x,musician)

    ##     musician
    ## x    no yes
    ##   1   4   5
    ##   2   2   2
    ##   3   9  10
    ##   4   6   5
    ##   5   5   5
    ##   6   2   7
    ##   7   3   7
    ##   8   6   3
    ##   9   3   5
    ##   10  4   7

Eine weitere Tabelle
--------------------

    data(esoph)
    table(esoph$agegp)

    ## 
    ## 25-34 35-44 45-54 55-64 65-74   75+ 
    ##    15    15    16    16    15    11

Häufigkeitstabellen
-------------------

-   `prop.table()` liefert die relativen Häufigkeiten
-   Wird die Funktion außerhalb einer `table()` Funktion geschrieben
    erhält man die relativen Häufigkeiten bezogen auf alle Zellen

Die Funktion \``prop.table()`

    table(esoph$agegp,esoph$alcgp)

    ##        
    ##         0-39g/day 40-79 80-119 120+
    ##   25-34         4     4      3    4
    ##   35-44         4     4      4    3
    ##   45-54         4     4      4    4
    ##   55-64         4     4      4    4
    ##   65-74         4     3      4    4
    ##   75+           3     4      2    2

Die Funktion `prop.table`
-------------------------

    ?prop.table

    prop.table(table(esoph$agegp,esoph$alcgp),1)

    ##        
    ##         0-39g/day     40-79    80-119      120+
    ##   25-34 0.2666667 0.2666667 0.2000000 0.2666667
    ##   35-44 0.2666667 0.2666667 0.2666667 0.2000000
    ##   45-54 0.2500000 0.2500000 0.2500000 0.2500000
    ##   55-64 0.2500000 0.2500000 0.2500000 0.2500000
    ##   65-74 0.2666667 0.2000000 0.2666667 0.2666667
    ##   75+   0.2727273 0.3636364 0.1818182 0.1818182

Die aggregate Funktion
----------------------

-   Mit der `aggregate()` Funktion können Kennwerte für Untergruppen
    erstellt werden
-   `aggregate(x,by,FUN)` müssen mindestens drei Argumente übergeben
    werden:

<!-- -->

    aggregate(state.x77,by=list(state.region),mean)

    ##         Group.1 Population   Income Illiteracy Life Exp    Murder  HS Grad
    ## 1     Northeast   5495.111 4570.222   1.000000 71.26444  4.722222 53.96667
    ## 2         South   4208.125 4011.938   1.737500 69.70625 10.581250 44.34375
    ## 3 North Central   4803.000 4611.083   0.700000 71.76667  5.275000 54.51667
    ## 4          West   2915.308 4702.615   1.023077 71.23462  7.215385 62.00000
    ##      Frost      Area
    ## 1 132.7778  18141.00
    ## 2  64.6250  54605.12
    ## 3 138.8333  62652.00
    ## 4 102.1538 134463.00

`x`: ein oder mehrere Beobachtungsvektor(en) für den der Kennwert
berechnet werden soll

`by`: eine oder mehrere bedingende Variable(n)

`FUN`: die Funktion welche den Kennwert berechnet (z.B. `mean` oder
`sd`)

-   Die Ausgabe kann mit Hilfe von `xtabs()` in eine schöne
    zweidimensionale Tabelle überführt werden

Beispieldatensatz - apply Funktion
----------------------------------

    ApplyDat <- cbind(1:4,runif(4),rnorm(4))

    apply(ApplyDat,1,mean)

    ## [1] 0.7109614 0.6949990 0.9516532 1.7245480

    apply(ApplyDat,2,mean)

    ## [1]  2.50000000  0.64776129 -0.08614017

Die Funktion apply
------------------

    apply(ApplyDat,1,var)

    ## [1] 0.2047262 1.8085241 4.2921644 3.8853437

    apply(ApplyDat,1,sd)

    ## [1] 0.4524668 1.3448138 2.0717539 1.9711275

    apply(ApplyDat,1,range)

    ##          [,1]       [,2]     [,3]      [,4]
    ## [1,] 0.189522 -0.6863728 -1.14274 0.5411903
    ## [2,] 1.000000  2.0000000  3.00000 4.0000000

    apply(ApplyDat,1,length)

    ## [1] 3 3 3 3

Argumente der Funktion apply
----------------------------

-   Für `margin=1` die Funktion `mean` auf die Reihen angewendet,

-   Für `margin=2` die Funktion `mean` auf die Spalten angewendet,

-   Anstatt `mean` können auch andere Funktionen wie `var`, `sd` oder
    `length` verwendet werden.

Die Funktion tapply
-------------------

    ApplyDat <- data.frame(Income=rnorm(5,1400,200),
                           Sex=sample(c(1,2),5,replace=T))

-   Auch andere Funktionen können eingesetzt werden.... - Auch selbst
    programmierte Funktionen
-   Im Beispiel wird die einfachste eigene Funktion angewendet.

<!-- -->

    ApplyDat

    ##     Income Sex
    ## 1 1973.476   2
    ## 2 1538.963   2
    ## 3 1636.517   2
    ## 4 1324.216   1
    ## 5 1587.496   1

Beispiel Funktion tapply
------------------------

    tapply(ApplyDat$Income,ApplyDat$Sex,mean)

    ##        1        2 
    ## 1455.856 1716.319

    tapply(ApplyDat$Income,
           ApplyDat$Sex,function(x)x)

    ## $`1`
    ## [1] 1324.216 1587.496
    ## 
    ## $`2`
    ## [1] 1973.476 1538.963 1636.517

Links Datenanalyse
------------------

-   Die Benutzung von `apply`, `tapply`, etc. (Artikel bei
    [R-bloggers](http://www.r-bloggers.com/using-apply-sapply-lapply-in-r/))

-   [Quick-R zu deskriptiver
    Statistik](http://www.statmethods.net/stats/descriptives.html)

-   [Quick-R zur Funktion
    `aggregate`](http://www.statmethods.net/management/aggregate.html)
