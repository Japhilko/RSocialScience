#' ---
#' title: "Lineare Regression"
#' author: "Jan-Philipp Kolb"
#' date: "20 Juni 2017"
#' output: md_document
#' ---
#' 
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,warning=F,message=F,eval=T)

#' 
#' 
#' ## Die lineare Regression
#' 
#' Maindonald - [Data Analysis](https://cran.r-project.org/doc/contrib/usingR.pdf)
#' 
#' -  Einführung in R 
#' -  Datenanalyse
#' -  Statistische Modelle
#' -  Inferenzkonzepte
#' -  Regression mit einem Prädiktor
#' -  Multiple lineare Regression
#' -  Ausweitung des linearen Modells
#' -  ...
#' 
#' ## Lineare Regression in R - Beispieldatensatz
#' 
#' John H. Maindonald and W. John Braun
#' 
#' DAAG - [Data Analysis and Graphics Data and Functions](http://cran.ms.unimelb.edu.au/web/packages/DAAG/DAAG.pdf)
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("DAAG")

#' 
#' 
## ------------------------------------------------------------------------
library("DAAG")
data(roller)

#' 
#' help on roller data:
#' 
## ----eval=F--------------------------------------------------------------
## ?roller

#' 
#' ## Das lineare Regressionsmodell in R
#' 
#' Schätzen eines Regressionsmodells:
#' 
## ------------------------------------------------------------------------
roller.lm <- lm(depression ~ weight, data = roller)

#' 
#' So bekommt man die Schätzwerte:
#' 
## ------------------------------------------------------------------------
summary(roller.lm)

#' 
#' Falls das Modell ohne Intercept gesch?tzt werden soll:
#' 
## ------------------------------------------------------------------------
lm(depression ~ -1 + weight, data = roller)

#' 
#' 
#' ## Summary des Modells
#' 
## ------------------------------------------------------------------------
summary(roller.lm)

#' 
#' ## R arbeitet mit Objekten
#' 
#' - `roller.lm` ist nun ein spezielles Regressions-Objekt
#' - Auf dieses Objekt können nun verschiedene Funktionen angewendet werden
#' 
## ------------------------------------------------------------------------
predict(roller.lm) # Vorhersage
resid(roller.lm) # Residuen

#' 
#' ## Residuenplot
#' 
#' -  Sind Annahmen des linearen Regressionsmodells verletzt? 
#' -  Dies ist der Fall, wenn ein Muster abweichend von einer Linie zu erkennen ist.
#' -  Hier ist der Datensatz sehr klein
#' 
## ------------------------------------------------------------------------
plot(roller.lm,1)

#' 
#' ## Residuenplot
#' 
#' - Wenn die Residuen normalverteilt sind sollten sie auf einer Linie liegen.
#' 
## ------------------------------------------------------------------------
plot(roller.lm,2)

#' 
#' 
#' ## Regressionsdiagnostik mit Basis-R
#' 
#' Ein einfaches Modell
## ------------------------------------------------------------------------
N <- 5
x1 <- rnorm(N)
y <- runif(N)

#' 
#' 
#' ## Die Dichte der beiden Vektoren
#' 
## ------------------------------------------------------------------------
par(mfrow=c(1,2))
plot(density(x1))
plot(density(y))

#' 
#' 
#' 
#' ## Modellvorhersage machen
#' 
## ------------------------------------------------------------------------
mod1 <- lm(y~x1)
pre <- predict(mod1)
y
pre

#' 
#' ## Regressionsdiagnostik mit Basis-R
#' 
## ------------------------------------------------------------------------
plot(x1,y)
abline(mod1)
segments(x1, y, x1, pre, col="red")

#' 
#' ## Beispieldaten Luftqualität
#' 
## ----eval=F--------------------------------------------------------------
## library(datasets)
## ?airquality

#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/DataAirquality.PNG)
#' 
#' ## Das `visreg`-Paket 
#' 
#' Ein Modell wird auf dem airquality Datensatz geschätzt
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("visreg")

#' 
#' 
## ------------------------------------------------------------------------
library(visreg)
fit <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)
summary(fit)

#' 
#' ## Visualisierung
#' 
## ------------------------------------------------------------------------
par(mfrow=c(2,2))
visreg(fit)

#' 
#' ## [Und dann mit `visreg` visualisiert.](http://myweb.uiowa.edu/pbreheny/publications/visreg.pdf)
#' 
#' - Zweites Argument -  Spezifikation erklärende Variable für Visualisierung
#' 
## ------------------------------------------------------------------------
visreg(fit, "Wind", type = "contrast")

#' 
#' ## Visualisierung mit dem Paket `visreg`
#' 
## ------------------------------------------------------------------------
visreg(fit, "Wind", type = "contrast")

#' 
#' 
#' ## Das `visreg`-Paket 
#' 
#' - Das Default-Argument für type ist conditional.
#' 
## ------------------------------------------------------------------------
visreg(fit, "Wind", type = "conditional")

#' 
#' 
#' ## Regression mit Faktoren
#' 
#' Mit `visreg` können die Effekte bei Faktoren visualisiert werden.
#' 
## ------------------------------------------------------------------------
airquality$Heat <- cut(airquality$Temp, 3, 
	labels=c("Cool", "Mild", "Hot"))
fit.heat <- lm(Ozone ~ Solar.R + Wind + Heat, 
	data = airquality)
summary(fit.heat)

#' 
#' ## Effekte von Faktoren
#' 
#' 
## ------------------------------------------------------------------------
par(mfrow=c(1,2))
visreg(fit.heat, "Heat", type = "contrast")
visreg(fit.heat, "Heat", type = "conditional")

#' 
#' 
#' ## Das Paket visreg - Interaktionen
#' 
## ------------------------------------------------------------------------
airquality$Heat <- cut(airquality$Temp, 3, 
labels=c("Cool", "Mild", "Hot"))
fit <- lm(Ozone ~ Solar.R + Wind * Heat, data = airquality)
summary(fit)

#' 
#' ## Steuern der Graphikausgabe mittels `layout`
#' 
## ------------------------------------------------------------------------
visreg(fit, "Wind", by = "Heat",layout=c(3,1))

#' 
#' 
#' ## Das Paket `visreg` - Interaktionen overlay
#' 
## ------------------------------------------------------------------------
fit<-lm(Ozone~Solar.R+Wind*Heat,data=airquality)
visreg(fit,"Wind",by="Heat",overlay=TRUE,partial=FALSE)

#' 
#' ## Das Paket `visreg` - `visreg2d`
#' 
## ------------------------------------------------------------------------
fit2<-lm(Ozone~Solar.R+Wind*Temp,data=airquality)
visreg2d(fit2,"Wind","Temp",plot.type="image")

#' 
#' ## Das Paket visreg - surface
#' 
## ------------------------------------------------------------------------
visreg2d(fit2, "Wind", "Temp", plot.type = "persp")

#' 
#' 
#' 
#' 
#' ## Linkliste - lineare Regression
#' 
#' -  Regression - [r-bloggers](http://www.r-bloggers.com/r-tutorial-series-simple-linear-regression/)
#' 
#' -  Das Komplette Buch von [Faraway](http://cran.r-project.org/doc/contrib/Faraway-PRA.pdf)- sehr intuitiv geschrieben.
#' 
#' -  Gute Einführung auf [Quick-R](http://www.statmethods.net/stats/regression.html)
#' 
#' - [Multiple Regression](https://www.r-bloggers.com/multiple-regression-part-1/)
#' 
#' 
#' 
#' 
#' 
#' - Basis Regression - [How to go about interpreting regression cofficients](https://www.r-bloggers.com/how-to-go-about-interpreting-regression-cofficients/)
#' 
