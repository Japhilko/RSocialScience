# R für die Sozialwissenschaften - Teil 3
Jan-Philipp Kolb  
23 Juni 2017  




## Allgemein zur Versionsverwaltung







## [Wozu überhaupt Versionskontrolle?](http://r-bio.github.io/intro-git-rstudio/)

![](http://www.phdcomics.com/comics/archive/phd101212s.gif)

## [Warum Versionskontrolle?](https://git-scm.com/book/de/v1/Los-geht%E2%80%99s-Wozu-Versionskontrolle%3F)

- Versionskontrollsysteme (VCS) protokollieren Änderungen an einer Datei oder einer Anzahl von Dateien über die Zeit hinweg

[Wikipedia Artikel zu Versionsverwaltung](https://de.wikipedia.org/wiki/Versionsverwaltung)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Versionsverwaltung.PNG)

## [Gründe für die Nutzung von Versionskontrolle](http://stackoverflow.com/questions/1408450/why-should-i-use-version-control)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ReasonsVersionControl.PNG)


## [GitHub](https://github.com/)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/GitBuuild.PNG)

-  [GitHub Konferenz](https://githubuniverse.com/satellite/?utm_source=github&utm_medium=banner&utm_campaign=ww-satellite-20170405)
<!--
London 22 und 23 Mai 2017

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/githubSattelite.PNG)
-->
## [GitLab](https://about.gitlab.com/)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/GitlabPicture.PNG)

## [Git installieren](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

- Windows und OS X: 

http://git-scm.com/downloads

- Debian/Ubuntu: 

```
sudo apt-get install git-core
```

- Fedora/RedHat: 

```
sudo yum install git-core
```

## Links

- [Gründe eines Sozialwissenschaftlers Versionskontrolle zu nutzen](http://stackoverflow.com/questions/2712421/r-and-version-control-for-the-solo-data-analyst)

- [Git Bootcamp](https://help.github.com/articles/set-up-git/)

## R und Git






## Rstudio und git - ein Projekt anlegen

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/NeuesProjekt.png)


## Ein Projekt mit Versionskontrolle

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/VersionControl.PNG)


## Auswahl Versionskontrolle

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/gitSVN.PNG)


## Ein Projekt clonen

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/CloneProject.PNG)


Wen Github näher interessiert:

- [Hello World](https://guides.github.com/activities/hello-world/)

- [Understanding the GitHub flow](https://guides.github.com/introduction/flow/)


## Word Dokumente mit R erstellen






## Ein Markdown Dokument mit Rstudio erzeugen

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/r2wordstart.PNG)


## Mein erstes mit R erzeugtes Word Dokument

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/meinWord.PNG)

## Erstes Beispiel

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ErstesWord.PNG)


## Das Arbeiten mit Rmarkdown - erste Schritte

Markdown ist eine sehr einfache Syntax, die es Benutzern erlaubt, aus einfachen Textdateien gut gelayoutete Dokumente zu erstellen.

```
**fettes Beispiel**
*kursives Beispiel*
~~durchgestrichen~~
- Aufzählungspunkt
```

**fettes Beispiel**

*kursives Beispiel*

~~durchgestrichen~~

- Aufzählungspunkt

## Weitere Markdown Befehle

```
### Überschrift Ebene 3
#### Überschrift Ebene 4
[Meine Github Seite](https://github.com/Japhilko)
```

### Überschrift Ebene 3

#### Überschrift Ebene 4

[Meine Github Seite](https://github.com/Japhilko)

## Weitere Markdown Befehle

- So kann man Bilder einbinden:
- Man kann entweder einen Link angeben:

```
![BSP](http://e-scientifics.de/content/example_kinderbild.jpg)
```

- oder einen (Unterordner) in dem das Bild liegt:

```
![BSP 2](figure/example.png)
```

- in den eckigen Klammern steht die Bildunterschrift
- alle gängigen Formate (.png, .jpeg,.gif) können so eingebunden werden
- Man kann auch noch weitere Optionen spezifizieren (Größe, Breite etc.) - dazu später mehr

## Chunks - Erste Schritte

- Es lassen sich so genannte Chunks einfügen
- In diesen Chunks wird ganz normaler R-code geschrieben

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/NotebooksBasicEx.PNG)

## Button um Chunks einzufügen

- Die default Version eines Chunks ist R
- Man hat aber auch die Möglichkeit andere Programmiersprachen einzubinden

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ChunkButton.PNG)

## Inline Code

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RinlineEx.PNG)


```r
n=100
```

Ein inline Codeblock: 100

## Chunk Optionen

- [Man kann den Chunks Optionen mitgeben:](https://yihui.name/knitr/options/)


Argument   Beschreibung                        
---------  ------------------------------------
eval       Soll Rcode evaluiert werden?        
warning    Sollen Warnings angezeigt werden?   
cache      Soll der Output gespeichert werden? 

- Bei eval kann ein logischer Wert angegeben werden oder eine/mehrere Nummer(n)  



## Optionen

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/RwordOptions.png)

## Optionen für Word Output

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/WordOutputOptions.PNG)

## Code Hervorhebung

- pygments Hervorhebung

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/pygmentsSnippet.PNG)


- tango

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/tangoSnippet.PNG)


## Das Paket `knitr`


```r
install.packages("knitr")
```


```r
library("knitr")
```

- Das Paket knitr enthält zahlreiche wichtige Funktionen
- Beispiel: Befehl `kable` um Tabellen zu erzeugen

## Eine Tabelle mit `kable` erzeugen


```r
a <- runif(10)
b <- rnorm(10)
ab <- cbind(a,b)
kable(ab)
```

         a            b
----------  -----------
 0.5264545   -0.6397829
 0.9282124    0.9877137
 0.0319182   -0.5993457
 0.9114093    1.1706218
 0.2908292   -1.1618253
 0.8015914    0.4151518
 0.4530400    1.1810137
 0.6986230    0.1756423
 0.4287848    0.6644316
 0.1463865    0.5513299

## [Vorlagen verwenden](http://rmarkdown.rstudio.com/articles_docx.html)

- Formatvorlagen können verändert werden

1. Ein Word Dokument mit Rmarkdown erstellen
2. Das Dokument in Word öffnen und Format verändern 
3. Vorlage als Referenz angeben

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RefDoc.PNG)

## [Immer das aktuelle Datum im Kopf](http://stackoverflow.com/questions/23449319/yaml-current-date-in-rmarkdown)

```
date: "30 Juni, 2017"
```
![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/rmdAktuellesDatum.PNG)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ErgebenisAktuellesDatum.PNG)

## [Ein Schummelzettel](https://www.rstudio.com/wp-content/uploads/2015/06/rmarkdown-german.pdf)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RmarkdownSchummelzettel.PNG)

## Resourcen

- Interview - [Ein Word Dokument mit wenig Aufwand schreiben](https://www.r-statistics.com/2013/03/write-ms-word-document-using-r-with-as-little-overhead-as-possible/)

- [pander: Ein R Pandoc Wrapper](http://rapporter.github.io/pander/)

- [Einführung in Markdown](https://github.com/ctreffe/r-space/wiki/R-Markdown-Intro)

- [Warum TeX besser als Word ist](http://factorgrad.blogspot.de/2010/07/why-latex-is-superior-to-ms-word.html)

## PDF Dokumente und Präsentationen mit LaTeX, Beamer und Sweave








## Präsentationen mit Rmarkdown - beamer Präsentationen

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/beamerexample.PNG)

## Beamer Optionen

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/beamerOptions.PNG)

## Beamer Themen

![](http://1.bp.blogspot.com/-ZTtDq0hOkqY/Ti0Z3WwoIJI/AAAAAAAAAPc/HM3t4j4t7h0/s1600/Screenshot%2B-%2B07252011%2B-%2B03%253A22%253A15%2BAM.png)

## Chunks einfügen

- Auch hier lassen sich natürlich Chunks einfügen
- Wenn `cache=T` angegeben ist, wird das Ergebnis des Chunks abgespeichert
- Es ist sinnvoll die Chunks zu benennen, dann findet man auch das Ergebnis einfacher

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/CacheBenennung.PNG)

## Ergebnis - Cache

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ErgZufallszahlen.PNG)

## Wie man das im Header des Dokuments angibt

```
---
title: "Intro - Erste Schritte"
author: "Jan-Philipp Kolb"
date: "10 April 2017"
output:
  beamer_presentation: 
    colortheme: beaver
    theme: CambridgeUS
---
```

## Inhaltsverzeichnis I

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/BeamerInhaltsVZ.PNG)

```
output: 
  beamer_presentation: 
    toc: yes
```


## Optionen für die Graphikeinbindung

- *fig_caption: false*, wenn man keine Bildunterschriften haben möchte

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/figOpts.PNG)

- Man sollte keine Bilder im Format `.svg` einbinden

## Präsentationen mit Sweave

- Das Dokument erstellen

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/BSPsweave.png)

## Sweave Präsentation

- Ganz normaler LaTeX Code wird verwendet

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Sweave1ex.PNG)

## Chunks bei Sweave

- Auch hier kann R-code verwendet werden

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/SweaveCodeChunk.PNG)

## [Chunk Optionen](http://k-baeumchen.fuhlbrueck.net/R-und-LaTeX.html)

- Auch bei Sweave Chunks können Optionen mitgegeben werden

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/SweaveOptionen.PNG)

## Inline Code

- Manchmal braucht man das Ergebnis direkt auf der Folie

```
\Sexpr{}
```

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/CRANpackages.PNG)

## Inline Code - das Ergebnis

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/CRANmirror.PNG)


```r
CRANmirror <- "http://cran.revolutionanalytics.com"
cran <- contrib.url(repos = CRANmirror,type = "source")
info <- available.packages(contriburl = cran, type = x)
nrow(info)
```

```
## [1] 10868
```



## PDF Paper mit R

- Mit R ist es möglich Berichte oder Paper zu erzeugen
- Dies eignet sich besonders gut, wenn man viel Code hat oder einen Bericht sehr oft erzeugen muss
- Literatur lässt sich am Besten mit einem bibtex file einbauen


## [Jabref](http://www.jabref.org/)

- Literaturverwaltungssystem

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Exjabref.PNG)

## Referenz mit R bekommen

- Mit dem Befehl `citation()` bekommt man sehr schnell die Referenz


```r
install.packages("RMySQL")
```



```r
citation("RMySQL")
```

```
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
```

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/bibtexRmysql.PNG)


## Das bibtex file einbinden I

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/LiteraturEinbinden.PNG)

## Das bibtex file einbinden II

```
---
title: "R Schnittstellen"
author: "Jan-Philipp Kolb"
date: "21 April 2017"
output: 
  pdf_document: default
bibliography: Rschnittstellen.bib
---
```


## Das Ergebnis

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/bibtexErgebnis.PNG)


## Links

- [Optionen für Beamer Präsentationen](http://rmarkdown.rstudio.com/beamer_presentation_format.html)

- [Wie R und LaTeX zusammen funktionieren](https://www.r-bloggers.com/from-openoffice-noob-to-control-freak-a-love-story-with-r-latex-and-knitr/)

