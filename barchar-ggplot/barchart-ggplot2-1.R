library(ggplot2)
diamonds

barplot(table(diamonds$cut))

ggplot(data = diamonds, mapping = aes(x = cut)) + 
  geom_bar()

ggplot(data = diamonds, mapping = aes(x = cut, fill = cut)) + 
  geom_bar()

palette.pals()

ggplot(data = diamonds, mapping = aes(x = cut, fill = cut)) + 
  geom_bar() + 
  scale_fill_manual(
    values = as.vector(
      x = palette.colors(
        n = 8, 
        palette = "Tableau 10"
        )
      )
    ) + 
  theme(legend.position = "none")

library(scales)
ggplot(data = diamonds, mapping = aes(x = cut, fill = cut)) + 
  geom_bar() + 
  scale_fill_manual(
    values = as.vector(
      x = palette.colors(
        n = 8, 
        palette = "Tableau 10"
        )
      )
    ) + 
  scale_y_continuous(labels = comma) + 
  theme(legend.position = "none")

ggplot(data = diamonds, mapping = aes(x = cut, fill = cut)) + 
  geom_bar() + 
  scale_fill_manual(
    values = as.vector(
      x = palette.colors(
        n = 8, 
        palette = "Tableau 10"
        )
      )
    ) + 
  scale_y_continuous(labels = comma) + 
  labs(title = "Number of Diamond by Cut", 
       x = "Cut Category", 
       y = "Number of Diamond") + 
  theme(legend.position = "none")
