# IMPORT LIBRARY
library(ggplot2)
library(palmerpenguins)

# DESCRIPTION OF DATASET
head(penguins)

#SCATTERPLOT THE DATASET
p <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

# Adding label and annotate in the graph
p +
  labs(title = "Palmer Penguins : Body Mass VS Fliper Length",
       subtitle = "Sample of Three Penguins Species",
       caption = 'Graph Design by ROHIT THAKUR') +
  annotate("text", x = 220, y = 3250, label = "Gentoos are largest specie.",
           fontface = "bold",
           color = "red", size = 3.5)

# Saving the graph using ggsave()
ggsave("Three Penguin Species.png")