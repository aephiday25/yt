library(dplyr)
tbl_diamonds <- diamonds %>% 
  count(cut) %>% mutate(pct = round(n/sum(n)*100, 2))

tbl_diamonds %>% 
  ggplot(mapping = aes(x = cut, y = n, fill = cut)) + 
  geom_col() + 
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

tbl_diamonds %>% 
  ggplot(mapping = aes(x = cut, y = n, fill = cut)) + 
  geom_col() + 
  geom_text(mapping = aes(label = paste0(pct, "%"))) + 
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

tbl_diamonds %>% 
  ggplot(mapping = aes(x = cut, y = n, fill = cut)) + 
  geom_col() + 
  geom_text(mapping = aes(label = paste0(pct, "%")), vjust = -0.25) + 
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
