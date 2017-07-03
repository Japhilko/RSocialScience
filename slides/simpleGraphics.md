Ein Plot sagt mehr als 1000 Worte
---------------------------------

-   Grafisch gestÃ¼tzte Datenanalyse ist toll
-   Gute Plots kÃ¶nnen zu einem besseren VerstÃ¤ndnis beitragen
-   Einen Plot zu generieren geht schnell
-   Einen guten Plot zu machen kann sehr lange dauern
-   Mit R Plots zu generieren macht SpaÃŸ
-   Mit R erstellte Plots haben hohe QualitÃ¤t
-   Fast jeder Plottyp wird von R unterstÃ¼tzt
-   R kennt eine groÃŸe Menge an Exportformaten fÃ¼r Grafiken

Plot ist nicht gleich Plot
--------------------------

-   Bereits das base Package bringt eine groÃŸe Menge von Plot
    Funktionen mit
-   Das lattice Packet erweitert dessen FunktionalitÃ¤t
-   Eine weit Ã¼ber diese EinfÃ¼hrung hinausgehende Ãœbersicht findet
    sich in Murrell, P (2006): R Graphics.

Task View zu Thema [Graphiken](https://cran.r-project.org/web/views/Graphics.html)
----------------------------------------------------------------------------------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/TaskViewGraphics.PNG)

Datensatz
---------

    library(mlmRev)
    data(Chem97)

-   \[lea\] Local Education Authority - a factor
-   \[school\] School identifier - a factor
-   \[student\] Student identifier - a factor
-   \[score\] Point score on A-level Chemistry in 1997
-   \[gender\] Student's gender
-   \[age\] Age in month, centred at 222 months or 18.5 years
-   \[gcsescore\] Average GCSE score of individual.
-   \[gcsecnt\] Average GCSE score of individual, centered at mean.

Histogramm - Die Funktion hist()
--------------------------------

Wir erstellen ein Histogramm der Variable gcsescore:

    ?hist

    hist(Chem97$gcsescore)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-4-1.png)

Graphik speichern
-----------------

-   Mit dem button Export in Rstudio kann man die Grafik speichern.

![](https://raw.githubusercontent.com/Japhilko/IntroR/master/2017/slides/figure/GraphikSpeichern.PNG)

Befehl um Graphik zu speichern
------------------------------

-   Alternativ auch bspw. mit den Befehlen `png`, `pdf` oder `jpeg`

<!-- -->

    png("Histogramm.png")
    hist(Chem97$gcsescore)
    dev.off()

Histogramme
-----------

-   Die Funktion `hist()` plottet ein Histogramm der Daten
-   Der Funktion muss mindestens ein Beobachtungsvektor Ã¼bergeben
    werden
-   `hist()` hat noch sehr viel mehr Argumente, die alle (sinnvolle)
    default values haben

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
<td align="left">main</td>
<td align="left">Ãœberschrift</td>
<td align="left">main=&quot;Hallo Welt&quot;</td>
</tr>
<tr class="even">
<td align="left">xlab</td>
<td align="left">x-Achsenbeschriftung</td>
<td align="left">xlab=&quot;x-Werte&quot;</td>
</tr>
<tr class="odd">
<td align="left">ylab</td>
<td align="left">y-Achsenbeschriftung</td>
<td align="left">ylab=&quot;y-Werte&quot;</td>
</tr>
<tr class="even">
<td align="left">col</td>
<td align="left">Farbe</td>
<td align="left">col=&quot;blue&quot;</td>
</tr>
</tbody>
</table>

Histogramm
----------

    hist(Chem97$gcsescore,col="blue",
         main="Hallo Welt",ylab="y-Werte", xlab="x-Werte")

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-6-1.png)

Weitere Argumente:

    ?plot
    # oder
    ?par

Barplot
-------

-   Die Funktion `barplot()` erzeugt aus einer HÃ¤ufigkeitstabelle einen
    Barplot
-   Ist das Ã¼bergebene Tabellen-Objekt zweidimensional wird ein
    bedingter Barplot erstellt

<!-- -->

    tabScore <- table(Chem97$score)

    barplot(tabScore)

Barplots und barcharts
----------------------

    barplot(tabScore)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-10-1.png)

Mehr Farben:
------------

    barplot(tabScore,col=rgb(0,0,1))

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-11-1.png)

GrÃ¼ne Farbe
------------

    barplot(tabScore,col=rgb(0,1,0))

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-12-1.png)

Rote Farbe
----------

    barplot(tabScore,col=rgb(1,0,0))

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-13-1.png)

Transparent
-----------

    barplot(tabScore,col=rgb(1,0,0,.3))

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-14-1.png)

Scatterplots
------------

-   Ein einfacher two-way Scatterplot kann mit der Funktion plot()
    erstellt werden
-   plot() muss mindestens ein x und ein y Beobachtungsvektor Ã¼bergeben
    werden
-   Um die Farbe der Plot-Symbole anzupassen gibt es die Option col
    (Farbe als character oder numerisch)
-   Die Plot-Symbole selbst kÃ¶nnen mit pch (plotting character)
    angepasst werden (character oder numerisch)
-   Die Achenbeschriftungen (labels) werden mit xlab und ylab definiert

Beispieldaten fÃ¼r Scatterplot
------------------------------

    x <- runif(100)
    y <- runif(100)

Einfacher Scatterplot
---------------------

    plot(x,y)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-16-1.png)

Einfacher Scatterplot II
------------------------

    plot(x,y,pch=20)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-17-1.png)

Einfacher Scatterplot III
-------------------------

    plot(x,y,pch=20)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-18-1.png)

Boxplot
-------

-   Einen einfachen Boxplot erstellt man mit `boxplot()`
-   Auch `boxplot()` muss mindestens ein Beobachtungsvektor Ã¼bergeben
    werden

<!-- -->

    ?boxplot

Horizontaler Boxplot
--------------------

    boxplot(Chem97$gcsescore,
    horizontal=TRUE)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-20-1.png)

-   [ErklÃ¤rung zu
    Boxplots](http://edoc.hu-berlin.de/dissertationen/gruenwald-andreas-2005-01-17/HTML/chapter2.html)

Gruppierte Boxplots
-------------------

-   Ein sehr einfacher Weg, einen ersten Eindruck Ã¼ber bedingte
    Verteilungen zu bekommen ist Ã¼ber sog. Gruppierte notched Boxplots
-   Dazu muss der Funktion `boxplot()` ein sog. Formel-Objekt Ã¼bergeben
    werden
-   Die bedingende Variable steht dabei auf der rechten Seite einer
    Tilde

Beispiel grupierter Boxplot
---------------------------

    boxplot(Chem97$gcsescore~Chem97$gender)

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-21-1.png)

Alternativen zu Boxplot
-----------------------

Violinplot

-   Baut auf Boxplot auf
-   ZusÃ¤tzlich Informationen Ã¼ber Dichte der Daten
-   Dichte wird Ã¼ber Kernel Methode berechnet.
-   weiÃŸer Punkt - Median
-   Je weiter die Ausdehnung, desto grÃ¶ÃŸer ist die Dichte an
    dieser Stelle.

<!-- -->

    # Beispieldaten erzeugen
    x <- rnorm(100)
    y <- rnorm(100)

Die Bibliothek `vioplot`
------------------------

    library(vioplot)
    plot(x, y, xlim=c(-5,5), ylim=c(-5,5))
    vioplot(x, col="tomato", horizontal=TRUE, at=-4, 
            add=TRUE,lty=2, rectCol="gray")
    vioplot(y, col="cyan", horizontal=FALSE, at=-4, 
            add=TRUE,lty=2)

`vioplot` - Das Ergebnis
------------------------

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-24-1.png)

Alternativen zum Boxplot
------------------------

    library(beanplot)
    par(mfrow = c(1,2))
    boxplot(count~spray,data=InsectSprays,col="blue")
    beanplot(count~spray,data=InsectSprays,col="orange")

![](..\simpleGraphics_files/figure-markdown_strict/unnamed-chunk-25-1.png)
