[Präsentationen - Rpres der einfachste Weg](https://rstudio-pubs-static.s3.amazonaws.com/27777_55697c3a476640caa0ad2099fe914ae5.html#/)
---------------------------------------------------------------------------------------------------------------------------------------

![](figure/Rpresentations.PNG)

Eine erste Präsentation
-----------------------

![](figure/RpresStart.PNG)

Erste Daten eintragen
---------------------

-   Für Vergessliche:

<!-- -->

    date()

    ## [1] "Tue Jun 20 13:52:19 2017"

Eine Folie mit Formel
---------------------

-   Die Formel kann wie in LaTeX eingegeben werden

<!-- -->

    $$
    \begin{equation}\label{eq2}
    t_{i}=\sum\limits_{k=1}^{M_{i}}{y_{ik}}=M_{i}\bar{Y}_{i}. 
    \end{equation}
    $$

![](figure/FolieLatexCode.PNG)

Zwei Spalten
------------

    Folie mit zwei Spalten
    ====================================
    Erste Spalte
    ***
    Zweite Spalte

Folienübergänge
---------------

    transition: rotate

![](figure/RpresRotate.PNG)

[Weitere mögliche Folienübergänge](https://support.rstudio.com/hc/en-us/articles/200714013-Slide-Transitions-and-Navigation)
----------------------------------------------------------------------------------------------------------------------------

-   none
-   linear
-   rotate
-   fade
-   zoom
-   concave

Folientypen
-----------

    Ein neues Kapitel einfügen
    ====================================
    type: section

    Anderer Folientyp
    ====================================
    type: prompt

    Noch ein anderer Folientyp
    ====================================
    type: alert

[Die Schriftart wechseln](https://support.rstudio.com/hc/en-us/articles/200532307)
----------------------------------------------------------------------------------

-   Die [CSS
    Schrifttypen](https://www.w3schools.com/cssref/css_websafe_fonts.asp)
    können verwendet werden

<!-- -->

    Meine Präsentation
    ========================================
    author: Jan-Philipp Kolb
    font-family: 'Impact'

Schrifttypen können auch importiert werden
------------------------------------------

    Meine Präsentation
    ========================================
    author: Jan-Philipp Kolb
    font-import: http://fonts.googleapis.com/css?family=Risque
    font-family: 'Risque'

![](figure/SchriftartRisque.PNG)

Kleineren Text
--------------

Normale Schriftgröße

    <small>This sentence will appear smaller.</small>

Die Präsentation anschauen
--------------------------

-   Das Ergebnis ist hier zu sehen:

<http://rpubs.com/Japhilko82/FirstRpubs>

![](https://support.rstudio.com/hc/en-us/article_attachments/202008388/Screen_Shot_2015-06-04_at_3.51.21_PM.png)

Eine ioslides Präsentation
==========================

Eine ioslides Präsentation
--------------------------

![](figure/ioslidespres.PNG)

[ioslides - Der Start](http://rmarkdown.rstudio.com/ioslides_presentation_format.html)
--------------------------------------------------------------------------------------

![](figure/ioslidesBSP.PNG)

Weitere Dinge tun
-----------------

-   Ein Bild einbinden

<!-- -->

    ![picture of spaghetti](images/spaghetti.jpg)

Ein Logo hinzu
--------------

    ---
    title: "ioslides Beispiel"
    author: "Jan-Philipp Kolb"
    date: "20 April 2017"
    output: 
      ioslides_presentation:
        logo: figure/Rlogo.png
    ---

![](figure/ioslidesRlogo.PNG)

Tabellen
--------

-   Quelle: [R Studio, and Presentations, and Git! Oh
    my!](https://www.r-bloggers.com/r-studio-and-presentations-and-git-oh-my/)

<!-- -->

    library(knitr)
    a <- data.frame(a=1:10,b=10:1)
    kable(table(a))

<table>
<thead>
<tr class="header">
<th align="right">1</th>
<th align="right">2</th>
<th align="right">3</th>
<th align="right">4</th>
<th align="right">5</th>
<th align="right">6</th>
<th align="right">7</th>
<th align="right">8</th>
<th align="right">9</th>
<th align="right">10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
</tbody>
</table>

`knitr` Engines
---------------

-   [knitr Language
    Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

-   [slidify](http://slidify.org/)

Eine slidy Präsentation
=======================

slidy Präsentationen
--------------------

![](figure/sluidypresentations.PNG)

\[Was sind Cascading Style Files ([CSS](https://de.wikipedia.org/wiki/Cascading_Style_Sheets))
----------------------------------------------------------------------------------------------

![](https://upload.wikimedia.org/wikipedia/commons/8/83/CSS-Logo.png)

-   Stylesheet-Sprache für elektronische Dokumente
-   eine der Kernsprachen des World Wide Webs.
-   CSS wurde entworfen, um Darstellungsvorgaben weitgehend von den
    Inhalten zu trennen

### CSS und R

-   [Custom
    CSS](http://rmarkdown.rstudio.com/html_document_format.html#custom_css)
-   [CSS pro
    tipps](https://github.com/AllThingsSmitty/css-protips#use-a-css-reset)

Beispiel CSS
------------

![](figure/cssRstudio.PNG)

Das CSS ändern
--------------

Um den Präsentationstyp zu ändern kann man das CSS verändern

-   [Cascading Style
    Sheets](https://de.wikipedia.org/wiki/Cascading_Style_Sheets) (CSS)

-   Bspw. lässt sich die
    [Farbe (HTML)](http://tomheller.de/html-farben.html) ändern.
-   [Man kann eine andere Schriftart
    wählen](https://www.mediaevent.de/css/font-family.html)
-   [Es gibt zahlreiche Möglichkeiten der
    Schriftformatierung](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung)
-   [Daneben gibt es viele weitere Dinge, die sich mit dem CSS steuern
    lassen](https://www.w3.org/TR/WCAG20-TECHS/C22.html)

HTML Dokumente
==============

Ein HTML Dokument erzeugen
--------------------------

![](figure/NewHTML.PNG)

Ein Template verwenden
----------------------

![](figure/UsingTemplate.PNG)

[Weitere Vorlagen nutzen](http://rmarkdown.rstudio.com/developer_document_templates.html)
-----------------------------------------------------------------------------------------

-   Es gibt viele Formate - [manche müssen erst aktiviert
    werden](https://blog.rstudio.org/2016/03/21/r-markdown-custom-formats/):

<!-- -->

    install.packages("rticles")

![](figure/ShortPaper.PNG)

Vorlagen für Markdown
---------------------

Das Paket `rmdformats` - HTML Output Formats and Templates for
'rmarkdown'

    install.packages("rmdformats")

-   `ProjectTemplate` - Automates the Creation of New Statistical
    Analysis

<!-- -->

    install.packages("ProjectTemplate")

-   `tufte` - Tufte's Styles for R Markdown Documents

<!-- -->

    install.packages("tufte")

[Beispiele für Templates](https://github.com/juba/rmdformats)
-------------------------------------------------------------

![](https://rstudioblog.files.wordpress.com/2016/03/readthedown.png)

Dashboards
==========

[Beispiel R-Pakete](https://gallery.shinyapps.io/cran-gauge/)
-------------------------------------------------------------

![](figure/CRANdownloads.PNG)

[Paket installieren](https://blog.rstudio.org/2016/05/17/flexdashboard-easy-interactive-dashboards-for-r/)
----------------------------------------------------------------------------------------------------------

    install.packages("flexdashboard", type = "source")

![](figure/flexdashboards.PNG)

Ein Dashboard erstellen mit Rstudio
-----------------------------------

![](https://i2.wp.com/rmarkdown.rstudio.com/flexdashboard/images/NewRMarkdown.png?zoom=2)

[Mein erstes Dashboard](http://rpubs.com/Japhilko82/whcsites)
-------------------------------------------------------------

![](figure/MeinErstesDashboard.PNG)

[Gallerie](http://rmarkdown.rstudio.com/gallery.html)
-----------------------------------------------------

![](figure/RmarkdownGallery.PNG)

Links
-----

-   [Verschiedene Markdown Dokumente zusammen
    fügen](http://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output)

![](figure/stackoverflowCombine.PNG)

-   [Verschiedene CSS Fonts](http://www.cssfontstack.com/)

-   [Überblick über die verschiedenen Rmarkdown
    Formate](http://rmarkdown.rstudio.com/formats.html)
