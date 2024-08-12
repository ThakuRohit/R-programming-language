# Loading library
library(ggplot2)
library(tidyverse)

# Import the data
hotel_bookings <- read.csv("C:/Users/DELL/Downloads/hotel_bookings.csv")

#Description of dataset
head(hotel_bookings)
colnames(hotel_bookings)

# Creating the plot
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x=lead_time , y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))