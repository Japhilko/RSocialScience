Präsentationen mit Rmarkdown - beamer Präsentationen
----------------------------------------------------

![](figure/beamerexample.PNG)

Beamer Optionen
---------------

![](figure/beamerOptions.PNG)

Beamer Themen
-------------

![](http://1.bp.blogspot.com/-ZTtDq0hOkqY/Ti0Z3WwoIJI/AAAAAAAAAPc/HM3t4j4t7h0/s1600/Screenshot%2B-%2B07252011%2B-%2B03%253A22%253A15%2BAM.png)

Chunks einfügen
---------------

-   Auch hier lassen sich natürlich Chunks einfügen
-   Wenn `cache=T` angegeben ist, wird das Ergebnis des Chunks
    abgespeichert
-   Es ist sinnvoll die Chunks zu benennen, dann findet man auch das
    Ergebnis einfacher

![](figure/CacheBenennung.PNG)

Ergebnis - Cache
----------------

![](figure/ErgZufallszahlen.PNG)

Wie man das im Header des Dokuments angibt
------------------------------------------

    ---
    title: "Intro - Erste Schritte"
    author: "Jan-Philipp Kolb"
    date: "10 April 2017"
    output:
      beamer_presentation: 
        colortheme: beaver
        theme: CambridgeUS
    ---

Inhaltsverzeichnis I
--------------------

![](figure/BeamerInhaltsVZ.PNG)

    output: 
      beamer_presentation: 
        toc: yes

Optionen für die Graphikeinbindung
----------------------------------

-   *fig\_caption: false*, wenn man keine Bildunterschriften haben
    möchte

![](figure/figOpts.PNG)

-   Man sollte keine Bilder im Format `.svg` einbinden

Präsentationen mit Sweave
-------------------------

-   Das Dokument erstellen

![](figure/BSPsweave.png)

Sweave Präsentation
-------------------

-   Ganz normaler LaTeX Code wird verwendet

![](figure/Sweave1ex.PNG)

Chunks bei Sweave
-----------------

-   Auch hier kann R-code verwendet werden

![](figure/SweaveCodeChunk.PNG)

[Chunk Optionen](http://k-baeumchen.fuhlbrueck.net/R-und-LaTeX.html)
--------------------------------------------------------------------

-   Auch bei Sweave Chunks können Optionen mitgegeben werden

![](figure/SweaveOptionen.PNG)

Inline Code
-----------

-   Manchmal braucht man das Ergebnis direkt auf der Folie

<!-- -->

    \Sexpr{}

![](figure/CRANpackages.PNG)

Inline Code - das Ergebnis
--------------------------

![](figure/CRANmirror.PNG)

    CRANmirror <- "http://cran.revolutionanalytics.com"
    cran <- contrib.url(repos = CRANmirror,type = "source")
    info <- available.packages(contriburl = cran, type = x)
    nrow(info)

    ## [1] 10745

PDF Paper mit R
---------------

-   Mit R ist es möglich Berichte oder Paper zu erzeugen
-   Dies eignet sich besonders gut, wenn man viel Code hat oder einen
    Bericht sehr oft erzeugen muss
-   Literatur lässt sich am Besten mit einem bibtex file einbauen

[Jabref](http://www.jabref.org/)
--------------------------------

-   Literaturverwaltungssystem

![](figure/Exjabref.PNG)

Referenz mit R bekommen
-----------------------

-   Mit dem Befehl `citation()` bekommt man sehr schnell die Referenz

<!-- -->

    install.packages("RMySQL")

    citation("RMySQL")

    ## 
    ## To cite package 'RMySQL' in publications use:
    ## 
    ##   Jeroen Ooms, David James, Saikat DebRoy, Hadley Wickham and
    ##   Jeffrey Horner (2017). RMySQL: Database Interface and 'MySQL'
    ##   Driver for R. R package version 0.10.11.
    ##   https://CRAN.R-project.org/package=RMySQL
    ## 
    ## A BibTeX entry for LaTeX users is
    ## 
    ##   @Manual{,
    ##     title = {RMySQL: Database Interface and 'MySQL' Driver for R},
    ##     author = {Jeroen Ooms and David James and Saikat DebRoy and Hadley Wickham and Jeffrey Horner},
    ##     year = {2017},
    ##     note = {R package version 0.10.11},
    ##     url = {https://CRAN.R-project.org/package=RMySQL},
    ##   }

![](figure/bibtexRmysql.PNG)

Das bibtex file einbinden I
---------------------------

![](figure/LiteraturEinbinden.PNG)

Das bibtex file einbinden II
----------------------------

    ---
    title: "R Schnittstellen"
    author: "Jan-Philipp Kolb"
    date: "21 April 2017"
    output: 
      pdf_document: default
    bibliography: Rschnittstellen.bib
    ---

Das Ergebnis
------------

![](figure/bibtexErgebnis.PNG)

Links
-----

-   [Optionen für Beamer
    Präsentationen](http://rmarkdown.rstudio.com/beamer_presentation_format.html)

-   [Wie R und LaTeX zusammen
    funktionieren](https://www.r-bloggers.com/from-openoffice-noob-to-control-freak-a-love-story-with-r-latex-and-knitr/)
