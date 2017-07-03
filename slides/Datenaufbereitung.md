Data Frames
-----------

Beispieldaten einlesen:

    library(foreign)
    dat<-read.dta("https://github.com/Japhilko/RSocialScience/
                  raw/master/data/GPanel.dta")

    typeof(dat)

    ## [1] "list"

In Dataframe Ã¼bertragen
------------------------

Diese beiden Vektoren zu einem data.frame verbinden:

    Daten <- data.frame(dat)

Anzahl der Zeilen/Spalten herausfinden

    nrow(Daten) # Zeilen

    ## [1] 100

    ncol(Daten) # Spalten

    ## [1] 23

Die Daten anschauen
-------------------

-   die ersten zeilen anschauen

<!-- -->

    head(Daten)

-   Ãœbersicht mittels Rstudio

![](https://github.com/Japhilko/RSocialScience/raw/master/slides/figure/DatenAnschauen.PNG)

Indizieren
----------

Indizieren eines dataframe:

    Daten[1,1]

    ## [1] Eher zufrieden
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

    Daten[2,]

    ##         a11c019a         a11c020a         a11c021a             a11c022a
    ## 2 Sehr zufrieden Eher unzufrieden Eher unzufrieden Stimme eher nicht zu
    ##         a11c023a                a11c024a                        a11c025a
    ## 2 Stimme eher zu Stimme voll und ganz zu Eher niedrigeren Lebensstandard
    ##             a11c026a                   a11c027a a11c028a a11c029a a11c030a
    ## 2 Mehrmals die Woche Mindestens einmal im Monat  Täglich  Täglich  Täglich
    ##                     a11c031a          a11c032a a11c033a
    ## 2 Mindestens einmal im Monat Mehrmals im Monat Seltener
    ##                                a11c034a bazq020a a11d054a
    ## 2 Ja, nutzt Internet für private Zwecke       30 Männlich
    ##                a11d056z          a11d092a a11c100a          a11c111a
    ## 2 50 bis unter 55 Jahre Missing by filter     6 .. Missing by design
    ##            a11c109a
    ## 2 Missing by design

    Daten[,1]

    ##   [1] Eher zufrieden                   Sehr zufrieden                  
    ##   [3] Eher zufrieden                   Eher zufrieden                  
    ##   [5] Eher zufrieden                   Sehr zufrieden                  
    ##   [7] Eher zufrieden                   Eher zufrieden                  
    ##   [9] Sehr zufrieden                   Sehr zufrieden                  
    ##  [11] Eher zufrieden                   Sehr zufrieden                  
    ##  [13] Eher zufrieden                   Sehr zufrieden                  
    ##  [15] Sehr zufrieden                   Sehr zufrieden                  
    ##  [17] Weder zufrieden noch unzufrieden Eher zufrieden                  
    ##  [19] Sehr zufrieden                   Eher zufrieden                  
    ##  [21] Sehr zufrieden                   Sehr zufrieden                  
    ##  [23] Sehr zufrieden                   Sehr zufrieden                  
    ##  [25] Sehr zufrieden                   Weder zufrieden noch unzufrieden
    ##  [27] Eher unzufrieden                 Weder zufrieden noch unzufrieden
    ##  [29] Sehr zufrieden                   Eher zufrieden                  
    ##  [31] Sehr zufrieden                   Weder zufrieden noch unzufrieden
    ##  [33] Eher zufrieden                   Eher zufrieden                  
    ##  [35] Sehr zufrieden                   Eher zufrieden                  
    ##  [37] Eher zufrieden                   Sehr zufrieden                  
    ##  [39] Eher zufrieden                   Eher zufrieden                  
    ##  [41] Sehr zufrieden                   Sehr zufrieden                  
    ##  [43] Eher zufrieden                   Sehr zufrieden                  
    ##  [45] Sehr zufrieden                   Eher zufrieden                  
    ##  [47] Sehr zufrieden                   Eher zufrieden                  
    ##  [49] Sehr zufrieden                   Sehr zufrieden                  
    ##  [51] Eher zufrieden                   Weder zufrieden noch unzufrieden
    ##  [53] Eher zufrieden                   Eher zufrieden                  
    ##  [55] Sehr zufrieden                   Eher zufrieden                  
    ##  [57] Sehr zufrieden                   Sehr zufrieden                  
    ##  [59] Weder zufrieden noch unzufrieden Sehr zufrieden                  
    ##  [61] Sehr zufrieden                   Sehr unzufrieden                
    ##  [63] Sehr zufrieden                   Sehr zufrieden                  
    ##  [65] Eher zufrieden                   Eher zufrieden                  
    ##  [67] Sehr zufrieden                   Weder zufrieden noch unzufrieden
    ##  [69] Sehr zufrieden                   Eher zufrieden                  
    ##  [71] Eher zufrieden                   Sehr zufrieden                  
    ##  [73] Eher zufrieden                   Eher zufrieden                  
    ##  [75] Eher zufrieden                   Weder zufrieden noch unzufrieden
    ##  [77] Eher zufrieden                   Sehr zufrieden                  
    ##  [79] Sehr zufrieden                   Sehr zufrieden                  
    ##  [81] Eher zufrieden                   Eher zufrieden                  
    ##  [83] Sehr zufrieden                   Weder zufrieden noch unzufrieden
    ##  [85] Eher zufrieden                   Sehr zufrieden                  
    ##  [87] Sehr zufrieden                   Eher zufrieden                  
    ##  [89] Eher zufrieden                   Eher zufrieden                  
    ##  [91] Sehr zufrieden                   Eher zufrieden                  
    ##  [93] Eher zufrieden                   Sehr zufrieden                  
    ##  [95] Eher unzufrieden                 Sehr zufrieden                  
    ##  [97] Eher zufrieden                   Eher zufrieden                  
    ##  [99] Sehr zufrieden                   Eher unzufrieden                
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

    Daten[,1:2]

    ##                             a11c019a                         a11c020a
    ## 1                     Eher zufrieden Weder zufrieden noch unzufrieden
    ## 2                     Sehr zufrieden                 Eher unzufrieden
    ## 3                     Eher zufrieden                   Sehr zufrieden
    ## 4                     Eher zufrieden                   Sehr zufrieden
    ## 5                     Eher zufrieden                   Eher zufrieden
    ## 6                     Sehr zufrieden                   Eher zufrieden
    ## 7                     Eher zufrieden                   Eher zufrieden
    ## 8                     Eher zufrieden                   Eher zufrieden
    ## 9                     Sehr zufrieden                   Eher zufrieden
    ## 10                    Sehr zufrieden                   Sehr zufrieden
    ## 11                    Eher zufrieden                   Eher zufrieden
    ## 12                    Sehr zufrieden                   Eher zufrieden
    ## 13                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 14                    Sehr zufrieden                   Sehr zufrieden
    ## 15                    Sehr zufrieden                   Sehr zufrieden
    ## 16                    Sehr zufrieden                   Sehr zufrieden
    ## 17  Weder zufrieden noch unzufrieden                 Eher unzufrieden
    ## 18                    Eher zufrieden                   Sehr zufrieden
    ## 19                    Sehr zufrieden                   Sehr zufrieden
    ## 20                    Eher zufrieden                   Eher zufrieden
    ## 21                    Sehr zufrieden                   Sehr zufrieden
    ## 22                    Sehr zufrieden                   Sehr zufrieden
    ## 23                    Sehr zufrieden                   Eher zufrieden
    ## 24                    Sehr zufrieden                   Sehr zufrieden
    ## 25                    Sehr zufrieden                   Sehr zufrieden
    ## 26  Weder zufrieden noch unzufrieden                   Eher zufrieden
    ## 27                  Eher unzufrieden                   Eher zufrieden
    ## 28  Weder zufrieden noch unzufrieden Weder zufrieden noch unzufrieden
    ## 29                    Sehr zufrieden                   Sehr zufrieden
    ## 30                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 31                    Sehr zufrieden                   Eher zufrieden
    ## 32  Weder zufrieden noch unzufrieden                   Eher zufrieden
    ## 33                    Eher zufrieden                   Sehr zufrieden
    ## 34                    Eher zufrieden                   Sehr zufrieden
    ## 35                    Sehr zufrieden                   Eher zufrieden
    ## 36                    Eher zufrieden                   Eher zufrieden
    ## 37                    Eher zufrieden                   Eher zufrieden
    ## 38                    Sehr zufrieden                   Eher zufrieden
    ## 39                    Eher zufrieden                   Eher zufrieden
    ## 40                    Eher zufrieden                   Sehr zufrieden
    ## 41                    Sehr zufrieden                   Eher zufrieden
    ## 42                    Sehr zufrieden                   Eher zufrieden
    ## 43                    Eher zufrieden                 Eher unzufrieden
    ## 44                    Sehr zufrieden                   Eher zufrieden
    ## 45                    Sehr zufrieden                   Sehr zufrieden
    ## 46                    Eher zufrieden                   Sehr zufrieden
    ## 47                    Sehr zufrieden                   Eher zufrieden
    ## 48                    Eher zufrieden                   Eher zufrieden
    ## 49                    Sehr zufrieden                   Sehr zufrieden
    ## 50                    Sehr zufrieden                   Eher zufrieden
    ## 51                    Eher zufrieden                   Eher zufrieden
    ## 52  Weder zufrieden noch unzufrieden                   Eher zufrieden
    ## 53                    Eher zufrieden                   Eher zufrieden
    ## 54                    Eher zufrieden                   Eher zufrieden
    ## 55                    Sehr zufrieden                   Sehr zufrieden
    ## 56                    Eher zufrieden                   Eher zufrieden
    ## 57                    Sehr zufrieden                   Eher zufrieden
    ## 58                    Sehr zufrieden                   Sehr zufrieden
    ## 59  Weder zufrieden noch unzufrieden                   Eher zufrieden
    ## 60                    Sehr zufrieden                   Eher zufrieden
    ## 61                    Sehr zufrieden                   Eher zufrieden
    ## 62                  Sehr unzufrieden                 Sehr unzufrieden
    ## 63                    Sehr zufrieden                   Eher zufrieden
    ## 64                    Sehr zufrieden                   Sehr zufrieden
    ## 65                    Eher zufrieden                   Eher zufrieden
    ## 66                    Eher zufrieden                   Eher zufrieden
    ## 67                    Sehr zufrieden                   Eher zufrieden
    ## 68  Weder zufrieden noch unzufrieden                 Sehr unzufrieden
    ## 69                    Sehr zufrieden                   Sehr zufrieden
    ## 70                    Eher zufrieden                 Eher unzufrieden
    ## 71                    Eher zufrieden                   Eher zufrieden
    ## 72                    Sehr zufrieden                   Sehr zufrieden
    ## 73                    Eher zufrieden                 Sehr unzufrieden
    ## 74                    Eher zufrieden                   Eher zufrieden
    ## 75                    Eher zufrieden                   Sehr zufrieden
    ## 76  Weder zufrieden noch unzufrieden                   Sehr zufrieden
    ## 77                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 78                    Sehr zufrieden                   Eher zufrieden
    ## 79                    Sehr zufrieden                   Sehr zufrieden
    ## 80                    Sehr zufrieden                   Sehr zufrieden
    ## 81                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 82                    Eher zufrieden                   Eher zufrieden
    ## 83                    Sehr zufrieden                   Sehr zufrieden
    ## 84  Weder zufrieden noch unzufrieden Weder zufrieden noch unzufrieden
    ## 85                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 86                    Sehr zufrieden                   Eher zufrieden
    ## 87                    Sehr zufrieden                   Eher zufrieden
    ## 88                    Eher zufrieden                   Eher zufrieden
    ## 89                    Eher zufrieden                   Eher zufrieden
    ## 90                    Eher zufrieden                   Eher zufrieden
    ## 91                    Sehr zufrieden                   Sehr zufrieden
    ## 92                    Eher zufrieden                   Eher zufrieden
    ## 93                    Eher zufrieden                   Sehr zufrieden
    ## 94                    Sehr zufrieden                   Sehr zufrieden
    ## 95                  Eher unzufrieden                   Eher zufrieden
    ## 96                    Sehr zufrieden                   Eher zufrieden
    ## 97                    Eher zufrieden                   Eher zufrieden
    ## 98                    Eher zufrieden                   Sehr zufrieden
    ## 99                    Sehr zufrieden                   Eher zufrieden
    ## 100                 Eher unzufrieden                   Sehr zufrieden

Operatoren um Subset fÃ¼r Datensatz zu bekommen
-----------------------------------------------

Diese Operatoren eignen sich gut um DatensÃ¤tze einzuschrÃ¤nken

    Dauer <- as.numeric(Daten$bazq020a)

    ## Warning: NAs introduced by coercion

    head(Daten[Dauer>20,])

    ##          a11c019a         a11c020a         a11c021a             a11c022a
    ## 2  Sehr zufrieden Eher unzufrieden Eher unzufrieden Stimme eher nicht zu
    ## 3  Eher zufrieden   Sehr zufrieden Eher unzufrieden Stimme eher nicht zu
    ## 5  Eher zufrieden   Eher zufrieden   Eher zufrieden       Stimme eher zu
    ## NA           <NA>             <NA>             <NA>                 <NA>
    ## 9  Sehr zufrieden   Eher zufrieden   Sehr zufrieden       Stimme eher zu
    ## 15 Sehr zufrieden   Sehr zufrieden   Sehr zufrieden       Stimme eher zu
    ##                a11c023a                a11c024a
    ## 2        Stimme eher zu Stimme voll und ganz zu
    ## 3  Stimme eher nicht zu          Stimme eher zu
    ## 5        Stimme eher zu          Stimme eher zu
    ## NA                 <NA>                    <NA>
    ## 9  Stimme eher nicht zu Stimme voll und ganz zu
    ## 15 Stimme eher nicht zu    Stimme eher nicht zu
    ##                           a11c025a           a11c026a
    ## 2  Eher niedrigeren Lebensstandard Mehrmals die Woche
    ## 3         Denselben Lebensstandard            Täglich
    ## 5         Denselben Lebensstandard            Täglich
    ## NA                            <NA>               <NA>
    ## 9         Denselben Lebensstandard                Nie
    ## 15        Denselben Lebensstandard                Nie
    ##                      a11c027a a11c028a          a11c029a
    ## 2  Mindestens einmal im Monat  Täglich           Täglich
    ## 3           Mehrmals im Monat      Nie           Täglich
    ## 5          Mehrmals die Woche  Täglich           Täglich
    ## NA                       <NA>     <NA>              <NA>
    ## 9                    Seltener  Täglich Mehrmals im Monat
    ## 15                    Täglich  Täglich           Täglich
    ##              a11c030a                   a11c031a           a11c032a
    ## 2             Täglich Mindestens einmal im Monat  Mehrmals im Monat
    ## 3  Mehrmals die Woche                    Täglich Mehrmals die Woche
    ## 5             Täglich         Mehrmals die Woche Mehrmals die Woche
    ## NA               <NA>                       <NA>               <NA>
    ## 9             Täglich                    Täglich           Seltener
    ## 15            Täglich                    Täglich  Mehrmals im Monat
    ##                      a11c033a                              a11c034a
    ## 2                    Seltener Ja, nutzt Internet für private Zwecke
    ## 3           Mehrmals im Monat Ja, nutzt Internet für private Zwecke
    ## 5  Mindestens einmal im Monat Ja, nutzt Internet für private Zwecke
    ## NA                       <NA>                                  <NA>
    ## 9           Mehrmals im Monat Ja, nutzt Internet für private Zwecke
    ## 15          Mehrmals im Monat Ja, nutzt Internet für private Zwecke
    ##    bazq020a a11d054a              a11d056z          a11d092a
    ## 2        30 Männlich 50 bis unter 55 Jahre Missing by filter
    ## 3        35 Männlich 20 bis unter 25 Jahre Missing by filter
    ## 5        23 Männlich 65 bis unter 70 Jahre Missing by filter
    ## NA     <NA>     <NA>                  <NA>              <NA>
    ## 9        25 Männlich 50 bis unter 55 Jahre    Angestellte(r)
    ## 15       25 Männlich 45 bis unter 50 Jahre    Angestellte(r)
    ##          a11c100a          a11c111a          a11c109a
    ## 2            6 .. Missing by design Missing by design
    ## 3            6 .. Missing by design Missing by design
    ## 5            6 .. Missing by design Missing by design
    ## NA           <NA>              <NA>              <NA>
    ## 9            5 .. Missing by design Missing by design
    ## 15 7 Sehr wichtig Missing by design Missing by design

EinschrÃ¤nken mit dem Paket `tidyverse`
---------------------------------------

-   einfacher geht es mit dem Paket `tidyverse`

<!-- -->

    library(tidyverse)

    ## Loading tidyverse: ggplot2
    ## Loading tidyverse: tibble
    ## Loading tidyverse: tidyr
    ## Loading tidyverse: purrr
    ## Loading tidyverse: dplyr

    ## Conflicts with tidy packages ----------------------------------------------

    ## filter(): dplyr, stats
    ## lag():    dplyr, stats

    filter(Daten, Dauer>20)

    ##                            a11c019a                         a11c020a
    ## 1                    Sehr zufrieden                 Eher unzufrieden
    ## 2                    Eher zufrieden                   Sehr zufrieden
    ## 3                    Eher zufrieden                   Eher zufrieden
    ## 4                    Sehr zufrieden                   Eher zufrieden
    ## 5                    Sehr zufrieden                   Sehr zufrieden
    ## 6                    Eher zufrieden                   Sehr zufrieden
    ## 7                    Sehr zufrieden                   Sehr zufrieden
    ## 8                    Sehr zufrieden                   Sehr zufrieden
    ## 9                    Eher zufrieden                   Eher zufrieden
    ## 10                   Sehr zufrieden                   Eher zufrieden
    ## 11                   Eher zufrieden                   Eher zufrieden
    ## 12                   Sehr zufrieden                   Sehr zufrieden
    ## 13                   Sehr zufrieden                   Eher zufrieden
    ## 14                   Sehr zufrieden                   Sehr zufrieden
    ## 15                   Eher zufrieden                   Eher zufrieden
    ## 16 Weder zufrieden noch unzufrieden                   Sehr zufrieden
    ## 17                   Sehr zufrieden                   Sehr zufrieden
    ## 18                   Eher zufrieden Weder zufrieden noch unzufrieden
    ## 19                 Eher unzufrieden                   Eher zufrieden
    ##            a11c021a                a11c022a                  a11c023a
    ## 1  Eher unzufrieden    Stimme eher nicht zu            Stimme eher zu
    ## 2  Eher unzufrieden    Stimme eher nicht zu      Stimme eher nicht zu
    ## 3    Eher zufrieden          Stimme eher zu            Stimme eher zu
    ## 4    Sehr zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 5    Sehr zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 6  Eher unzufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 7    Sehr zufrieden    Stimme eher nicht zu      Stimme eher nicht zu
    ## 8    Sehr zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 9    Eher zufrieden    Stimme eher nicht zu      Stimme eher nicht zu
    ## 10   Sehr zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 11   Sehr zufrieden    Stimme eher nicht zu Stimme überhaupt nicht zu
    ## 12   Sehr zufrieden    Stimme eher nicht zu      Stimme eher nicht zu
    ## 13   Sehr zufrieden Stimme voll und ganz zu      Stimme eher nicht zu
    ## 14   Sehr zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 15   Eher zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 16   Eher zufrieden          Stimme eher zu Stimme überhaupt nicht zu
    ## 17   Eher zufrieden          Stimme eher zu      Stimme eher nicht zu
    ## 18   Eher zufrieden    Stimme eher nicht zu            Stimme eher zu
    ## 19   Eher zufrieden    Stimme eher nicht zu   Stimme voll und ganz zu
    ##                   a11c024a                        a11c025a
    ## 1  Stimme voll und ganz zu Eher niedrigeren Lebensstandard
    ## 2           Stimme eher zu        Denselben Lebensstandard
    ## 3           Stimme eher zu        Denselben Lebensstandard
    ## 4  Stimme voll und ganz zu        Denselben Lebensstandard
    ## 5     Stimme eher nicht zu        Denselben Lebensstandard
    ## 6           Stimme eher zu Eher niedrigeren Lebensstandard
    ## 7  Stimme voll und ganz zu Eher niedrigeren Lebensstandard
    ## 8           Stimme eher zu Eher niedrigeren Lebensstandard
    ## 9           Stimme eher zu Eher niedrigeren Lebensstandard
    ## 10          Stimme eher zu     Eher höheren Lebensstandard
    ## 11 Stimme voll und ganz zu Eher niedrigeren Lebensstandard
    ## 12 Stimme voll und ganz zu Eher niedrigeren Lebensstandard
    ## 13          Stimme eher zu     Eher höheren Lebensstandard
    ## 14          Stimme eher zu Eher niedrigeren Lebensstandard
    ## 15          Stimme eher zu     Eher höheren Lebensstandard
    ## 16          Stimme eher zu        Denselben Lebensstandard
    ## 17 Stimme voll und ganz zu     Eher höheren Lebensstandard
    ## 18          Stimme eher zu Eher niedrigeren Lebensstandard
    ## 19          Stimme eher zu        Denselben Lebensstandard
    ##                      a11c026a                   a11c027a
    ## 1          Mehrmals die Woche Mindestens einmal im Monat
    ## 2                     Täglich          Mehrmals im Monat
    ## 3                     Täglich         Mehrmals die Woche
    ## 4                         Nie                   Seltener
    ## 5                         Nie                    Täglich
    ## 6          Mehrmals die Woche         Mehrmals die Woche
    ## 7                     Täglich                   Seltener
    ## 8                         Nie                   Seltener
    ## 9                    Seltener                        Nie
    ## 10                   Seltener          Mehrmals im Monat
    ## 11          Mehrmals im Monat Mindestens einmal im Monat
    ## 12 Mindestens einmal im Monat                        Nie
    ## 13          Mehrmals im Monat          Mehrmals im Monat
    ## 14                   Seltener         Mehrmals die Woche
    ## 15 Mindestens einmal im Monat                        Nie
    ## 16                   Seltener          Mehrmals im Monat
    ## 17         Mehrmals die Woche                    Täglich
    ## 18                   Seltener                    Täglich
    ## 19                        Nie         Mehrmals die Woche
    ##              a11c028a           a11c029a           a11c030a
    ## 1             Täglich            Täglich            Täglich
    ## 2                 Nie            Täglich Mehrmals die Woche
    ## 3             Täglich            Täglich            Täglich
    ## 4             Täglich  Mehrmals im Monat            Täglich
    ## 5             Täglich            Täglich            Täglich
    ## 6  Mehrmals die Woche            Täglich  Mehrmals im Monat
    ## 7            Seltener            Täglich            Täglich
    ## 8             Täglich            Täglich            Täglich
    ## 9            Seltener            Täglich            Täglich
    ## 10                Nie Mehrmals die Woche            Täglich
    ## 11            Täglich Mehrmals die Woche            Täglich
    ## 12            Täglich            Täglich            Täglich
    ## 13            Täglich            Täglich            Täglich
    ## 14            Täglich            Täglich            Täglich
    ## 15  Mehrmals im Monat            Täglich Mehrmals die Woche
    ## 16  Mehrmals im Monat Mehrmals die Woche Mehrmals die Woche
    ## 17            Täglich Mehrmals die Woche            Täglich
    ## 18            Täglich Mehrmals die Woche            Täglich
    ## 19 Mehrmals die Woche            Täglich            Täglich
    ##                      a11c031a                   a11c032a
    ## 1  Mindestens einmal im Monat          Mehrmals im Monat
    ## 2                     Täglich         Mehrmals die Woche
    ## 3          Mehrmals die Woche         Mehrmals die Woche
    ## 4                     Täglich                   Seltener
    ## 5                     Täglich          Mehrmals im Monat
    ## 6                         Nie                    Täglich
    ## 7          Mehrmals die Woche                    Täglich
    ## 8          Mehrmals die Woche          Mehrmals im Monat
    ## 9          Mehrmals die Woche         Mehrmals die Woche
    ## 10         Mehrmals die Woche                   Seltener
    ## 11                        Nie                    Täglich
    ## 12                    Täglich                    Täglich
    ## 13                    Täglich         Mehrmals die Woche
    ## 14                        Nie          Mehrmals im Monat
    ## 15                    Täglich Mindestens einmal im Monat
    ## 16         Mehrmals die Woche Mindestens einmal im Monat
    ## 17         Mehrmals die Woche         Mehrmals die Woche
    ## 18         Mehrmals die Woche          Mehrmals im Monat
    ## 19                        Nie         Mehrmals die Woche
    ##                      a11c033a
    ## 1                    Seltener
    ## 2           Mehrmals im Monat
    ## 3  Mindestens einmal im Monat
    ## 4           Mehrmals im Monat
    ## 5           Mehrmals im Monat
    ## 6          Mehrmals die Woche
    ## 7          Mehrmals die Woche
    ## 8                    Seltener
    ## 9                    Seltener
    ## 10                    Täglich
    ## 11         Mehrmals die Woche
    ## 12         Mehrmals die Woche
    ## 13          Mehrmals im Monat
    ## 14         Mehrmals die Woche
    ## 15          Mehrmals im Monat
    ## 16          Mehrmals im Monat
    ## 17                   Seltener
    ## 18                   Seltener
    ## 19                    Täglich
    ##                                         a11c034a bazq020a a11d054a
    ## 1          Ja, nutzt Internet für private Zwecke       30 Männlich
    ## 2          Ja, nutzt Internet für private Zwecke       35 Männlich
    ## 3          Ja, nutzt Internet für private Zwecke       23 Männlich
    ## 4          Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 5          Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 6  Nein, nutzt Internet nicht für private Zwecke       25 Männlich
    ## 7  Nein, nutzt Internet nicht für private Zwecke       35 Weiblich
    ## 8          Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 9          Ja, nutzt Internet für private Zwecke       25 Weiblich
    ## 10         Ja, nutzt Internet für private Zwecke       22 Männlich
    ## 11 Nein, nutzt Internet nicht für private Zwecke       25 Weiblich
    ## 12         Ja, nutzt Internet für private Zwecke       30 Weiblich
    ## 13         Ja, nutzt Internet für private Zwecke       21 Männlich
    ## 14 Nein, nutzt Internet nicht für private Zwecke       45 Weiblich
    ## 15         Ja, nutzt Internet für private Zwecke       25 Weiblich
    ## 16         Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 17         Ja, nutzt Internet für private Zwecke       30 Weiblich
    ## 18         Ja, nutzt Internet für private Zwecke       30 Männlich
    ## 19 Nein, nutzt Internet nicht für private Zwecke       30 Weiblich
    ##                 a11d056z          a11d092a               a11c100a
    ## 1  50 bis unter 55 Jahre Missing by filter                   6 ..
    ## 2  20 bis unter 25 Jahre Missing by filter                   6 ..
    ## 3  65 bis unter 70 Jahre Missing by filter                   6 ..
    ## 4  50 bis unter 55 Jahre    Angestellte(r)                   5 ..
    ## 5  45 bis unter 50 Jahre    Angestellte(r)         7 Sehr wichtig
    ## 6  50 bis unter 55 Jahre      Arbeiter/-in 1 Vollkommen unwichtig
    ## 7  65 bis unter 70 Jahre Missing by filter                   5 ..
    ## 8  60 bis unter 63 Jahre    Angestellte(r)         7 Sehr wichtig
    ## 9  45 bis unter 50 Jahre    Angestellte(r)                   5 ..
    ## 10 30 bis unter 35 Jahre Missing by filter                   5 ..
    ## 11 65 bis unter 70 Jahre Missing by filter         7 Sehr wichtig
    ## 12 50 bis unter 55 Jahre    Angestellte(r)         7 Sehr wichtig
    ## 13 65 bis unter 70 Jahre Missing by filter                   6 ..
    ## 14    70 Jahre und Älter Missing by filter         7 Sehr wichtig
    ## 15 40 bis unter 45 Jahre    Angestellte(r)                   4 ..
    ## 16 45 bis unter 50 Jahre   Selbstständiger         7 Sehr wichtig
    ## 17 50 bis unter 55 Jahre    Angestellte(r)         7 Sehr wichtig
    ## 18 65 bis unter 70 Jahre Missing by filter                   5 ..
    ## 19 60 bis unter 63 Jahre Missing by filter                   6 ..
    ##             a11c111a          a11c109a
    ## 1  Missing by design Missing by design
    ## 2  Missing by design Missing by design
    ## 3  Missing by design Missing by design
    ## 4  Missing by design Missing by design
    ## 5  Missing by design Missing by design
    ## 6  Missing by design Missing by design
    ## 7  Missing by design Missing by design
    ## 8  Missing by design Missing by design
    ## 9  Missing by design Missing by design
    ## 10 Missing by design Missing by design
    ## 11 Missing by design Missing by design
    ## 12 Missing by design Missing by design
    ## 13 Missing by design Missing by design
    ## 14 Missing by design Missing by design
    ## 15 Missing by design Missing by design
    ## 16 Missing by design Missing by design
    ## 17 Missing by design Missing by design
    ## 18 Missing by design Missing by design
    ## 19 Missing by design Missing by design

DatensÃ¤tze einschrÃ¤nken
-------------------------

    SEX <- Daten$a11d054a

    Daten[SEX=="MÃ¤nnlich",]

    ##  [1] a11c019a a11c020a a11c021a a11c022a a11c023a a11c024a a11c025a
    ##  [8] a11c026a a11c027a a11c028a a11c029a a11c030a a11c031a a11c032a
    ## [15] a11c033a a11c034a bazq020a a11d054a a11d056z a11d092a a11c100a
    ## [22] a11c111a a11c109a
    ## <0 rows> (or 0-length row.names)

    # gleiches Ergebnis:
    Daten[SEX!="Weiblich",]

    ##                            a11c019a                         a11c020a
    ## 1                    Eher zufrieden Weder zufrieden noch unzufrieden
    ## 2                    Sehr zufrieden                 Eher unzufrieden
    ## 3                    Eher zufrieden                   Sehr zufrieden
    ## 4                    Eher zufrieden                   Sehr zufrieden
    ## 5                    Eher zufrieden                   Eher zufrieden
    ## 7                    Eher zufrieden                   Eher zufrieden
    ## 9                    Sehr zufrieden                   Eher zufrieden
    ## 12                   Sehr zufrieden                   Eher zufrieden
    ## 15                   Sehr zufrieden                   Sehr zufrieden
    ## 16                   Sehr zufrieden                   Sehr zufrieden
    ## 17 Weder zufrieden noch unzufrieden                 Eher unzufrieden
    ## 18                   Eher zufrieden                   Sehr zufrieden
    ## 20                   Eher zufrieden                   Eher zufrieden
    ## 21                   Sehr zufrieden                   Sehr zufrieden
    ## 22                   Sehr zufrieden                   Sehr zufrieden
    ## 23                   Sehr zufrieden                   Eher zufrieden
    ## 24                   Sehr zufrieden                   Sehr zufrieden
    ## 26 Weder zufrieden noch unzufrieden                   Eher zufrieden
    ## 29                   Sehr zufrieden                   Sehr zufrieden
    ## 30                   Eher zufrieden Weder zufrieden noch unzufrieden
    ## 34                   Eher zufrieden                   Sehr zufrieden
    ## 38                   Sehr zufrieden                   Eher zufrieden
    ## 39                   Eher zufrieden                   Eher zufrieden
    ## 41                   Sehr zufrieden                   Eher zufrieden
    ## 42                   Sehr zufrieden                   Eher zufrieden
    ## 45                   Sehr zufrieden                   Sehr zufrieden
    ## 48                   Eher zufrieden                   Eher zufrieden
    ## 49                   Sehr zufrieden                   Sehr zufrieden
    ## 55                   Sehr zufrieden                   Sehr zufrieden
    ## 61                   Sehr zufrieden                   Eher zufrieden
    ## 63                   Sehr zufrieden                   Eher zufrieden
    ## 66                   Eher zufrieden                   Eher zufrieden
    ## 70                   Eher zufrieden                 Eher unzufrieden
    ## 75                   Eher zufrieden                   Sehr zufrieden
    ## 76 Weder zufrieden noch unzufrieden                   Sehr zufrieden
    ## 77                   Eher zufrieden Weder zufrieden noch unzufrieden
    ## 81                   Eher zufrieden Weder zufrieden noch unzufrieden
    ## 82                   Eher zufrieden                   Eher zufrieden
    ## 88                   Eher zufrieden                   Eher zufrieden
    ## 89                   Eher zufrieden                   Eher zufrieden
    ## 90                   Eher zufrieden                   Eher zufrieden
    ## 94                   Sehr zufrieden                   Sehr zufrieden
    ## 98                   Eher zufrieden                   Sehr zufrieden
    ##                            a11c021a                  a11c022a
    ## 1                    Sehr zufrieden      Stimme eher nicht zu
    ## 2                  Eher unzufrieden      Stimme eher nicht zu
    ## 3                  Eher unzufrieden      Stimme eher nicht zu
    ## 4                    Eher zufrieden      Stimme eher nicht zu
    ## 5                    Eher zufrieden            Stimme eher zu
    ## 7                    Eher zufrieden      Stimme eher nicht zu
    ## 9                    Sehr zufrieden            Stimme eher zu
    ## 12                   Eher zufrieden            Stimme eher zu
    ## 15                   Sehr zufrieden            Stimme eher zu
    ## 16                   Eher zufrieden      Stimme eher nicht zu
    ## 17                 Eher unzufrieden      Stimme eher nicht zu
    ## 18                 Eher unzufrieden            Stimme eher zu
    ## 20                   Eher zufrieden      Stimme eher nicht zu
    ## 21                   Sehr zufrieden      Stimme eher nicht zu
    ## 22                   Sehr zufrieden   Stimme voll und ganz zu
    ## 23                   Sehr zufrieden      Stimme eher nicht zu
    ## 24                   Sehr zufrieden      Stimme eher nicht zu
    ## 26                   Eher zufrieden      Stimme eher nicht zu
    ## 29                   Sehr zufrieden            Stimme eher zu
    ## 30                 Sehr unzufrieden Stimme überhaupt nicht zu
    ## 34                   Eher zufrieden      Stimme eher nicht zu
    ## 38                   Sehr zufrieden            Stimme eher zu
    ## 39 Weder zufrieden noch unzufrieden            Stimme eher zu
    ## 41                   Sehr zufrieden            Stimme eher zu
    ## 42                   Eher zufrieden            Stimme eher zu
    ## 45                   Sehr zufrieden            Stimme eher zu
    ## 48                 Eher unzufrieden            Stimme eher zu
    ## 49                   Eher zufrieden            Stimme eher zu
    ## 55                   Eher zufrieden            Stimme eher zu
    ## 61                   Sehr zufrieden            Stimme eher zu
    ## 63                   Sehr zufrieden   Stimme voll und ganz zu
    ## 66                   Sehr zufrieden            Stimme eher zu
    ## 70 Weder zufrieden noch unzufrieden   Stimme voll und ganz zu
    ## 75                   Eher zufrieden      Stimme eher nicht zu
    ## 76                   Eher zufrieden            Stimme eher zu
    ## 77                   Eher zufrieden            Stimme eher zu
    ## 81                   Eher zufrieden      Stimme eher nicht zu
    ## 82                   Sehr zufrieden   Stimme voll und ganz zu
    ## 88                   Sehr zufrieden            Stimme eher zu
    ## 89 Weder zufrieden noch unzufrieden            Stimme eher zu
    ## 90                   Sehr zufrieden            Stimme eher zu
    ## 94                   Sehr zufrieden   Stimme voll und ganz zu
    ## 98                   Eher zufrieden            Stimme eher zu
    ##                     a11c023a                a11c024a
    ## 1             Stimme eher zu          Stimme eher zu
    ## 2             Stimme eher zu Stimme voll und ganz zu
    ## 3       Stimme eher nicht zu          Stimme eher zu
    ## 4             Stimme eher zu    Stimme eher nicht zu
    ## 5             Stimme eher zu          Stimme eher zu
    ## 7             Stimme eher zu          Stimme eher zu
    ## 9       Stimme eher nicht zu Stimme voll und ganz zu
    ## 12      Stimme eher nicht zu    Stimme eher nicht zu
    ## 15      Stimme eher nicht zu    Stimme eher nicht zu
    ## 16   Stimme voll und ganz zu          Stimme eher zu
    ## 17            Stimme eher zu Stimme voll und ganz zu
    ## 18      Stimme eher nicht zu          Stimme eher zu
    ## 20      Stimme eher nicht zu Stimme voll und ganz zu
    ## 21   Stimme voll und ganz zu Stimme voll und ganz zu
    ## 22 Stimme überhaupt nicht zu Stimme voll und ganz zu
    ## 23            Stimme eher zu          Stimme eher zu
    ## 24            Stimme eher zu Stimme voll und ganz zu
    ## 26      Stimme eher nicht zu Stimme voll und ganz zu
    ## 29      Stimme eher nicht zu          Stimme eher zu
    ## 30   Stimme voll und ganz zu Stimme voll und ganz zu
    ## 34 Stimme überhaupt nicht zu          Stimme eher zu
    ## 38      Stimme eher nicht zu          Stimme eher zu
    ## 39      Stimme eher nicht zu          Stimme eher zu
    ## 41      Stimme eher nicht zu          Stimme eher zu
    ## 42            Stimme eher zu          Stimme eher zu
    ## 45      Stimme eher nicht zu          Stimme eher zu
    ## 48      Stimme eher nicht zu Stimme voll und ganz zu
    ## 49 Stimme überhaupt nicht zu Stimme voll und ganz zu
    ## 55            Stimme eher zu              Weiß nicht
    ## 61      Stimme eher nicht zu          Stimme eher zu
    ## 63      Stimme eher nicht zu          Stimme eher zu
    ## 66      Stimme eher nicht zu    Stimme eher nicht zu
    ## 70      Stimme eher nicht zu          Stimme eher zu
    ## 75      Stimme eher nicht zu Stimme voll und ganz zu
    ## 76 Stimme überhaupt nicht zu          Stimme eher zu
    ## 77            Stimme eher zu Stimme voll und ganz zu
    ## 81            Stimme eher zu          Stimme eher zu
    ## 82      Stimme eher nicht zu          Stimme eher zu
    ## 88      Stimme eher nicht zu Stimme voll und ganz zu
    ## 89      Stimme eher nicht zu Stimme voll und ganz zu
    ## 90      Stimme eher nicht zu Stimme voll und ganz zu
    ## 94   Stimme voll und ganz zu    Stimme eher nicht zu
    ## 98      Stimme eher nicht zu          Stimme eher zu
    ##                           a11c025a                   a11c026a
    ## 1  Eher niedrigeren Lebensstandard                   Seltener
    ## 2  Eher niedrigeren Lebensstandard         Mehrmals die Woche
    ## 3         Denselben Lebensstandard                    Täglich
    ## 4  Eher niedrigeren Lebensstandard                    Täglich
    ## 5         Denselben Lebensstandard                    Täglich
    ## 7  Eher niedrigeren Lebensstandard Mindestens einmal im Monat
    ## 9         Denselben Lebensstandard                        Nie
    ## 12 Eher niedrigeren Lebensstandard         Mehrmals die Woche
    ## 15        Denselben Lebensstandard                        Nie
    ## 16 Eher niedrigeren Lebensstandard                        Nie
    ## 17 Eher niedrigeren Lebensstandard                        Nie
    ## 18 Eher niedrigeren Lebensstandard         Mehrmals die Woche
    ## 20     Eher höheren Lebensstandard                        Nie
    ## 21 Eher niedrigeren Lebensstandard                        Nie
    ## 22     Eher höheren Lebensstandard                   Seltener
    ## 23 Eher niedrigeren Lebensstandard                   Seltener
    ## 24 Eher niedrigeren Lebensstandard                        Nie
    ## 26     Eher höheren Lebensstandard                   Seltener
    ## 29 Eher niedrigeren Lebensstandard                        Nie
    ## 30     Eher höheren Lebensstandard                    Täglich
    ## 34        Denselben Lebensstandard         Mehrmals die Woche
    ## 38 Eher niedrigeren Lebensstandard                    Täglich
    ## 39     Eher höheren Lebensstandard                   Seltener
    ## 41     Eher höheren Lebensstandard                   Seltener
    ## 42 Eher niedrigeren Lebensstandard                        Nie
    ## 45                      Weiß nicht          Mehrmals im Monat
    ## 48        Denselben Lebensstandard                   Seltener
    ## 49        Denselben Lebensstandard Mindestens einmal im Monat
    ## 55        Denselben Lebensstandard                    Täglich
    ## 61 Eher niedrigeren Lebensstandard                   Seltener
    ## 63     Eher höheren Lebensstandard          Mehrmals im Monat
    ## 66        Denselben Lebensstandard                   Seltener
    ## 70     Eher höheren Lebensstandard         Mehrmals die Woche
    ## 75        Denselben Lebensstandard                   Seltener
    ## 76        Denselben Lebensstandard                   Seltener
    ## 77        Denselben Lebensstandard                        Nie
    ## 81 Eher niedrigeren Lebensstandard                   Seltener
    ## 82 Eher niedrigeren Lebensstandard                   Seltener
    ## 88 Eher niedrigeren Lebensstandard                        Nie
    ## 89                      Weiß nicht                   Seltener
    ## 90 Eher niedrigeren Lebensstandard          Mehrmals im Monat
    ## 94 Eher niedrigeren Lebensstandard                   Seltener
    ## 98        Denselben Lebensstandard          Mehrmals im Monat
    ##                      a11c027a                   a11c028a
    ## 1          Mehrmals die Woche                    Täglich
    ## 2  Mindestens einmal im Monat                    Täglich
    ## 3           Mehrmals im Monat                        Nie
    ## 4                     Täglich                    Täglich
    ## 5          Mehrmals die Woche                    Täglich
    ## 7                     Täglich                    Täglich
    ## 9                    Seltener                    Täglich
    ## 12          Mehrmals im Monat         Mehrmals die Woche
    ## 15                    Täglich                    Täglich
    ## 16                    Täglich                   Seltener
    ## 17                   Seltener                   Seltener
    ## 18         Mehrmals die Woche         Mehrmals die Woche
    ## 20          Mehrmals im Monat         Mehrmals die Woche
    ## 21                        Nie                        Nie
    ## 22         Mehrmals die Woche Mindestens einmal im Monat
    ## 23          Mehrmals im Monat          Mehrmals im Monat
    ## 24         Mehrmals die Woche          Mehrmals im Monat
    ## 26                   Seltener                        Nie
    ## 29                   Seltener                    Täglich
    ## 30                        Nie                        Nie
    ## 34                   Seltener                   Seltener
    ## 38         Mehrmals die Woche                   Seltener
    ## 39 Mindestens einmal im Monat                    Täglich
    ## 41          Mehrmals im Monat                        Nie
    ## 42                        Nie         Mehrmals die Woche
    ## 45          Mehrmals im Monat                    Täglich
    ## 48         Mehrmals die Woche                   Seltener
    ## 49 Mindestens einmal im Monat                    Täglich
    ## 55                    Täglich                    Täglich
    ## 61          Mehrmals im Monat                    Täglich
    ## 63          Mehrmals im Monat                    Täglich
    ## 66                   Seltener          Mehrmals im Monat
    ## 70          Mehrmals im Monat                    Täglich
    ## 75          Mehrmals im Monat         Mehrmals die Woche
    ## 76          Mehrmals im Monat          Mehrmals im Monat
    ## 77                   Seltener         Mehrmals die Woche
    ## 81                    Täglich                    Täglich
    ## 82         Mehrmals die Woche         Mehrmals die Woche
    ## 88                        Nie                        Nie
    ## 89                   Seltener                   Seltener
    ## 90         Mehrmals die Woche                    Täglich
    ## 94                   Seltener         Mehrmals die Woche
    ## 98         Mehrmals die Woche         Mehrmals die Woche
    ##              a11c029a           a11c030a                   a11c031a
    ## 1             Täglich            Täglich                   Seltener
    ## 2             Täglich            Täglich Mindestens einmal im Monat
    ## 3             Täglich Mehrmals die Woche                    Täglich
    ## 4             Täglich Mehrmals die Woche         Mehrmals die Woche
    ## 5             Täglich            Täglich         Mehrmals die Woche
    ## 7             Täglich            Täglich                    Täglich
    ## 9   Mehrmals im Monat            Täglich                    Täglich
    ## 12            Täglich            Täglich         Mehrmals die Woche
    ## 15            Täglich            Täglich                    Täglich
    ## 16            Täglich            Täglich                    Täglich
    ## 17           Seltener  Mehrmals im Monat         Mehrmals die Woche
    ## 18            Täglich  Mehrmals im Monat                        Nie
    ## 20            Täglich            Täglich                    Täglich
    ## 21            Täglich            Täglich                    Täglich
    ## 22            Täglich  Mehrmals im Monat                    Täglich
    ## 23 Mehrmals die Woche  Mehrmals im Monat         Mehrmals die Woche
    ## 24            Täglich            Täglich                    Täglich
    ## 26            Täglich            Täglich                   Seltener
    ## 29            Täglich            Täglich         Mehrmals die Woche
    ## 30            Täglich            Täglich                   Seltener
    ## 34 Mehrmals die Woche Mehrmals die Woche                    Täglich
    ## 38            Täglich            Täglich                    Täglich
    ## 39            Täglich            Täglich                        Nie
    ## 41 Mehrmals die Woche            Täglich         Mehrmals die Woche
    ## 42 Mehrmals die Woche            Täglich         Mehrmals die Woche
    ## 45 Mehrmals die Woche Mehrmals die Woche                    Täglich
    ## 48           Seltener            Täglich                        Nie
    ## 49            Täglich Mehrmals die Woche         Mehrmals die Woche
    ## 55            Täglich            Täglich                    Täglich
    ## 61            Täglich Mehrmals die Woche                    Täglich
    ## 63            Täglich            Täglich                    Täglich
    ## 66            Täglich Mehrmals die Woche                    Täglich
    ## 70           Seltener Mehrmals die Woche                    Täglich
    ## 75            Täglich            Täglich                    Täglich
    ## 76 Mehrmals die Woche Mehrmals die Woche         Mehrmals die Woche
    ## 77 Mehrmals die Woche            Täglich         Mehrmals die Woche
    ## 81 Mehrmals die Woche            Täglich         Mehrmals die Woche
    ## 82            Täglich            Täglich                    Täglich
    ## 88            Täglich            Täglich                    Täglich
    ## 89            Täglich            Täglich                    Täglich
    ## 90            Täglich            Täglich                    Täglich
    ## 94 Mehrmals die Woche  Mehrmals im Monat                    Täglich
    ## 98 Mehrmals die Woche Mehrmals die Woche         Mehrmals die Woche
    ##                      a11c032a                   a11c033a
    ## 1                     Täglich                    Täglich
    ## 2           Mehrmals im Monat                   Seltener
    ## 3          Mehrmals die Woche          Mehrmals im Monat
    ## 4                    Seltener         Mehrmals die Woche
    ## 5          Mehrmals die Woche Mindestens einmal im Monat
    ## 7          Mehrmals die Woche          Mehrmals im Monat
    ## 9                    Seltener          Mehrmals im Monat
    ## 12         Mehrmals die Woche         Mehrmals die Woche
    ## 15          Mehrmals im Monat          Mehrmals im Monat
    ## 16                        Nie                        Nie
    ## 17          Mehrmals im Monat                        Nie
    ## 18                    Täglich         Mehrmals die Woche
    ## 20                    Täglich          Mehrmals im Monat
    ## 21                   Seltener         Mehrmals die Woche
    ## 22 Mindestens einmal im Monat          Mehrmals im Monat
    ## 23 Mindestens einmal im Monat                    Täglich
    ## 24         Mehrmals die Woche                        Nie
    ## 26 Mindestens einmal im Monat          Mehrmals im Monat
    ## 29          Mehrmals im Monat                   Seltener
    ## 30                    Täglich                   Seltener
    ## 34         Mehrmals die Woche         Mehrmals die Woche
    ## 38          Mehrmals im Monat         Mehrmals die Woche
    ## 39                   Seltener                        Nie
    ## 41                   Seltener                    Täglich
    ## 42          Mehrmals im Monat                        Nie
    ## 45          Mehrmals im Monat                        Nie
    ## 48         Mehrmals die Woche                   Seltener
    ## 49         Mehrmals die Woche         Mehrmals die Woche
    ## 55                    Täglich         Mehrmals die Woche
    ## 61          Mehrmals im Monat          Mehrmals im Monat
    ## 63         Mehrmals die Woche          Mehrmals im Monat
    ## 66         Mehrmals die Woche                    Täglich
    ## 70                    Täglich          Mehrmals im Monat
    ## 75          Mehrmals im Monat          Mehrmals im Monat
    ## 76 Mindestens einmal im Monat          Mehrmals im Monat
    ## 77                    Täglich                   Seltener
    ## 81          Mehrmals im Monat                   Seltener
    ## 82          Mehrmals im Monat                   Seltener
    ## 88         Mehrmals die Woche                    Täglich
    ## 89         Mehrmals die Woche                    Täglich
    ## 90                   Seltener         Mehrmals die Woche
    ## 94                    Täglich                    Täglich
    ## 98 Mindestens einmal im Monat          Mehrmals im Monat
    ##                                         a11c034a bazq020a a11d054a
    ## 1          Ja, nutzt Internet für private Zwecke      -33 Männlich
    ## 2          Ja, nutzt Internet für private Zwecke       30 Männlich
    ## 3          Ja, nutzt Internet für private Zwecke       35 Männlich
    ## 4          Ja, nutzt Internet für private Zwecke      -33 Männlich
    ## 5          Ja, nutzt Internet für private Zwecke       23 Männlich
    ## 7          Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 9          Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 12         Ja, nutzt Internet für private Zwecke       18 Männlich
    ## 15         Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 16         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 17         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 18 Nein, nutzt Internet nicht für private Zwecke       25 Männlich
    ## 20         Ja, nutzt Internet für private Zwecke       20 Männlich
    ## 21         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 22         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 23         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 24         Ja, nutzt Internet für private Zwecke      -33 Männlich
    ## 26         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 29         Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 30         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 34         Ja, nutzt Internet für private Zwecke       17 Männlich
    ## 38         Ja, nutzt Internet für private Zwecke       10 Männlich
    ## 39         Ja, nutzt Internet für private Zwecke      -33 Männlich
    ## 41         Ja, nutzt Internet für private Zwecke       22 Männlich
    ## 42         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 45         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 48 Nein, nutzt Internet nicht für private Zwecke       20 Männlich
    ## 49         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 55         Ja, nutzt Internet für private Zwecke        8 Männlich
    ## 61         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 63         Ja, nutzt Internet für private Zwecke       21 Männlich
    ## 66         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 70         Ja, nutzt Internet für private Zwecke       20 Männlich
    ## 75         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 76         Ja, nutzt Internet für private Zwecke       25 Männlich
    ## 77         Ja, nutzt Internet für private Zwecke       20 Männlich
    ## 81         Ja, nutzt Internet für private Zwecke       30 Männlich
    ## 82         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 88         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 89         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 90         Ja, nutzt Internet für private Zwecke       15 Männlich
    ## 94         Ja, nutzt Internet für private Zwecke       10 Männlich
    ## 98         Ja, nutzt Internet für private Zwecke       15 Männlich
    ##                 a11d056z                                   a11d092a
    ## 1  45 bis unter 50 Jahre                             Angestellte(r)
    ## 2  50 bis unter 55 Jahre                          Missing by filter
    ## 3  20 bis unter 25 Jahre                          Missing by filter
    ## 4  45 bis unter 50 Jahre                             Angestellte(r)
    ## 5  65 bis unter 70 Jahre                          Missing by filter
    ## 7  63 bis unter 65 Jahre Beamter/-in, Richter/-in, Berufssoldat/-in
    ## 9  50 bis unter 55 Jahre                             Angestellte(r)
    ## 12 55 bis unter 60 Jahre                             Angestellte(r)
    ## 15 45 bis unter 50 Jahre                             Angestellte(r)
    ## 16 63 bis unter 65 Jahre                          Missing by filter
    ## 17 50 bis unter 55 Jahre                            Selbstständiger
    ## 18 50 bis unter 55 Jahre                               Arbeiter/-in
    ## 20 25 bis unter 30 Jahre                             Angestellte(r)
    ## 21 35 bis unter 40 Jahre                             Angestellte(r)
    ## 22 18 bis unter 20 Jahre                          Missing by filter
    ## 23 20 bis unter 25 Jahre                          Missing by filter
    ## 24 50 bis unter 55 Jahre                             Angestellte(r)
    ## 26 63 bis unter 65 Jahre                             Angestellte(r)
    ## 29 60 bis unter 63 Jahre                             Angestellte(r)
    ## 30 50 bis unter 55 Jahre                             Angestellte(r)
    ## 34 25 bis unter 30 Jahre                             Angestellte(r)
    ## 38 50 bis unter 55 Jahre                             Angestellte(r)
    ## 39 40 bis unter 45 Jahre                               Arbeiter/-in
    ## 41 30 bis unter 35 Jahre                          Missing by filter
    ## 42 65 bis unter 70 Jahre                          Missing by filter
    ## 45 50 bis unter 55 Jahre                             Angestellte(r)
    ## 48 45 bis unter 50 Jahre                             Angestellte(r)
    ## 49    70 Jahre und Älter                          Missing by filter
    ## 55 45 bis unter 50 Jahre                               Arbeiter/-in
    ## 61 45 bis unter 50 Jahre                             Angestellte(r)
    ## 63 65 bis unter 70 Jahre                          Missing by filter
    ## 66 30 bis unter 35 Jahre Beamter/-in, Richter/-in, Berufssoldat/-in
    ## 70 55 bis unter 60 Jahre                             Angestellte(r)
    ## 75 30 bis unter 35 Jahre                             Angestellte(r)
    ## 76 45 bis unter 50 Jahre                            Selbstständiger
    ## 77 50 bis unter 55 Jahre                             Angestellte(r)
    ## 81 65 bis unter 70 Jahre                          Missing by filter
    ## 82 45 bis unter 50 Jahre                            Selbstständiger
    ## 88 18 bis unter 20 Jahre                                 Ausbildung
    ## 89 35 bis unter 40 Jahre                               Arbeiter/-in
    ## 90 65 bis unter 70 Jahre                          Missing by filter
    ## 94 60 bis unter 63 Jahre                            Selbstständiger
    ## 98 55 bis unter 60 Jahre                               Arbeiter/-in
    ##                  a11c100a          a11c111a          a11c109a
    ## 1                    5 .. Missing by design Missing by design
    ## 2                    6 .. Missing by design Missing by design
    ## 3                    6 .. Missing by design Missing by design
    ## 4                    4 .. Missing by design Missing by design
    ## 5                    6 .. Missing by design Missing by design
    ## 7          7 Sehr wichtig Missing by design Missing by design
    ## 9                    5 .. Missing by design Missing by design
    ## 12                   4 .. Missing by design Missing by design
    ## 15         7 Sehr wichtig Missing by design Missing by design
    ## 16         7 Sehr wichtig Missing by design Missing by design
    ## 17         7 Sehr wichtig Missing by design Missing by design
    ## 18 1 Vollkommen unwichtig Missing by design Missing by design
    ## 20         7 Sehr wichtig Missing by design Missing by design
    ## 21                   5 .. Missing by design Missing by design
    ## 22                   6 .. Missing by design Missing by design
    ## 23         7 Sehr wichtig Missing by design Missing by design
    ## 24         7 Sehr wichtig                Ja                Ja
    ## 26                   6 .. Missing by design Missing by design
    ## 29         7 Sehr wichtig Missing by design Missing by design
    ## 30         7 Sehr wichtig Missing by design Missing by design
    ## 34                   6 .. Missing by design Missing by design
    ## 38         7 Sehr wichtig Missing by design Missing by design
    ## 39         7 Sehr wichtig Missing by design Missing by design
    ## 41                   5 .. Missing by design Missing by design
    ## 42                   5 .. Missing by design Missing by design
    ## 45         7 Sehr wichtig Missing by design Missing by design
    ## 48                   6 .. Missing by design Missing by design
    ## 49         7 Sehr wichtig Missing by design Missing by design
    ## 55         7 Sehr wichtig                Ja                Ja
    ## 61                   6 .. Missing by design Missing by design
    ## 63                   6 .. Missing by design Missing by design
    ## 66         7 Sehr wichtig Missing by design Missing by design
    ## 70                   5 .. Missing by design Missing by design
    ## 75                   5 .. Missing by design Missing by design
    ## 76         7 Sehr wichtig Missing by design Missing by design
    ## 77                   5 .. Missing by design Missing by design
    ## 81                   5 .. Missing by design Missing by design
    ## 82                   6 .. Missing by design Missing by design
    ## 88         7 Sehr wichtig Missing by design Missing by design
    ## 89                   6 .. Missing by design Missing by design
    ## 90                   5 .. Missing by design Missing by design
    ## 94         7 Sehr wichtig Missing by design Missing by design
    ## 98                   6 .. Missing by design Missing by design

Weitere wichtige Optionen
-------------------------

    # Ergebnis in ein Objekt speichern
    subDat <- Daten[Dauer>20,]

    # mehrere Bedingungen kÃ¶nnen mit
    # & verknÃ¼pft werden:
    Daten[Dauer>18 & SEX=="MÃ¤nnlich",]

    ##  [1] a11c019a a11c020a a11c021a a11c022a a11c023a a11c024a a11c025a
    ##  [8] a11c026a a11c027a a11c028a a11c029a a11c030a a11c031a a11c032a
    ## [15] a11c033a a11c034a bazq020a a11d054a a11d056z a11d092a a11c100a
    ## [22] a11c111a a11c109a
    ## <0 rows> (or 0-length row.names)

Die Nutzung einer Sequenz
-------------------------

    Daten[1:3,]

    ##         a11c019a                         a11c020a         a11c021a
    ## 1 Eher zufrieden Weder zufrieden noch unzufrieden   Sehr zufrieden
    ## 2 Sehr zufrieden                 Eher unzufrieden Eher unzufrieden
    ## 3 Eher zufrieden                   Sehr zufrieden Eher unzufrieden
    ##               a11c022a             a11c023a                a11c024a
    ## 1 Stimme eher nicht zu       Stimme eher zu          Stimme eher zu
    ## 2 Stimme eher nicht zu       Stimme eher zu Stimme voll und ganz zu
    ## 3 Stimme eher nicht zu Stimme eher nicht zu          Stimme eher zu
    ##                          a11c025a           a11c026a
    ## 1 Eher niedrigeren Lebensstandard           Seltener
    ## 2 Eher niedrigeren Lebensstandard Mehrmals die Woche
    ## 3        Denselben Lebensstandard            Täglich
    ##                     a11c027a a11c028a a11c029a           a11c030a
    ## 1         Mehrmals die Woche  Täglich  Täglich            Täglich
    ## 2 Mindestens einmal im Monat  Täglich  Täglich            Täglich
    ## 3          Mehrmals im Monat      Nie  Täglich Mehrmals die Woche
    ##                     a11c031a           a11c032a          a11c033a
    ## 1                   Seltener            Täglich           Täglich
    ## 2 Mindestens einmal im Monat  Mehrmals im Monat          Seltener
    ## 3                    Täglich Mehrmals die Woche Mehrmals im Monat
    ##                                a11c034a bazq020a a11d054a
    ## 1 Ja, nutzt Internet für private Zwecke      -33 Männlich
    ## 2 Ja, nutzt Internet für private Zwecke       30 Männlich
    ## 3 Ja, nutzt Internet für private Zwecke       35 Männlich
    ##                a11d056z          a11d092a a11c100a          a11c111a
    ## 1 45 bis unter 50 Jahre    Angestellte(r)     5 .. Missing by design
    ## 2 50 bis unter 55 Jahre Missing by filter     6 .. Missing by design
    ## 3 20 bis unter 25 Jahre Missing by filter     6 .. Missing by design
    ##            a11c109a
    ## 1 Missing by design
    ## 2 Missing by design
    ## 3 Missing by design

[Variablen Labels](https://stackoverflow.com/questions/2151147/using-stata-variable-labels-in-r)
------------------------------------------------------------------------------------------------

    library(foreign)
    dat <- read.dta("https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")

    attributes(dat)

    var.labels <- attr(dat,"var.labels")

-   Genauso funktioniert es auch mit dem Paket `haven`

<!-- -->

    library(haven)
    dat2 <- read_dta(
    "https://github.com/Japhilko/RSocialScience/blob/master/data/GPanel.dta?raw=true")
    var.labels2 <- attr(dat,"var.labels")

Die Spaltennamen umbenennen
---------------------------

-   Mit `colnames` bekommt man die Spaltennamen angezeigt

<!-- -->

    colnames(dat)

    ##  [1] "a11c019a" "a11c020a" "a11c021a" "a11c022a" "a11c023a" "a11c024a"
    ##  [7] "a11c025a" "a11c026a" "a11c027a" "a11c028a" "a11c029a" "a11c030a"
    ## [13] "a11c031a" "a11c032a" "a11c033a" "a11c034a" "bazq020a" "a11d054a"
    ## [19] "a11d056z" "a11d092a" "a11c100a" "a11c111a" "a11c109a"

-   So kann man die Spaltennamen umbenennen:

<!-- -->

    colnames(dat) <-var.labels

-   Analog geht das fÃ¼r die Reihennamen

<!-- -->

    rownames(dat)

    ##   [1] "1"   "2"   "3"   "4"   "5"   "6"   "7"   "8"   "9"   "10"  "11" 
    ##  [12] "12"  "13"  "14"  "15"  "16"  "17"  "18"  "19"  "20"  "21"  "22" 
    ##  [23] "23"  "24"  "25"  "26"  "27"  "28"  "29"  "30"  "31"  "32"  "33" 
    ##  [34] "34"  "35"  "36"  "37"  "38"  "39"  "40"  "41"  "42"  "43"  "44" 
    ##  [45] "45"  "46"  "47"  "48"  "49"  "50"  "51"  "52"  "53"  "54"  "55" 
    ##  [56] "56"  "57"  "58"  "59"  "60"  "61"  "62"  "63"  "64"  "65"  "66" 
    ##  [67] "67"  "68"  "69"  "70"  "71"  "72"  "73"  "74"  "75"  "76"  "77" 
    ##  [78] "78"  "79"  "80"  "81"  "82"  "83"  "84"  "85"  "86"  "87"  "88" 
    ##  [89] "89"  "90"  "91"  "92"  "93"  "94"  "95"  "96"  "97"  "98"  "99" 
    ## [100] "100"

Indizieren
----------

-   Das Dollarzeichen kann man auch nutzen um einzelne Spalten
    anzusprechen

<!-- -->

    head(dat$a11c019a)

    ## [1] Eher zufrieden Sehr zufrieden Eher zufrieden Eher zufrieden
    ## [5] Eher zufrieden Sehr zufrieden
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

    dat$a11c019a[1:10]

    ##  [1] Eher zufrieden Sehr zufrieden Eher zufrieden Eher zufrieden
    ##  [5] Eher zufrieden Sehr zufrieden Eher zufrieden Eher zufrieden
    ##  [9] Sehr zufrieden Sehr zufrieden
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

Auf Spalten zugreifen
---------------------

-   Wie bereits beschrieben kann man auch Zahlen nutzen um auf die
    Spalten zuzugreifen

<!-- -->

    head(dat[,1])
    head(dat[,"a11c019a"]) # liefert das gleiche Ergebnis

Exkurs - Labels wie verwenden
-----------------------------

> Tools for Working with Categorical Variables (Factors)

    library("forcats")

    ## 
    ## Attaching package: 'forcats'

    ## The following object is masked from 'package:haven':
    ## 
    ##     as_factor

-   `fct_collapse` - um Faktorlevel zusammenzufassen
-   `fct_count` - um die EintrÃ¤ge in einem Faktor zu zÃ¤hlen
-   `fct_drop` - Unbenutzte Levels raus nehmen

[Rekodieren](https://www.r-bloggers.com/recoding-variables-in-r-pedagogic-considerations/)
------------------------------------------------------------------------------------------

    library(car)

    ## 
    ## Attaching package: 'car'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     recode

    ## The following object is masked from 'package:purrr':
    ## 
    ##     some

    head(dat$a11c020a)

    ## [1] Weder zufrieden noch unzufrieden Eher unzufrieden                
    ## [3] Sehr zufrieden                   Sehr zufrieden                  
    ## [5] Eher zufrieden                   Eher zufrieden                  
    ## 7 Levels: Item nonresponse Sehr zufrieden ... Weiß nicht

    head(recode(dat$a11c020a,"'Eher unzufrieden'='A';else='B'"))

    ## [1] B A B B B B
    ## Levels: A B

Das Paket `tibble`
------------------

    install.packages("tibble")

    library(tibble)
    gpanel1 <- as_tibble(dat)
    gpanel1

    ## # A tibble: 100 × 23
    ##          a11c019a                         a11c020a         a11c021a
    ## *          <fctr>                           <fctr>           <fctr>
    ## 1  Eher zufrieden Weder zufrieden noch unzufrieden   Sehr zufrieden
    ## 2  Sehr zufrieden                 Eher unzufrieden Eher unzufrieden
    ## 3  Eher zufrieden                   Sehr zufrieden Eher unzufrieden
    ## 4  Eher zufrieden                   Sehr zufrieden   Eher zufrieden
    ## 5  Eher zufrieden                   Eher zufrieden   Eher zufrieden
    ## 6  Sehr zufrieden                   Eher zufrieden   Eher zufrieden
    ## 7  Eher zufrieden                   Eher zufrieden   Eher zufrieden
    ## 8  Eher zufrieden                   Eher zufrieden   Eher zufrieden
    ## 9  Sehr zufrieden                   Eher zufrieden   Sehr zufrieden
    ## 10 Sehr zufrieden                   Sehr zufrieden   Eher zufrieden
    ## # ... with 90 more rows, and 20 more variables: a11c022a <fctr>,
    ## #   a11c023a <fctr>, a11c024a <fctr>, a11c025a <fctr>, a11c026a <fctr>,
    ## #   a11c027a <fctr>, a11c028a <fctr>, a11c029a <fctr>, a11c030a <fctr>,
    ## #   a11c031a <fctr>, a11c032a <fctr>, a11c033a <fctr>, a11c034a <fctr>,
    ## #   bazq020a <chr>, a11d054a <fctr>, a11d056z <fctr>, a11d092a <fctr>,
    ## #   a11c100a <fctr>, a11c111a <fctr>, a11c109a <fctr>

Schleifen
---------

    erg <- vector()

    for (i in 1:ncol(dat)){
      erg[i] <- length(table(dat[,i]))  
    }

[Fehlende Werte ausschlieÃŸen](http://faculty.nps.edu/sebuttre/home/R/missings.html)
------------------------------------------------------------------------------------

-   Mathe-Funktionen haben in der Regel einen Weg, um fehlende Werte in
    ihren Berechnungen auszuschlieÃŸen.
-   `mean(), median(), colSums(), var(), sd(), min()` und \`max() all
    take the na.rm argument.

Fehlende Werte umkodieren
-------------------------

    Daten$bazq020a[Daten$bazq020a==-99] <- NA

-   [Quick-R zu fehlenden
    Werten](http://www.statmethods.net/input/missingdata.html)

-   [Fehlende Werte rekodieren](http://uc-r.github.io/na_recode)

Weitere Links
-------------

-   [Tidy
    data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html) -
    das Paket `tidyr`

-   [Die `tidyverse` Sammlung](http://tidyverse.org/)

-   [Data wrangling with R and
    RStudio](https://www.rstudio.com/resources/webinars/data-wrangling-with-r-and-rstudio/)
