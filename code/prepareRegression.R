
setwd("D:/Daten/owncloud/Workshops/RSocialScience")

dat <- read.dta("ZA5666_d_gesis_panel_campus_file_b_2014_STATA12.dta")

head(dat$bazq020a)

Dauer <- as.numeric(dat$bazq020a)
Dauer[Dauer==-99] <- NA
Dauer[Dauer==-77] <- NA
Dauer[Dauer==-33] <- NA

Geschlecht <- as.factor(dat$a11d054a)

# dat$a11d056a

Alter <- as.factor(dat$a11d056z)

hist(Dauer)
summary(Dauer)

mod1 <- lm(Dauer~Geschlecht+Alter)

summary(mod1)
