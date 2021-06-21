# install.packages("ggplot2")

library(ggplot2)
?diamonds

ggplot(
  data = diamonds, 
  mapping = aes(x = price)
  ) + 
  geom_histogram(
    bins = 30, 
    fill = "#0330fc", 
    color = "white", 
    alpha = 0.7
    )
