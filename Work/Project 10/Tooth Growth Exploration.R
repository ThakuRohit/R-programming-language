install.packages("dplyr")

library(tidyverse)
library(dplyr)

data("ToothGrowth")
View(ToothGrowth)

new_df <- select(ToothGrowth)

write.csv(new_df, file = "ToothGrowth.csv", row.names = FALSE)

filtered_dose <- filter(ToothGrowth,dose==0.5)
View(filtered_dose)
arrange(filtered_dose,len)

## Using Nested
arrange(filter(ToothGrowth,dose==0.5),len)

##Using Pipe
#filtered_toothgrowth <- ToothGrowth %>% 
#  filter(dose==0.5) %>% 
#  arrange(len)
#View(filtered_toothgrowth)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len,na.rm = T),group="drop")
View(filtered_toothgrowth)

write.csv(filtered_toothgrowth, file = "filtered_toothgrowth.csv", row.names = FALSE)
