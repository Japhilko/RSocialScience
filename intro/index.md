Pluspunkte von R
----------------

-   Als Weg kreativ zu sein ...
-   Graphiken, Graphiken, Graphiken
-   In Kombination mit anderen Programmen nutzbar
-   Zur Verbindung von Datenstrukturen
-   Zum Automatisieren
-   Um die Intelligenz anderer Leute zu nutzen ;-)
-   ...

Gründe
------

-   R ist [frei verfügbar](https://www.r-project.org/). Es kann umsonst
    [runtergeladen](http://www.inside-r.org/why-use-r) werden.
-   R ist eine Skriptsprache
-   Gute Möglichkeiten für die
    [Visualisierung](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html)
-   R wird immer
    [populärer](https://twitter.com/josiahjdavis/status/559778930476220418)
-   [Popularität von R](http://blog.revolutionanalytics.com/popularity/)
    ist in vielen Bereichen sehr hoch.

![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)

[Warum R?](http://stats.idre.ucla.edu/r/seminars/intro/)
--------------------------------------------------------

![Modularer Aufbau](figure/ModularerAufbau.PNG)

[Viel genutzte Pakete](https://gallery.shinyapps.io/cran-gauge/)
----------------------------------------------------------------

![](figure/CRANdownloads.PNG)

[CRAN Task Views](https://cran.r-project.org/web/views/)
--------------------------------------------------------

![](figure/CRANTaskviews.PNG)

Motivation - Nachteile von R
----------------------------

1.  Daten werden oft anderswo erfasst/eingegeben (oft Excel, SPSS etc.)
2.  Nicht jeder ist bereit mit R zu arbeiten
3.  Nicht auf jedem Rechner ist R installiert
4.  R ist manchmal zu langsam
5.  Schwierigkeiten bei der Arbeit mit großen Datenmengen

Was folgt daraus
----------------

1.  Schnittstelle zu SPSS/Stata/Excel zum Import von Daten
2.  Schnittstelle zu Word/LaTeX
3.  Möglichkeit HTML Präsentationen zu erzeugen
4.  Nutzung von C++
5.  Nutzung von Datenbanken

Schnittstellen beim Import/Export
---------------------------------

-   Interaktion mit Excel, SPSS, Stata, ...

![Import](figure/Import.PNG)

[Reproducible Research](http://www.statsmakemecry.com/smmctheblog/the-time-for-reproducible-research-is-now)
------------------------------------------------------------------------------------------------------------

![](figure/MiracleOccursImage.png)

[Wikipedia - Reproducibility](https://en.wikipedia.org/wiki/Reproducibility)
----------------------------------------------------------------------------

![](figure/Spectrum_of_reproducible_research.png)

Darstellung von Ergebnissen
---------------------------

-   Mit der Schnittstelle zu Javascript lassen sich interaktive
    Graphiken erzeugen
-   Diese kann man auf Websites, in Präsentationen oder in Dashboards
    verwenden

![](figure/visNetwork.jpg)

[Warum C++ Schnittstelle ?](http://dirk.eddelbuettel.com/papers/rcpp_workshop_introduction_user2012.pdf)
--------------------------------------------------------------------------------------------------------

-   [Wenn Schnelligkeit wichtig ist, bietet sich C++
    an](http://www.stat.berkeley.edu/scf/paciorek-cppWorkshop.pdf).
-   [Dies kann bspw. der Fall sein, wenn sich Schleifen nicht vermeiden
    lassen](https://www.r-bloggers.com/calling-c-from-r-using-rcpp/).
-   [Man wird bei der Programmierung durch RStudio
    unterstützt](https://support.rstudio.com/hc/en-us/articles/200486088-Using-Rcpp-with-RStudio).
-   Es gibt eine [Rcpp Galerie](http://gallery.rcpp.org/), wo man sich
    Anregungen holen kann.
-   Allerdings sollte man zunächst versuchen den Rcode so schnell wie
    möglich zu gestalten.

Die Nutzung von Datenbanken
---------------------------

-   Wenn große Datenmengen anfallen, kann die zusätzliche Nutzung von
    Datenbanken sinnvoll sein.
-   In R bestehen Schnittstellen sowohl zu relationalen als auch nicht
    relationalen Datenbanken.
-   Datenbanken sollten allerdings erst genutzt werden, wenn alle
    Möglichkeiten in R ausgeschöpft sind.

Nutzung der Unterlagen auf GitHub
---------------------------------

-   Die folgende Seite ist die Startseite für den Kurs:

<https://japhilko.github.io/Interfaces4R/>

![](figure/Interfaces4r.PNG)

Wo sind die Sourcecodes?
------------------------

Wie wird das Github Verzeichnis genutzt?

-   Auf der folgenden Seite sind alle Sourcecodes enthalten:

<https://github.com/Japhilko/RInterfaces>

-   Es lohnt sich immer wieder zu dieser Seite zurückzukehren, weil auch
    hier alle relevanten Dokumente verlinkt sind.

-   Grundsätzlich kann man der Veranstalung am Besten mit den
    [kompletten
    File](https://github.com/Japhilko/RInterfaces/blob/master/slides/RInterfaces_all2g.md)
    oder der kompletten Browserversion eines Kapitels (sind unter den
    Kapitelüberschriften verlinkt) folgen. Wenn Teile heruntergeladen
    werden sollen, bietet es sich an, das entsprechende
    pdf herunterzuladen.

-   Falls Links ins Leere führen - bitte Bescheid sagen.

Informationen ausdrucken
------------------------

-   Zum Ausdrucken eignen sich die pdf-Dateien besser.

-   Diese können mit dem Raw Button heruntergeladen werden.

![Raw Button zum
Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

Weitere Dateien herunterladen
-----------------------------

-   Begleitend zu den Folien wird meistens auch ein R-File angeboten.

-   Hier können Sie entweder das gesamte R-File herunterladen und in R
    ausführen oder einzelne Befehle per Copy/Paste übernehmen.

-   Vereinzelt sind auch Datensätze vorhanden.

-   `.csv` Dateien können direkt von R eingelesen werden (wie das geht
    werde ich noch zeigen).

-   Wenn die `.csv` Dateien heruntergeladen werden sollen auch den Raw
    Button verwenden.

-   Alle anderen Dateien (bspw. `.RData`) auch mittels Raw
    Button herunterladen.

Organisatorisches
-----------------

-   Zusätzlich gibt es in jedem Kapitel eine oder mehrere Aufgabe(n), da
    man nur durch eigenes Trainieren auf der Lernkurve vorankommt.
-   Die Quellen für die Punkte auf den Folien sind als Link meist in der
    Überschrift hinterlegt.
-   Die Links sind nur im HTML Dokument zu sehen aber auch in der
    pdf vorhanden.

Links und Quellen
-----------------

Wen Github näher interessiert:

-   [Hello World](https://guides.github.com/activities/hello-world/)

-   [Understanding the GitHub
    flow](https://guides.github.com/introduction/flow/)

Basis R ...
-----------

-   Wenn man nur R herunterlädt und installiert, sieht das so aus:

![](figure/BasisR.PNG)

-   So habe ich bis 2012 mit R gearbeitet.

... und Rstudio
---------------

-   Rstudio bietet Heute sehr viel Unterstützung:

![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)

-   und macht einige Themen dieses Workshops erst möglich
