install.packages('Tmisc')
install.packages('datasauRus')

library(datasauRus)
library(Tmisc)
library(tidyverse)
library(ggplot2)

data("quartet")
View(quartet)

new_df <- select(quartet)

write.csv(new_df, file = "quartet.csv", row.names = FALSE)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

quartet

ggplot(quartet,aes(x,y)) + 
  geom_point() + 
  geom_smooth(method = lm,se = FALSE) + 
  facet_wrap(~set)

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset)) +
  geom_point() +
  theme_void() +
  theme(legend.position = "none") +
  facet_wrap(~dataset,ncol=3)

