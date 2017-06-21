[Variablen Labels](https://stackoverflow.com/questions/2151147/using-stata-variable-labels-in-r)
------------------------------------------------------------------------------------------------

    library(foreign)
    dat <- read.dta("https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")

    var.labels <- attr(dat,"var.labels")

Ein Überblick
-------------

    nrow(dat)

    ## [1] 100

    ncol(dat)

    ## [1] 16

    head(dat)

    ##                           a11c019a       a11c020a       a11c021a
    ## 1                   Eher zufrieden Eher zufrieden Sehr zufrieden
    ## 2 Weder zufrieden noch unzufrieden Eher zufrieden Eher zufrieden
    ## 3                   Eher zufrieden Sehr zufrieden Eher zufrieden
    ## 4                   Eher zufrieden Eher zufrieden Eher zufrieden
    ## 5                   Sehr zufrieden Eher zufrieden Eher zufrieden
    ## 6                   Eher zufrieden Eher zufrieden Eher zufrieden
    ##               a11c022a                  a11c023a                a11c024a
    ## 1       Stimme eher zu      Stimme eher nicht zu Stimme voll und ganz zu
    ## 2       Stimme eher zu      Stimme eher nicht zu    Stimme eher nicht zu
    ## 3 Stimme eher nicht zu            Stimme eher zu    Stimme eher nicht zu
    ## 4       Stimme eher zu            Stimme eher zu          Stimme eher zu
    ## 5       Stimme eher zu Stimme überhaupt nicht zu          Stimme eher zu
    ## 6 Stimme eher nicht zu            Stimme eher zu          Stimme eher zu
    ##                          a11c025a                   a11c026a
    ## 1     Eher höheren Lebensstandard                    Täglich
    ## 2 Eher niedrigeren Lebensstandard         Mehrmals die Woche
    ## 3 Eher niedrigeren Lebensstandard                    Täglich
    ## 4        Denselben Lebensstandard                    Täglich
    ## 5     Eher höheren Lebensstandard                    Täglich
    ## 6 Eher niedrigeren Lebensstandard Mindestens einmal im Monat
    ##             a11c027a           a11c028a a11c029a           a11c030a
    ## 1 Mehrmals die Woche            Täglich  Täglich            Täglich
    ## 2  Mehrmals im Monat Mehrmals die Woche  Täglich            Täglich
    ## 3            Täglich            Täglich  Täglich Mehrmals die Woche
    ## 4 Mehrmals die Woche            Täglich  Täglich            Täglich
    ## 5           Seltener            Täglich      Nie            Täglich
    ## 6            Täglich            Täglich  Täglich            Täglich
    ##             a11c031a           a11c032a                   a11c033a
    ## 1 Mehrmals die Woche Mehrmals die Woche                    Täglich
    ## 2            Täglich           Seltener                   Seltener
    ## 3 Mehrmals die Woche           Seltener         Mehrmals die Woche
    ## 4 Mehrmals die Woche Mehrmals die Woche Mindestens einmal im Monat
    ## 5            Täglich Mehrmals die Woche          Mehrmals im Monat
    ## 6            Täglich Mehrmals die Woche          Mehrmals im Monat
    ##                                a11c034a
    ## 1 Ja, nutzt Internet für private Zwecke
    ## 2 Ja, nutzt Internet für private Zwecke
    ## 3 Ja, nutzt Internet für private Zwecke
    ## 4 Ja, nutzt Internet für private Zwecke
    ## 5 Ja, nutzt Internet für private Zwecke
    ## 6 Ja, nutzt Internet für private Zwecke

Indizieren
----------

-   Das Dollarzeichen kann man nutzen um einzelne Spalten anzusprechen

<!-- -->

    head(dat$a11c019a)

    ## [1] Eher zufrieden                   Weder zufrieden noch unzufrieden
    ## [3] Eher zufrieden                   Eher zufrieden                  
    ## [5] Sehr zufrieden                   Eher zufrieden                  
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

    dat$a11c019a[1:10]

    ##  [1] Eher zufrieden                   Weder zufrieden noch unzufrieden
    ##  [3] Eher zufrieden                   Eher zufrieden                  
    ##  [5] Sehr zufrieden                   Eher zufrieden                  
    ##  [7] Eher unzufrieden                 Sehr zufrieden                  
    ##  [9] Sehr zufrieden                   Sehr zufrieden                  
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

-   Man kann auch Zahlen nutzen um auf die Spalten zuzugreifen

<!-- -->

    head(dat[,1])

    ## [1] Eher zufrieden                   Weder zufrieden noch unzufrieden
    ## [3] Eher zufrieden                   Eher zufrieden                  
    ## [5] Sehr zufrieden                   Eher zufrieden                  
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

[Rekodieren](https://www.r-bloggers.com/recoding-variables-in-r-pedagogic-considerations/)
------------------------------------------------------------------------------------------

    library(car)
    ?recode

    ## starting httpd help server ...

    ##  done

Fehlende Werte
--------------
