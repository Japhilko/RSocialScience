# create slides

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
setwd(slidepath)



rmarkdown::render(c("../logreg/index.Rmd"),
                  output_format = "slidy_presentation",
                  output_file="logreg.html",
                  output_dir=slidepath)


# https://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output
# https://github.com/lmmx/devnotes/wiki/Rmarkdown-custom-knit-hook-to-compile-a-multi-part-document
# https://github.com/rstudio/shiny/issues/859