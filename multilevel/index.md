[EIn Beispieldatensatz](https://www.jaredknowles.com/journal/2013/11/25/getting-started-with-mixed-effect-models-in-r)
----------------------------------------------------------------------------------------------------------------------

    install.packages("lme4")

    # Or to install the dev version
    library(devtools)
    install_github("lme4", user = "lme4")

[Multilevel models with R](https://cran.r-project.org/doc/contrib/Bliese_Multilevel.pdf)
----------------------------------------------------------------------------------------

[Paket lmer](https://cran.r-project.org/doc/contrib/Bliese_Multilevel.pdf)
--------------------------------------------------------------------------

    lmer(y ~ 1 + (1 | subjects), data=data)
    # nlme
    lme(y ~ 1, random = ~ 1 | subjects, data=data)
