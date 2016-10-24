#read just the first numlines # of lines from json file
read_first_subset <- function(filepath, numlines) {
  library(readr)
  library(dplyr)
  library(stringr)
  library(jsonlite)
  review_lines <- read_lines(filepath, n_max = numlines, progress = FALSE)
  reviews_combined <- str_c("[", str_c(review_lines, collapse = ", "), "]")
  reviews <- fromJSON(reviews_combined) %>% flatten() %>% tbl_df()
  return (reviews)
}
