install.packages("httr")
library(httr)
resp <- GET("http://swapi.co/api/people/1")
resp$status_code

class(resp)

View(resp)

content(resp,"parsed")

