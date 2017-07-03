# Jan-Philipp Kolb
# Tue May 16 09:31:46 2017


#----------------------------------#
# Set paths
#----------------------------------#

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
slidepath <- "D:/GESIS/Workshops/RSocialScience/slides"


setwd(slidepath)


chapters <- c("intro","ersteSchritte","hilfe","Rmodular","import","Datenaufbereitung","export","simpleGraphics","Datenanalyse","multidimensional","lattice","ggplot","linreg", "logreg", "multilevel","Versionsverwaltung","rgit","r2wd","r2pdf","rmarkdown","notebooks","DataTables","leaflet")

for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "slidy_presentation",
                    output_file=paste0(chapters[i],".html"),
                    output_dir=slidepath)
}


for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "ioslides_presentation",
                    output_file=paste0(chapters[i],".html"),
                    output_dir=slidepath)
}


for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "beamer_presentation",
                    output_file=paste0(chapters[i],".pdf"),
                    output_dir=slidepath)
}

# markdown files





for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "md_document",
                    output_file=paste0("../",chapters[i],".md"))
}



setwd("D:/GESIS/Workshops/RSocialScience/code")
for ( i in 1:length(chapters)){
  purl(paste0("../",chapters[i],"/index.Rmd"),documentation=2,
       output=paste0(chapters[i],".R"))
}




rmarkdown::render("../intro/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="intro.html",
                  output_dir=slidepath)


rmarkdown::render("../hilfe/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="hilfe.html",
                  output_dir=slidepath)



rmarkdown::render("../Rmodular/index.Rmd",
                  output_format = "beamer_presentation",
                  output_file="Rmodular.pdf",
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



#----------------------------------#
# Install packages
#----------------------------------#

install.packages("sjPlot")
install.packages("tibble")
