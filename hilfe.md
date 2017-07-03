<!--

## Wie bekommt man Hilfe 

- Foren, Blogs und SupportmÃ¶glichkeiten

-->
Wie bekommt man Hilfe?
----------------------

-   [Um generell Hilfe zu
    bekommen:](http://itfeature.com/tag/how-to-get-help-in-r)

<!-- -->

    help.start()

-   [Online Dokumentation fÃ¼r die meisten
    Funktionen:](https://www.r-project.org/help.html)

<!-- -->

    help(name)

-   Nutze ? um Hilfe zu bekommen.

<!-- -->

    ?mean

-   example(lm) gibt ein Beispiel fÃ¼r die lineare Regression

<!-- -->

    example(lm)

Vignetten
---------

-   Dokumente zur Veranschaulichung und ErlÃ¤uterung von Funktionen im
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
    ## [16] "glm.control"          "glm.fit"              "HLM0"                
    ## [19] "HLM1"                 "KalmanForecast"       "KalmanLike"          
    ## [22] "KalmanRun"            "KalmanSmooth"         "kappa.lm"            
    ## [25] "lm"                   "lm.fit"               "lm.influence"        
    ## [28] "lm.wfit"              "model.matrix.lm"      "nlm"                 
    ## [31] "nlm.f"                "nlm.f2"               "nlminb"              
    ## [34] "predict.glm"          "predict.lm"           "residuals.glm"       
    ## [37] "residuals.lm"         "roller.lm"            "summary.glm"         
    ## [40] "summary.lm"

-   man kann das auch in Verbindung mit regulÃ¤ren AusdrÃ¼cken verwenden

<!-- -->

    ?"regular expression"

    help.search("^glm")

[Suchmaschine fÃ¼r die R-Seite](http://search.r-project.org/cgi-bin/namazu.cgi?query=glm&max=20&result=normal&sort=score&idxname=functions&idxname=vignettes&idxname=views)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    RSiteSearch("glm")

Nutzung Suchmaschinen
---------------------

-   Ich nutze meistens google
-   Tippe:

<!-- -->

    R-project + Was ich schon immer wissen wollte

-   Das funktioniert natÃ¼rlich mit jeder Suchmaschine!

[Stackoverflow](http://stackoverflow.com/)
------------------------------------------

-   FÃ¼r Fragen zum Programmieren
-   [Ist nicht auf R fokussiert, es gibt aber viele Diskussionen zu
    R](https://stackoverflow.com/tags/r/info)
-   Sehr detailierte Diskussionen

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/StackoverflowEx.PNG?raw=true)

[Quick R](http://www.statmethods.net/interface/help.html)
---------------------------------------------------------

-   Immer eine Seite mit Beispielen und Hilfe zu einem Thema
-   Beispiel: [Quick R - Getting
    Help](http://www.statmethods.net/interface/help.html)

### Weitere Links

-   [Ãœbersicht - Hilfe bekommen in
    R](https://www.r-project.org/help.html)

-   [Eine Liste mit HowTo\`s](http://rprogramming.net/)

-   [Eine Liste der wichtigsten
    R-Befehle](https://www.personality-project.org/r/r.commands.html)

Ein Schummelzettel - Cheatsheet
-------------------------------

<https://www.rstudio.com/resources/cheatsheets/>

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/cheatsheetBaseR.PNG?raw=true)
