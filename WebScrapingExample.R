#Web Scraping with R 
#Download the rvest library
library(rvest)
demo(package='rvest')
#Scrape some information about The Lego Movie from IMDB.
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
#Use the selector gadget to figure out which css selector matches the data we want: strong span
lego_movie %>% 
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

#Find all nodes that match the selector
lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
#Pull the titles and authors of information stored in the 3rd table on page
lego_movie %>%
  +     html_nodes("table") %>%
  +     .[[3]] %>%
  +     html_table()