# Jan-Philipp Kolb
# Tue May 16 09:31:46 2017

#----------------------------------#
# Install packages
#----------------------------------#

install.packages("sjPlot")
install.packages("tibble")



#----------------------------------#
# Set paths
#----------------------------------#

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
slidepath <- "D:/GESIS/Workshops/RSocialScience/slides"

setwd(slidepath)

rmarkdown::render("../intro/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="intro.html",
                  output_dir=slidepath)


rmarkdown::render("../linreg/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="linreg.html",
                  output_dir=slidepath)


# http://stackoverflow.com/questions/26174565/r-in-rstudio-how-do-i-make-knitr-output-to-a-different-folder-to-avoid-clutteri
rmarkdown::render("../multilevel/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="multilevel.html",
                  output_dir=slidepath)




#----------------------------------#
# Create R files
#----------------------------------#



