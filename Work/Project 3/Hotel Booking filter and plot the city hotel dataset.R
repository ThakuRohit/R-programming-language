# Import Library and data
library(ggplot2)
library(tidyverse)
hotel_bookings <- read.csv("C:/Users/DELL/Downloads/hotel_bookings.csv")

# Description of dataset
head(hotel_bookings)
colnames(hotel_bookings)

# Creating the scatter plot
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Bar plot
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

# Making the new dataset
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="" & 
                                  hotel_bookings$market_segment==""))

# & means that you want both the condition to be true
# '$' character to specify which column in the data frame (in this its hotel_bookings)

# another approach using pipe 
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

# Viewing the new dataset
View(onlineta_city_hotels)
View(onlineta_city_hotels_v2)

# Description of new dataset
ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))






