Ein Markdown Dokument mit Rstudio erzeugen
------------------------------------------

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/r2wordstart.png)

Mein erstes mit R erzeugtes Word Dokument
-----------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/meinWord.PNG)

Erstes Beispiel
---------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ErstesWord.PNG)

Das Arbeiten mit Rmarkdown - erste Schritte
-------------------------------------------

Markdown ist eine sehr einfache Syntax, die es Benutzern erlaubt, aus
einfachen Textdateien gut gelayoutete Dokumente zu erstellen.

    **fettes Beispiel**
    *kursives Beispiel*
    ~~durchgestrichen~~
    - Aufzählungspunkt

**fettes Beispiel**

*kursives Beispiel*

<s>durchgestrichen</s>

-   Aufzählungspunkt

Weitere Markdown Befehle
------------------------

    ### Überschrift Ebene 3
    #### Überschrift Ebene 4
    [Meine Github Seite](https://github.com/Japhilko)

### Überschrift Ebene 3

#### Überschrift Ebene 4

[Meine Github Seite](https://github.com/Japhilko)

Weitere Markdown Befehle
------------------------

-   So kann man Bilder einbinden:
-   Man kann entweder einen Link angeben:

<!-- -->

    ![BSP](http://e-scientifics.de/content/example_kinderbild.jpg)

-   oder einen (Unterordner) in dem das Bild liegt:

<!-- -->

    ![BSP 2](figure/example.png)

-   in den eckigen Klammern steht die Bildunterschrift
-   alle gängigen Formate (.png, .jpeg,.gif) können so eingebunden
    werden
-   Man kann auch noch weitere Optionen spezifizieren (Größe,
    Breite etc.) - dazu später mehr

Chunks - Erste Schritte
-----------------------

-   Es lassen sich so genannte Chunks einfügen
-   In diesen Chunks wird ganz normaler R-code geschrieben

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/NotebooksBasicEx.PNG)

Button um Chunks einzufügen
---------------------------

-   Die default Version eines Chunks ist R
-   Man hat aber auch die Möglichkeit andere Programmiersprachen
    einzubinden

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ChunkButton.PNG)

Inline Code
-----------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RinlineEx.PNG)

    n=100

Ein inline Codeblock: 100

Chunk Optionen
--------------

-   [Man kann den Chunks Optionen
    mitgeben:](https://yihui.name/knitr/options/)

<table>
<thead>
<tr class="header">
<th align="left">Argument</th>
<th align="left">Beschreibung</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">eval</td>
<td align="left">Soll Rcode evaluiert werden?</td>
</tr>
<tr class="even">
<td align="left">warning</td>
<td align="left">Sollen Warnings angezeigt werden?</td>
</tr>
<tr class="odd">
<td align="left">cache</td>
<td align="left">Soll der Output gespeichert werden?</td>
</tr>
</tbody>
</table>

-   Bei eval kann ein logischer Wert angegeben werden oder
    eine/mehrere Nummer(n)

Optionen
--------

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/RwordOptions.png)

Optionen für Word Output
------------------------

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/WordOutputOptions.PNG)

Code Hervorhebung
-----------------

-   pygments Hervorhebung

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/pygmentsSnippet.PNG)

-   tango

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/tangoSnippet.PNG)

Das Paket `knitr`
-----------------

    install.packages("knitr")

    library("knitr")

-   Das Paket knitr enthält zahlreiche wichtige Funktionen
-   Beispiel: Befehl `kable` um Tabellen zu erzeugen

Eine Tabelle mit `kable` erzeugen
---------------------------------

    a <- runif(10)
    b <- rnorm(10)
    ab <- cbind(a,b)
    kable(ab)

<table>
<thead>
<tr class="header">
<th align="right">a</th>
<th align="right">b</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">0.4808006</td>
<td align="right">0.0063986</td>
</tr>
<tr class="even">
<td align="right">0.5237829</td>
<td align="right">-0.6437899</td>
</tr>
<tr class="odd">
<td align="right">0.8292806</td>
<td align="right">-0.4820105</td>
</tr>
<tr class="even">
<td align="right">0.6637304</td>
<td align="right">-0.7185337</td>
</tr>
<tr class="odd">
<td align="right">0.3664614</td>
<td align="right">-1.2950448</td>
</tr>
<tr class="even">
<td align="right">0.4841956</td>
<td align="right">0.2250230</td>
</tr>
<tr class="odd">
<td align="right">0.2497810</td>
<td align="right">-0.4480269</td>
</tr>
<tr class="even">
<td align="right">0.3013822</td>
<td align="right">0.9912420</td>
</tr>
<tr class="odd">
<td align="right">0.8768059</td>
<td align="right">1.4190630</td>
</tr>
<tr class="even">
<td align="right">0.7241111</td>
<td align="right">0.4804800</td>
</tr>
</tbody>
</table>

[Vorlagen verwenden](http://rmarkdown.rstudio.com/articles_docx.html)
---------------------------------------------------------------------

-   Formatvorlagen können verändert werden

1.  Ein Word Dokument mit Rmarkdown erstellen
2.  Das Dokument in Word öffnen und Format verändern
3.  Vorlage als Referenz angeben

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RefDoc.PNG)

[Immer das aktuelle Datum im Kopf](http://stackoverflow.com/questions/23449319/yaml-current-date-in-rmarkdown)
--------------------------------------------------------------------------------------------------------------

    date: "01 Juli, 2017"

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/rmdAktuellesDatum.PNG)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ErgebenisAktuellesDatum.PNG)

[Ein Schummelzettel](https://www.rstudio.com/wp-content/uploads/2015/06/rmarkdown-german.pdf)
---------------------------------------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RmarkdownSchummelzettel.PNG)

Resourcen
---------

-   Interview - [Ein Word Dokument mit wenig Aufwand
    schreiben](https://www.r-statistics.com/2013/03/write-ms-word-document-using-r-with-as-little-overhead-as-possible/)

-   [pander: Ein R Pandoc Wrapper](http://rapporter.github.io/pander/)

-   [Einführung in
    Markdown](https://github.com/ctreffe/r-space/wiki/R-Markdown-Intro)

-   [Warum TeX besser als Word
    ist](http://factorgrad.blogspot.de/2010/07/why-latex-is-superior-to-ms-word.html)
