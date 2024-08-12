# IMPORTING THE DATASET AND LIBRARY
library(ggplot2)
library(tidyverse)

hotel_bookings <- read.csv("hotel_bookings.csv")

# PREVIEWING THE DATASET
head(hotel_bookings)
colnames(hotel_bookings)

# visualization breaking down payment type by city using BAR PLOT
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_grid(~hotel) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# Adding CAPTION to the graph
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

ggsave('hotel_booking_chart.png')



