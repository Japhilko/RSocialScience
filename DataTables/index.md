The R-package DT
----------------

-   [DT: An R interface to the DataTables
    library](https://rstudio.github.io/DT/)

<!-- -->

    install.packages('DT')

    library('DT')

    exdat <- read.csv("data/exdat.csv")

    datatable(exdat)

Beispiel für interaktive Tabelle
--------------------------------

Hier ist das Ergebnis - [Beispiel für eine interaktive
Tabelle](http://rpubs.com/Japhilko82/osmplzbe)

![](figure/RpubsPLZBer.PNG)

[Default Optionen verändern](http://rstudio.github.io/DT/options.html)
----------------------------------------------------------------------

    datatable(head(exdat, 20), options = list(
      columnDefs = list(list(className = 'dt-center', targets = 5)),
      pageLength = 5,
      lengthMenu = c(5, 10, 15, 20)
    ))

[Suchoptionen kennzeichnen](http://rstudio.github.io/DT/006-highlight.html)
---------------------------------------------------------------------------

    datatable(exdat, options = list(searchHighlight = TRUE), filter = 'top')

![](figure/tbHighlsearch.PNG)
