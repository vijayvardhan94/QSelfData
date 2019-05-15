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

reg<-lm(Calories.Burned ~ Steps, data = fitdata)
summary(reg)
coeff=coefficients(reg)
eq = paste0("y = ", round(coeff[2],1), "*x ", round(coeff[1],1))

plot(fitdata, main=eq)
abline(reg, col="blue")

#exploratory analysis of steps taken and sedentary minutes in a day

ggplot(data = fitdata) + 
  geom_point(mapping = aes(x = Steps, y = Minutes.Sedentary))

##exploratory analysis of calories burned and very active minutes

ggplot(data = fitdata) + 
  geom_point(mapping = aes(x = Steps, y = Minutes.Very.Active))

#analyzing relationship between very active minutes and activity calories
ggplot(data = fitdata) + 
  geom_point(mapping = aes(x = Activity.Calories, y = Minutes.Very.Active))
