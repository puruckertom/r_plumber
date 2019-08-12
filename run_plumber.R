install.packages("plumber")
library(plumber)

if(Sys.info()[4] == "LZ2626UTPURUCKE"){
  pcdir <- path.expand("c:/git/r_plumber/")
}

plumber_filename <- paste(pcdir,"plumber.R",sep="")
pr <- plumber::plumb(plumber_filename)

pr$run()

# serving locally on
# http://127.0.0.1:3958/__swagger__/
# http://127.0.0.1:3958/echo
# http://127.0.0.1:3958/plot
# http://127.0.0.1:3958/plot?spec=setosa