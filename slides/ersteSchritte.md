R ist eine Objekt-orientierte Sprache
-------------------------------------

Vektoren und Zuweisungen

-   R ist eine Objekt-orientierte Sprache
-   `<-` ist der Zuweisungsoperator (Shortcut: "Alt" + "-")

<!-- -->

    b <- c(1,2) # erzeugt ein Objekt mit den Zahlen 1 und 2

-   Eine Funktion kann auf dieses Objekt angewendet werden:

<!-- -->

    mean(b) # berechnet den Mittelwert

    ## [1] 1.5

Mit den folgenden Funktionen kÃ¶nnen wir etwas Ã¼ber die Eigenschaften
des Objekts lernen:

    length(b) # b hat die LÃ¤nge 2

    ## [1] 2

Objektstruktur - Datentypen
---------------------------

    str(b) # b ist ein numerischer Vektor

    ##  num [1:2] 1 2

-   mehr zu den [mÃ¶glichen
    Datentypen](http://www.statmethods.net/management/typeconversion.html)
    spÃ¤ter

Funktionen im base-Paket
------------------------

<table>
<thead>
<tr class="header">
<th align="left">Funktion</th>
<th align="left">Bedeutung</th>
<th align="left">Beispiel</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">length()</td>
<td align="left">LÃ¤nge</td>
<td align="left">length(b)</td>
</tr>
<tr class="even">
<td align="left">max()</td>
<td align="left">Maximum</td>
<td align="left">max(b)</td>
</tr>
<tr class="odd">
<td align="left">min()</td>
<td align="left">Minimum</td>
<td align="left">min(b)</td>
</tr>
<tr class="even">
<td align="left">sd()</td>
<td align="left">Standardabweichung</td>
<td align="left">sd(b)</td>
</tr>
<tr class="odd">
<td align="left">var()</td>
<td align="left">Varianz</td>
<td align="left">var(b)</td>
</tr>
<tr class="even">
<td align="left">mean()</td>
<td align="left">Mittelwert</td>
<td align="left">mean(b)</td>
</tr>
<tr class="odd">
<td align="left">median()</td>
<td align="left">Median</td>
<td align="left">median(b)</td>
</tr>
</tbody>
</table>

Diese Funktionen brauchen nur ein Argument.

Funktionen mit mehr Argumenten
------------------------------

Andere Funktionen brauchen mehr:

<table>
<thead>
<tr class="header">
<th align="left">Argument</th>
<th align="left">Bedeutung</th>
<th align="left">Beispiel</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">quantile()</td>
<td align="left">90 % Quantile</td>
<td align="left">quantile(b,.9)</td>
</tr>
<tr class="even">
<td align="left">sample()</td>
<td align="left">Stichprobe ziehen</td>
<td align="left">sample(b,1)</td>
</tr>
</tbody>
</table>

Beispiel - Funktionen mit einem Argument
----------------------------------------

    max(b)

    ## [1] 2

    min(b)

    ## [1] 1

    sd(b)

    ## [1] 0.7071068

    var(b)

    ## [1] 0.5

Funktionen mit einem Argument
-----------------------------

    mean(b)

    ## [1] 1.5

    median(b)

    ## [1] 1.5

Funktionen mit mehr Argumenten
------------------------------

    quantile(b,.9)

    ## 90% 
    ## 1.9

    sample(b,1) 

    ## [1] 1

[Ãœbersicht Befehle](http://cran.r-project.org/doc/manuals/R-intro.html)
------------------------------------------------------------------------

<http://cran.r-project.org/doc/manuals/R-intro.html>

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/UebersichtBefehle.PNG)

Aufgabe - Zuweisungen und Funktionen
------------------------------------

Erzeugt einen Vektor b mit den Zahlen von 1 bis 5 und berechnet...

1.  den Mittelwert

2.  die Varianz

3.  die Standardabweichung

4.  die quadratische Wurzel aus dem Mittelwert

Verschiedene Datentypen
-----------------------

<table>
<thead>
<tr class="header">
<th align="left">Datentyp</th>
<th align="left">Beschreibung</th>
<th align="left">Beispiel</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">numeric</td>
<td align="left">ganze und reele Zahlen</td>
<td align="left"><code>5, 3.462</code></td>
</tr>
<tr class="even">
<td align="left">logical</td>
<td align="left">logische Werte</td>
<td align="left"><code>FALSE, TRUE</code></td>
</tr>
<tr class="odd">
<td align="left">character</td>
<td align="left">Buchstaben und Zeichenfolgen</td>
<td align="left"><code>&quot;Hallo&quot;</code></td>
</tr>
</tbody>
</table>

Quelle: [R. MÃ¼nnich und M.
KnobelspieÃŸ](https://www.uni-trier.de/fileadmin/fb4/prof/VWL/FIN/Oekonometrie/PC-UEbung/Einfuehrung_in_R.pdf)
(2007): EinfÃ¼hrung in das statistische Programmpaket R

Verschiedene Datentypen
-----------------------

    b <- c(1,2) # numeric
    log <- c(T,F) # logical
    char <-c("A","b") # character
    fac <- as.factor(c(1,2)) # factor

Mit `str()` bekommt man den Objekttyp.

    str(fac)

    ##  Factor w/ 2 levels "1","2": 1 2

Indizieren eines Vektors:
-------------------------

    A1 <- c(1,2,3,4)
    A1

    ## [1] 1 2 3 4

    A1[1]

    ## [1] 1

    A1[4]

    ## [1] 4

    A1[1:3]

    ## [1] 1 2 3

    A1[-4]

    ## [1] 1 2 3

Logische Operatoren
-------------------

    # Ist 1 grÃ¶ÃŸer als 2?
    1>2

    ## [1] FALSE

    1<2

    ## [1] TRUE

    1==2

    ## [1] FALSE

Sequenzen
---------

    # Sequenz von 1 bis 10
    1:10

    ##  [1]  1  2  3  4  5  6  7  8  9 10

    # das gleiche Ergebnis
    seq(1,10)

    ##  [1]  1  2  3  4  5  6  7  8  9 10

Weitere Sequenzen
-----------------

    seq(-2,8,by=1.5)

    ## [1] -2.0 -0.5  1.0  2.5  4.0  5.5  7.0

    a <-seq(3,12,length=12)
    a

    ##  [1]  3.000000  3.818182  4.636364  5.454545  6.272727  7.090909  7.909091
    ##  [8]  8.727273  9.545455 10.363636 11.181818 12.000000

    b <- seq(to=5,length=12,by=0.2)
    b

    ##  [1] 2.8 3.0 3.2 3.4 3.6 3.8 4.0 4.2 4.4 4.6 4.8 5.0

Reihenfolge von Argumenten
--------------------------

    1:10

    ##  [1]  1  2  3  4  5  6  7  8  9 10

    seq(1,10,1)

    ##  [1]  1  2  3  4  5  6  7  8  9 10

    seq(length=10,from=1,by=1)

    ##  [1]  1  2  3  4  5  6  7  8  9 10

Wiederholungen
--------------

    # wiederhole 1 10 mal
    rep(1,10)

    ##  [1] 1 1 1 1 1 1 1 1 1 1

    rep("A",10)

    ##  [1] "A" "A" "A" "A" "A" "A" "A" "A" "A" "A"

Die Funktion paste
------------------

    ?paste

    paste(1:4)

    ## [1] "1" "2" "3" "4"

    paste("A", 1:6, sep = "")

    ## [1] "A1" "A2" "A3" "A4" "A5" "A6"

-   Ein weiteres Beispiel:

<!-- -->

    paste0("A", 1:6)

    ## [1] "A1" "A2" "A3" "A4" "A5" "A6"
