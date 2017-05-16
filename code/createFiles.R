# Jan-Philipp Kolb
# Tue May 16 09:31:46 2017


#----------------------------------#
# Set paths
#----------------------------------#

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
setwd("D:/Daten/GitHub/RSocialScience/slides")


#----------------------------------#
# Install packages
#----------------------------------#

install.packages("sjPlot")
install.packages("tibble")



# http://stackoverflow.com/questions/26174565/r-in-rstudio-how-do-i-make-knitr-output-to-a-different-folder-to-avoid-clutteri
rmarkdown::render("../multilevel/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="multilevel.html",
                  output_dir=slidepath)




#----------------------------------#
# Create R files
#----------------------------------#



