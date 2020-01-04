install.packages("tm")
library(tm)
install.packages("slam")
library(slam)
install.packages("topicmodels")
library(topicmodels)
x<-readline(modi12)

mydata.corpus <- Corpus(VectorSource(modi12$V1))
mydata.corpus <- tm_map(mydata.corpus, removePunctuation)
my_stopwords <- c(stopwords('english'),"brothers", "sisters", "the", "due", "are", "not", "for", "this", "and",  "that", "there", "new", "near", "beyond", "time", "from", "been", "both", "than",  "has","now", "until", "all", "use", "two", "ave", "blvd", "east", "between", "end", "have", "avenue", "before",    "just", "mac", "being",  "when","levels","remaining","based", "still", "off", "over", "only", "north", "past", "twin", "while","then")
mydata.corpus <- tm_map(mydata, removeWords, my_stopwords)

mydata.corpus <- tm_map(mydata.corpus, removeNumbers)

mydata.corpus <- tm_map(mydata.corpus, stripWhitespace)
## build a term-document matrix
mydata.tdm3 <- TermDocumentMatrix(mydata.corpus)
mydata.tdm3

# dtm <- as.DocumentTermMatrix(mydata.dtm3)
# dtm <- DocumentTermMatrix(mydata.corpus)
dtm <- t(mydata.tdm3)

#Display dtm
inspect(dtm)

rowTotals <- apply(dtm, 1, sum)
dtm.new   <- dtm[rowTotals > 0, ]

lda <- LDA(dtm.new, 5) # find 10 topics
term <- terms(lda, 20) # first 10 terms of every topic
term

tops <- terms(lda)

