# import libaries
library(tidyverse)
library(skimr)
library(janitor)

# import data
booking_df <- read_csv("C:/Users/DELL/Downloads/hotel_bookings.csv")

# description of data
head(booking_df)
str(booking_df)
glimpse(booking_df)
colnames(booking_df)
skim_without_charts(booking_df)

# cleaning the data
trimmed_df <- booking_df %>% 
  select(hotel, is_canceled, lead_time)

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

example_df <- booking_df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year, c(arrival_date_month,arrival_date_year), sep = " ")

example_df <- booking_df %>% 
  mutate(guest = children + babies + adults)
head(reserve_df)

example_df <- booking_df %>% 
  summarise(cancelled_booking = sum(is_canceled),
            average_lead_time = mean(lead_time))
head(example_df)