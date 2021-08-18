library(readxl)

mahasiswa <- read_xlsx("wordcloud/nama mahasiswa.xlsx", col_names = "nama")

library(tidytext)
words <- unnest_tokens(tbl = mahasiswa, output = "word", input = "nama")

library(dplyr)
words <- words %>% 
  count(word, name = "freq", sort = TRUE)

library(ggplot2)
words %>% 
  filter(freq > 2) %>% 
  ggplot() + 
  geom_col(aes(x = freq, y = word)) + 
  theme_light()

library(wordcloud)
wordcloud(words = words$word, freq = words$freq, min.freq = 2)

library(wordcloud2)
wordcloud2(data = words, minSize = 0, size = 0.8)

words2 <- words %>% 
  mutate(freq = freq^0.8)
wordcloud2(data = words2, size = 0.8)
wordcloud2(data = words2, size = 0.8, fontFamily = "times new roman")
