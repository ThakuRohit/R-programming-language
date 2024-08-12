penguins %>% 
  select(-species)

penguins %>% 
  rename(island_name = island)

rename_with(penguins,toupper)
