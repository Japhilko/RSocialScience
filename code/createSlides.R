# create slides

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
setwd(slidepath)


rmarkdown::render(c("../Rmodular/index.Rmd"),
                  output_format = "slidy_presentation",
                  output_file="Rmodular.html",
                  output_dir=slidepath)


rmarkdown::render(c("../logreg/index.Rmd"),
                  output_format = "slidy_presentation",
                  output_file="logreg.html",
                  output_dir=slidepath)



rmarkdown::render(c("../simpleGraphics/index.Rmd"),
                  output_format = "slidy_presentation",
                  output_file="simpleGraphics.html",
                  output_dir=slidepath)


# http://rpubs.com/Japhilko82/VarsGesisPanel

# https://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output
# https://github.com/lmmx/devnotes/wiki/Rmarkdown-custom-knit-hook-to-compile-a-multi-part-document
# https://github.com/rstudio/shiny/issues/859