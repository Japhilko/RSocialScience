CRANmirror <- "http://cran.revolutionanalytics.com"
cran <- contrib.url(repos = CRANmirror,type = "source")
info <- available.packages(contriburl = cran, type = x)
nrow(info)

install.packages("flexdashboard")
