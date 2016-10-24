source('read.R')
reviews <- read_subset('data/yelp_academic_dataset_review.json', 10)
library('tm')
library('SnowballC')

doc.vector <- VectorSource(reviews$text)
corpus <- Corpus(doc.vector)
