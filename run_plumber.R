# plumber.R

install.packages("plumber")
library(plumber)

# my machine's name is:
Sys.info()[4]

#running locally
#modify this for your path with the machine name and
#the repo directory
if(Sys.info()[4] == "LZ2626UTPURUCKE"){
  pcdir <- path.expand("c:/git/r_plumber/")
}

#create a plumber instance
plumber_filename <- paste(pcdir,"plumber.R",sep="")
pr <- plumber::plumb(plumber_filename)

#stand up plumber
pr$run()

# serving locally on (rstudio)
# http://127.0.0.1:3958/__swagger__/
# http://127.0.0.1:3958/echo
# http://127.0.0.1:3958/plot
# http://127.0.0.1:3958/plot?spec=setosa