R ist eine Objekt-orientierte Sprache
-------------------------------------

Vektoren und Zuweisungen

-   R ist eine Objekt-orientierte Sprache
-   `<-` ist der Zuweisungsoperator

<!-- -->

    b <- c(1,2) # erzeugt ein Objekt mit den Zahlen 1 und 2

-   Eine Funktion kann auf dieses Objekt angewendet werden:

<!-- -->

    mean(b) # berechnet den Mittelwert

    ## [1] 1.5

Mit den folgenden Funktionen können wir etwas über die Eigenschaften des
Objekts lernen:

    length(b) # b hat die Länge 2

    ## [1] 2

Objektstruktur
--------------

    str(b) # b ist ein numerischer Vektor

    ##  num [1:2] 1 2

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
<td align="left">Länge</td>
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

    ## [1] 2

[Übersicht Befehle](http://cran.r-project.org/doc/manuals/R-intro.html)
-----------------------------------------------------------------------

<http://cran.r-project.org/doc/manuals/R-intro.html>

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/UebersichtBefehle.PNG)
