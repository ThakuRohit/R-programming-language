# Load Packages
library(tidyverse)
library(dplyr)

# creating dataframe
booking_df <- read.csv("C:/Users/DELL/Downloads/hotel_bookings.csv")

# view our dataframe
head(booking_df)
str(booking_df)
colnames(booking_df)

# creating new dataframe
new_df <- select(booking_df,'adr','adults')
head(new_df)
str(new_df)

# converting the dataframe columns to numeric columns
new_df <- lapply(new_df,as.numeric)
str(new_df)

#checking the type of new_df
class(new_df)

# changing type of new_df to data frame
new_df <- as.data.frame(new_df)

#creating new column in dataframe
new_df <- new_df %>%
  mutate(new_column = adr / adults)

str(new_df)

#storing the dataframe into system
write.csv(new_df, file = "new df from hotel booking data.csv", row.names = FALSE)