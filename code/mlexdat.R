# Source: Andrés Gutiérrez - Multilevel Modeling of Educational Data using R (Part 1)
# https://www.r-bloggers.com/multilevel-modeling-of-educational-data-using-r-part-1/


datapath <- "D:/Daten/GitHub/RSocialScience/data"


set.seed(123)
N <- 100 #Number of students per school
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

mlexdat <- data.frame(SES = c(x1, x2, x3, x4, x5), 
                   Score = c(y1, y2, y3, y4, y5), ID = ID)

setwd(datapath)
save(mlexdat,file="mlexdat.RData")
