<!--

## Wie bekommt man Hilfe 

- Foren, Blogs und Supportmöglichkeiten

-->
Wie bekommt man Hilfe?
----------------------

-   [Um generell Hilfe zu
    bekommen:](http://itfeature.com/tag/how-to-get-help-in-r)

<!-- -->

    help.start()

-   [Online Dokumentation für die meisten
    Funktionen:](https://www.r-project.org/help.html)

<!-- -->

    help(name)

-   Nutze ? um Hilfe zu bekommen.

<!-- -->

    ?mean

-   example(lm) gibt ein Beispiel für die lineare Regression

<!-- -->

    example(lm)

Vignetten
---------

-   Dokumente zur Veranschaulichung und Erläuterung von Funktionen im
    Paket

<!-- -->

    browseVignettes()

Demos
-----

-   zu manchem Paketen gibt es Demonstrationen, wie der Code zu
    verwenden ist

<!-- -->

    demo()
    demo(nlm)

Die Funktion `apropos`
----------------------

-   sucht alles, was mit dem eingegebenen String in Verbindung steht

<!-- -->

    apropos("lm")

    ##  [1] ".__C__anova.glm"      ".__C__anova.glm.null" ".__C__glm"           
    ##  [4] ".__C__glm.null"       ".__C__lm"             ".__C__mlm"           
    ##  [7] ".__C__optionalMethod" ".colMeans"            ".lm.fit"             
    ## [10] "colMeans"             "confint.lm"           "contr.helmert"       
    ## [13] "dummy.coef.lm"        "getAllMethods"        "glm"                 
    ## [16] "glm.control"          "glm.fit"              "KalmanForecast"      
    ## [19] "KalmanLike"           "KalmanRun"            "KalmanSmooth"        
    ## [22] "kappa.lm"             "lm"                   "lm.fit"              
    ## [25] "lm.influence"         "lm.wfit"              "model.matrix.lm"     
    ## [28] "nlm"                  "nlminb"               "predict.glm"         
    ## [31] "predict.lm"           "residuals.glm"        "residuals.lm"        
    ## [34] "summary.glm"          "summary.lm"

-   man kann das auch in Verbindung mit regulären Ausdrücken verwenden

<!-- -->

    ?"regular expression"

    help.search("^glm")

Suchmaschine für die R-Seite
----------------------------

    RSiteSearch("glm")

Nutzung Suchmaschinen
---------------------

-   Ich nutze meistens google
-   Tippe:

<!-- -->

    R-project + Was ich schon immer wissen wollte

-   Das funktioniert natürlich mit jeder Suchmaschine!

[Stackoverflow](http://stackoverflow.com/)
------------------------------------------

-   Für Fragen zum Programmieren
-   [Ist nicht auf R fokussiert, es gibt aber viele Diskussionen zu
    R](https://stackoverflow.com/tags/r/info)
-   Sehr detailierte Diskussionen

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/StackoverflowEx.PNG?raw=true)

[Quick R](http://www.statmethods.net/interface/help.html)
---------------------------------------------------------

-   Immer eine Seite mit Beispielen und Hilfe zu einem Thema
-   Beispiel: [Quick R - Getting
    Help](http://www.statmethods.net/interface/help.html)

Ein Schummelzettel - Cheatsheet
-------------------------------

<https://www.rstudio.com/resources/cheatsheets/>

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/cheatsheetBaseR.PNG?raw=true)

Links
-----

-   [Eine Liste der wichtigsten
    R-Befehle](https://www.personality-project.org/r/r.commands.html)
