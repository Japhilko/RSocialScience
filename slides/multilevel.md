Basis Regression
----------------

-   [How to go about interpreting regression
    cofficients](https://www.r-bloggers.com/how-to-go-about-interpreting-regression-cofficients/)

[Ein Beispieldatensatz](https://www.jaredknowles.com/journal/2013/11/25/getting-started-with-mixed-effect-models-in-r)
----------------------------------------------------------------------------------------------------------------------

    install.packages("lme4")

    # Or to install the dev version
    library(devtools)
    install_github("lme4", user = "lme4")

[Multilevel Modeling of Educational Data using R (Part 1)](https://www.r-bloggers.com/multilevel-modeling-of-educational-data-using-r-part-1/)
----------------------------------------------------------------------------------------------------------------------------------------------

-   [Original
    Blogg](http://hagutierrezro.blogspot.de/2016/10/multilevel-modeling-of-educational-data.html)

<!-- -->

    install.packages("lme4")
    install.packages("sjPlot")

    library(ggplot2)
    library(gridExtra)
    library(lme4)
    library(sjPlot)
    library(dplyr)

    set.seed(123)

Anzahl der SchÃ¼ler pro Schule

    N <- 100 
    sigma <- 200

    x1 <- runif(N, 10, 40)
    x2 <- runif(N, 25, 55)
    x3 <- runif(N, 40, 70)
    x4 <- runif(N, 55, 85)
    x5 <- runif(N, 70, 100)

    y1 <- 20 + 0 * x1 + rnorm(N, 0, sigma)
    y2 <- 40 + 10 * x2 + rnorm(N, 0, sigma)
    y3 <- 60 + 20 * x3 + rnorm(N, 0, sigma)
    y4 <- 80 + 30 * x4 + rnorm(N, 0, sigma)
    y5 <- 100 + 40 * x5 + rnorm(N, 0, sigma)

    ID <- rep(LETTERS[1:5], each = N)

    test <- data.frame(SES = c(x1, x2, x3, x4, x5), 
     Score = c(y1, y2, y3, y4, y5), ID = ID)

    HLM0 <- lmer(Score ~ (1 | ID), data = test)
    coef(HLM0)

    ## $ID
    ##   (Intercept)
    ## A     45.7893
    ## B    430.7218
    ## C   1182.1760
    ## D   2145.2329
    ## E   3489.1408
    ## 
    ## attr(,"class")
    ## [1] "coef.mer"

    summary(HLM0)

    ## Linear mixed model fit by REML ['lmerMod']
    ## Formula: Score ~ (1 | ID)
    ##    Data: test
    ## 
    ## REML criterion at convergence: 7130.6
    ## 
    ## Scaled residuals: 
    ##      Min       1Q   Median       3Q      Max 
    ## -2.74559 -0.69317 -0.00757  0.68337  2.96511 
    ## 
    ## Random effects:
    ##  Groups   Name        Variance Std.Dev.
    ##  ID       (Intercept) 1931757  1389.9  
    ##  Residual               87346   295.5  
    ## Number of obs: 500, groups:  ID, 5
    ## 
    ## Fixed effects:
    ##             Estimate Std. Error t value
    ## (Intercept)   1458.6      621.7   2.346

-   96% - Between-schools variance
-   4% - Within-schools variance

<!-- -->

    100 * 87346 / (87346 + 1931757)

    ## [1] 4.32598

    HLM1 <- lmer(Score ~ SES + (SES | ID), data = test)
    coef(HLM1)

    ## $ID
    ##   (Intercept)        SES
    ## A    36.46403  0.3798176
    ## B    37.21548  9.7596238
    ## C    38.10716 20.8897251
    ## D    38.85560 30.2320140
    ## E    39.70150 40.7907396
    ## 
    ## attr(,"class")
    ## [1] "coef.mer"

    summary(HLM1)

    ## Linear mixed model fit by REML ['lmerMod']
    ## Formula: Score ~ SES + (SES | ID)
    ##    Data: test
    ## 
    ## REML criterion at convergence: 6742.1
    ## 
    ## Scaled residuals: 
    ##      Min       1Q   Median       3Q      Max 
    ## -2.83274 -0.64740  0.02662  0.69063  2.67309 
    ## 
    ## Random effects:
    ##  Groups   Name        Variance Std.Dev. Corr
    ##  ID       (Intercept)     1.65   1.285      
    ##           SES           257.09  16.034  1.00
    ##  Residual             40400.24 200.998      
    ## Number of obs: 500, groups:  ID, 5
    ## 
    ## Fixed effects:
    ##             Estimate Std. Error t value
    ## (Intercept)   38.069     45.863   0.830
    ## SES           20.410      7.236   2.821
    ## 
    ## Correlation of Fixed Effects:
    ##     (Intr)
    ## SES -0.119

    # 1% - BS variance
    # 99% - WS variance
    100 * 40400.24 / (40400.24 + 257.09 + 1.65)

    ## [1] 99.36363

    # Percentage of variation explained by SES between schools
    1 - ((257.09 + 1.65) / 1931757)

    ## [1] 0.9998661

    # Percentage of variation explained by SES within schools
    1 - (40400.24 / 87346)

    ## [1] 0.5374689

Links
-----

-   [Uncertainty in parameter estimates using multilevel
    models](https://www.r-bloggers.com/uncertainty-in-parameter-estimates-using-multilevel-models/)

[Multilevel models with R](https://cran.r-project.org/doc/contrib/Bliese_Multilevel.pdf)
----------------------------------------------------------------------------------------

[Paket lmer](https://cran.r-project.org/doc/contrib/Bliese_Multilevel.pdf)
--------------------------------------------------------------------------

    lmer(y ~ 1 + (1 | subjects), data=data)
    # nlme
    lme(y ~ 1, random = ~ 1 | subjects, data=data)
