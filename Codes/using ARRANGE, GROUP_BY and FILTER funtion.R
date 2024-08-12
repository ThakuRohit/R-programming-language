# import library
library(tidyverse)
library(palmerpenguins)

# using arrange() function
penguins %>% arrange(bill_length_mm)
penguins_len <- penguins %>% arrange(-bill_length_mm)
penguins_len

# using group_by() function
# group by island
penguins %>% 
  group_by(island) %>%
  drop_na() %>% 
  summarise(mean_ln = mean(bill_length_mm))

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_length = max(bill_length_mm))

# group by island and species
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# using filter() function
penguins %>% 
  filter(species =='Adelie')