Die lineare Regression
----------------------

Maindonald - [Data
Analysis](https://cran.r-project.org/doc/contrib/usingR.pdf)

-   Einführung in R
-   Datenanalyse
-   Statistische Modelle
-   Inferenzkonzepte
-   Regression mit einem Prädiktor
-   Multiple lineare Regression
-   Ausweitung des linearen Modells
-   ...

Lineare Regression in R - Beispieldatensatz
-------------------------------------------

John H. Maindonald and W. John Braun

DAAG - [Data Analysis and Graphics Data and
Functions](http://cran.ms.unimelb.edu.au/web/packages/DAAG/DAAG.pdf)

    install.packages("DAAG")

    library("DAAG")
    data(roller)

help on roller data:

    ?roller

Das lineare Regressionsmodell in R
----------------------------------

Schätzen eines Regressionsmodells:

    roller.lm <- lm(depression ~ weight, data = roller)

So bekommt man die Schätzwerte:

    summary(roller.lm)

    ## 
    ## Call:
    ## lm(formula = depression ~ weight, data = roller)
    ## 
    ## Residuals:
    ##    Min     1Q Median     3Q    Max 
    ## -8.180 -5.580 -1.346  5.920  8.020 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)  -2.0871     4.7543  -0.439  0.67227   
    ## weight        2.6667     0.7002   3.808  0.00518 **
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 6.735 on 8 degrees of freedom
    ## Multiple R-squared:  0.6445, Adjusted R-squared:  0.6001 
    ## F-statistic:  14.5 on 1 and 8 DF,  p-value: 0.005175

Falls das Modell ohne Intercept gesch?tzt werden soll:

    lm(depression ~ -1 + weight, data = roller)

    ## 
    ## Call:
    ## lm(formula = depression ~ -1 + weight, data = roller)
    ## 
    ## Coefficients:
    ## weight  
    ##  2.392

Summary des Modells
-------------------

    summary(roller.lm)

    ## 
    ## Call:
    ## lm(formula = depression ~ weight, data = roller)
    ## 
    ## Residuals:
    ##    Min     1Q Median     3Q    Max 
    ## -8.180 -5.580 -1.346  5.920  8.020 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)  -2.0871     4.7543  -0.439  0.67227   
    ## weight        2.6667     0.7002   3.808  0.00518 **
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 6.735 on 8 degrees of freedom
    ## Multiple R-squared:  0.6445, Adjusted R-squared:  0.6001 
    ## F-statistic:  14.5 on 1 and 8 DF,  p-value: 0.005175

R arbeitet mit Objekten
-----------------------

-   `roller.lm` ist nun ein spezielles Regressions-Objekt
-   Auf dieses Objekt können nun verschiedene Funktionen angewendet
    werden

<!-- -->

    predict(roller.lm) # Vorhersage

    ##         1         2         3         4         5         6         7 
    ##  2.979669  6.179765  6.713114 10.713233 12.046606 14.180002 14.980026 
    ##         8         9        10 
    ## 18.180121 24.046962 30.980502

    resid(roller.lm) # Residuen

    ##          1          2          3          4          5          6 
    ## -0.9796695 -5.1797646 -1.7131138 -5.7132327  7.9533944  5.8199976 
    ##          7          8          9         10 
    ##  8.0199738 -8.1801213  5.9530377 -5.9805017

Residuenplot
------------

-   Sind Annahmen des linearen Regressionsmodells verletzt?
-   Dies ist der Fall, wenn ein Muster abweichend von einer Linie zu
    erkennen ist.
-   Hier ist der Datensatz sehr klein

<!-- -->

    plot(roller.lm,1)

![](index_files/figure-markdown_strict/unnamed-chunk-10-1.png)

Residuenplot
------------

-   Wenn die Residuen normalverteilt sind sollten sie auf einer
    Linie liegen.

<!-- -->

    plot(roller.lm,2)

![](index_files/figure-markdown_strict/unnamed-chunk-11-1.png)

Regressionsdiagnostik mit Basis-R
---------------------------------

Ein einfaches Modell

    N <- 5
    x1 <- rnorm(N)
    y <- runif(N)

Die Dichte der beiden Vektoren
------------------------------

    par(mfrow=c(1,2))
    plot(density(x1))
    plot(density(y))

![](index_files/figure-markdown_strict/unnamed-chunk-13-1.png)

Modellvorhersage machen
-----------------------

    mod1 <- lm(y~x1)
    pre <- predict(mod1)
    y

    ## [1] 0.2922439 0.3218071 0.3528771 0.8962026 0.2060495

    pre

    ##         1         2         3         4         5 
    ## 0.3554356 0.4134421 0.5003626 0.4203371 0.3796029

Regressionsdiagnostik mit Basis-R
---------------------------------

    plot(x1,y)
    abline(mod1)
    segments(x1, y, x1, pre, col="red")

![](index_files/figure-markdown_strict/unnamed-chunk-15-1.png)

Beispieldaten Luftqualität
--------------------------

    library(datasets)
    ?airquality

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/DataAirquality.PNG)

Das `visreg`-Paket
------------------

Ein Modell wird auf dem airquality Datensatz geschätzt

    install.packages("visreg")

    library(visreg)
    fit <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)
    summary(fit)

    ## 
    ## Call:
    ## lm(formula = Ozone ~ Solar.R + Wind + Temp, data = airquality)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -40.485 -14.219  -3.551  10.097  95.619 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) -64.34208   23.05472  -2.791  0.00623 ** 
    ## Solar.R       0.05982    0.02319   2.580  0.01124 *  
    ## Wind         -3.33359    0.65441  -5.094 1.52e-06 ***
    ## Temp          1.65209    0.25353   6.516 2.42e-09 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 21.18 on 107 degrees of freedom
    ##   (42 observations deleted due to missingness)
    ## Multiple R-squared:  0.6059, Adjusted R-squared:  0.5948 
    ## F-statistic: 54.83 on 3 and 107 DF,  p-value: < 2.2e-16

Visualisierung
--------------

    par(mfrow=c(2,2))
    visreg(fit)

![](index_files/figure-markdown_strict/unnamed-chunk-19-1.png)

[Und dann mit `visreg` visualisiert.](http://myweb.uiowa.edu/pbreheny/publications/visreg.pdf)
----------------------------------------------------------------------------------------------

-   Zweites Argument - Spezifikation erklärende Variable für
    Visualisierung

<!-- -->

    visreg(fit, "Wind", type = "contrast")

![](index_files/figure-markdown_strict/unnamed-chunk-20-1.png)

Visualisierung mit dem Paket `visreg`
-------------------------------------

    visreg(fit, "Wind", type = "contrast")

![](index_files/figure-markdown_strict/unnamed-chunk-21-1.png)

Das `visreg`-Paket
------------------

-   Das Default-Argument für type ist conditional.

<!-- -->

    visreg(fit, "Wind", type = "conditional")

![](index_files/figure-markdown_strict/unnamed-chunk-22-1.png)

Regression mit Faktoren
-----------------------

Mit `visreg` können die Effekte bei Faktoren visualisiert werden.

    airquality$Heat <- cut(airquality$Temp, 3, 
        labels=c("Cool", "Mild", "Hot"))
    fit.heat <- lm(Ozone ~ Solar.R + Wind + Heat, 
        data = airquality)
    summary(fit.heat)

    ## 
    ## Call:
    ## lm(formula = Ozone ~ Solar.R + Wind + Heat, data = airquality)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -33.473 -12.794  -2.686   8.461 107.035 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 48.27682    8.83072   5.467 3.07e-07 ***
    ## Solar.R      0.06524    0.02145   3.042  0.00296 ** 
    ## Wind        -3.49803    0.59042  -5.925 3.94e-08 ***
    ## HeatMild     9.05367    4.88257   1.854  0.06648 .  
    ## HeatHot     43.13970    5.98618   7.207 8.79e-11 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 19.9 on 106 degrees of freedom
    ##   (42 observations deleted due to missingness)
    ## Multiple R-squared:  0.6554, Adjusted R-squared:  0.6424 
    ## F-statistic:  50.4 on 4 and 106 DF,  p-value: < 2.2e-16

Effekte von Faktoren
--------------------

    par(mfrow=c(1,2))
    visreg(fit.heat, "Heat", type = "contrast")
    visreg(fit.heat, "Heat", type = "conditional")

![](index_files/figure-markdown_strict/unnamed-chunk-24-1.png)

Das Paket visreg - Interaktionen
--------------------------------

    airquality$Heat <- cut(airquality$Temp, 3, 
    labels=c("Cool", "Mild", "Hot"))
    fit <- lm(Ozone ~ Solar.R + Wind * Heat, data = airquality)
    summary(fit)

    ## 
    ## Call:
    ## lm(formula = Ozone ~ Solar.R + Wind * Heat, data = airquality)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -34.472 -11.640  -1.919   7.403 102.428 
    ## 
    ## Coefficients:
    ##               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)    4.48042   17.38219   0.258 0.797102    
    ## Solar.R        0.07634    0.02137   3.572 0.000538 ***
    ## Wind           0.05854    1.34860   0.043 0.965458    
    ## HeatMild      56.72928   18.53110   3.061 0.002805 ** 
    ## HeatHot       94.68619   18.61619   5.086 1.63e-06 ***
    ## Wind:HeatMild -4.11933    1.57108  -2.622 0.010054 *  
    ## Wind:HeatHot  -4.88125    1.74358  -2.800 0.006101 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 19.28 on 104 degrees of freedom
    ##   (42 observations deleted due to missingness)
    ## Multiple R-squared:  0.6825, Adjusted R-squared:  0.6642 
    ## F-statistic: 37.26 on 6 and 104 DF,  p-value: < 2.2e-16

Steuern der Graphikausgabe mittels `layout`
-------------------------------------------

    visreg(fit, "Wind", by = "Heat",layout=c(3,1))

![](index_files/figure-markdown_strict/unnamed-chunk-26-1.png)

Das Paket `visreg` - Interaktionen overlay
------------------------------------------

    fit<-lm(Ozone~Solar.R+Wind*Heat,data=airquality)
    visreg(fit,"Wind",by="Heat",overlay=TRUE,partial=FALSE)

![](index_files/figure-markdown_strict/unnamed-chunk-27-1.png)

Das Paket `visreg` - `visreg2d`
-------------------------------

    fit2<-lm(Ozone~Solar.R+Wind*Temp,data=airquality)
    visreg2d(fit2,"Wind","Temp",plot.type="image")

![](index_files/figure-markdown_strict/unnamed-chunk-28-1.png)

Das Paket visreg - surface
--------------------------

    visreg2d(fit2, "Wind", "Temp", plot.type = "persp")

![](index_files/figure-markdown_strict/unnamed-chunk-29-1.png)

Regression mit dem `survey` Paket
---------------------------------

    library(survey)
    data(api)
    head(apipop)

    ##              cds stype            name                      sname snum
    ## 1 01611190130229     H    Alameda High               Alameda High    1
    ## 2 01611190132878     H    Encinal High               Encinal High    2
    ## 3 01611196000004     M  Chipman Middle             Chipman Middle    3
    ## 4 01611196090005     E Lum (Donald D.) Lum (Donald D.) Elementary    4
    ## 5 01611196090013     E Edison Elementa          Edison Elementary    5
    ## 6 01611196090021     E Otis (Frank) El    Otis (Frank) Elementary    6
    ##                  dname dnum   cname cnum flag pcttest api00 api99 target
    ## 1 Alameda City Unified    6 Alameda    1   NA      96   731   693      5
    ## 2 Alameda City Unified    6 Alameda    1   NA      99   622   589     11
    ## 3 Alameda City Unified    6 Alameda    1   NA      99   622   572     11
    ## 4 Alameda City Unified    6 Alameda    1   NA      99   774   732      3
    ## 5 Alameda City Unified    6 Alameda    1   NA      99   811   784      1
    ## 6 Alameda City Unified    6 Alameda    1   NA     100   780   725      4
    ##   growth sch.wide comp.imp both awards meals ell yr.rnd mobility acs.k3
    ## 1     38      Yes      Yes  Yes    Yes    14  16   <NA>        9     NA
    ## 2     33      Yes       No   No     No    20  18   <NA>       13     NA
    ## 3     50      Yes      Yes  Yes    Yes    55  25   <NA>       20     NA
    ## 4     42      Yes      Yes  Yes    Yes    35  26   <NA>       21     20
    ## 5     27      Yes      Yes  Yes    Yes    15   9   <NA>       11     20
    ## 6     55      Yes      Yes  Yes    Yes    25  18   <NA>       12     20
    ##   acs.46 acs.core pct.resp not.hsg hsg some.col col.grad grad.sch avg.ed
    ## 1     NA       25       91       6  16       22       38       18   3.45
    ## 2     NA       27       84      11  20       29       31        9   3.06
    ## 3     26       27       86      11  31       30       20        8   2.82
    ## 4     30       NA       96       3  22       29       31       15   3.32
    ## 5     29       NA       96       3   9       29       26       33   3.76
    ## 6     29       NA       87       6  11       28       41       13   3.44
    ##   full emer enroll api.stu
    ## 1   85   16   1278    1090
    ## 2   90   10   1113     840
    ## 3   80   12    546     472
    ## 4   96    4    330     272
    ## 5   95    5    233     216
    ## 6   90    5    276     247

[Das Survey Design spezifizieren](https://www.r-bloggers.com/linear-models-with-weighted-observations/)
-------------------------------------------------------------------------------------------------------

    dstrat<-svydesign(id=~1,strata=~stype, weights=~pw, 
                      data=apistrat, fpc=~fpc)

### Die Regression rechnen

    summary(svyglm(api00~ell+meals+mobility, 
                   design=dstrat))

    ## 
    ## Call:
    ## svyglm(formula = api00 ~ ell + meals + mobility, design = dstrat)
    ## 
    ## Survey design:
    ## svydesign(id = ~1, strata = ~stype, weights = ~pw, data = apistrat, 
    ##     fpc = ~fpc)
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 820.8873    10.0777  81.456   <2e-16 ***
    ## ell          -0.4806     0.3920  -1.226    0.222    
    ## meals        -3.1415     0.2839 -11.064   <2e-16 ***
    ## mobility      0.2257     0.3932   0.574    0.567    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 5171.966)
    ## 
    ## Number of Fisher Scoring iterations: 2

Linkliste - lineare Regression
------------------------------

-   Regression -
    [r-bloggers](http://www.r-bloggers.com/r-tutorial-series-simple-linear-regression/)

-   Das Komplette Buch von
    [Faraway](http://cran.r-project.org/doc/contrib/Faraway-PRA.pdf)-
    sehr intuitiv geschrieben.

-   Gute Einführung auf
    [Quick-R](http://www.statmethods.net/stats/regression.html)

-   [Multiple
    Regression](https://www.r-bloggers.com/multiple-regression-part-1/)

-   Basis Regression - [How to go about interpreting regression
    cofficients](https://www.r-bloggers.com/how-to-go-about-interpreting-regression-cofficients/)

Aufgabe - lineare Regression
----------------------------

<!--
[Mietspiegel München](http://data.ub.uni-muenchen.de/2/)
-->
Beschrieben wird Wegstrecke, dreier Spielzeugautos die in
unterschiedlichen Winkeln Rampe herunterfuhren.

-   angle: Winkel der Rampe
-   distance: Zurückgelegte Strecke des Spielzeugautos
-   car: Autotyp (1, 2 oder 3)

1.  Lesen Sie den Datensatz `toycars` (Paket `DAAG`) in einen dataframe
    `data` ein und wandeln Sie die Variable `car` des Datensatzes in
    einen Faktor (`as.factor`) um.

2.  Erstellen Sie drei Boxplots, die die zurückgelegte Strecke getrennt
    nach dem Faktor car darstellen.

3.  Schätzen Sie für die Autos die Parameter des folgenden linearen
    Modells mit Hilfe der Funktion `lm()`

*d**i**s**t**a**n**c**e*<sub>*i*</sub> = *β*<sub>0</sub> + *β*<sub>1</sub> ⋅ *a**n**g**l**e*<sub>*i*</sub> + *ϵ*<sub>*i*</sub>

1.  Überprüfen Sie deskriptiv die Anpassung der drei Modelle. Deutet das
    *R*<sup>2</sup>
     jeweils auf eine gute Modellanpassung hin?
