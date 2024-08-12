# Import library and data
library(ggplot2)
library(palmerpenguins)

# ploting
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g))

# adding color
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g ,color = species))

# adding shape
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g, shape = species))

# adding alpha
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g, alpha = species))

# adding color to overall point
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g), color="purple")

# Adding color and shape in species
ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g, shape = species, color = species))

# alternative approach
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, size = 2)) +
  geom_point()