mlexdat <- read.csv(
  "https://github.com/Japhilko/RSocialScience/raw/master/data/mlexdat.csv")

library(lme4)
HLM0 <- lmer(Score ~ (1 | ID), data = mlexdat)
summray(HLM0)
