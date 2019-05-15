library(lubridate)
library(dplyr)
library(anytime)
library(ggplot2)
setwd("~/Desktop/DataDriven")

fitdata <- read.csv("fitbit_export_20190515-3.csv", TRUE, ",")
fitdata

ggplot(data = fitdata) + 
  geom_point(mapping = aes(x = Steps, y = Calories.Burned))

#from the plot we notice that there is a linear trend between the steps and calories burned.
# we can fit a line



             