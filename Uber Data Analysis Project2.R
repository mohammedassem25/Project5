library(ggplot2)
library(ggthemes)
library(lubridate)
library(dplyr)
library(tidyr)
library(tidyverse) # metapackage of all tidyverse packages
library(DT)
library(scales)

colors = c("#CC1011", "#665555", "#05a399", "#cfcaca", "#f5e840", "#0683c9", "#e075b0")
colors

data1 <- read.csv("Uber_Project.csv")
head(data1)

data1$Date.Time <- as.POSIXct(data1$Date.Time, format="%m/%d/%Y %H:%M:%S")
typeof(data1$Date.Time)

data <- na.omit(data1)
#data2 <- drop_na(data)
#data2 <- na.exclude(data)
dim(data1)
dim(data)
summary(data)

data$Time <- format(as.POSIXct(data$Date.Time), format = "%H:%M:%S")

data$day <- factor(day(data$Date.Time))
data$month <- factor(month(data$Date.Time, label=TRUE))
data$year <- factor(year(data$Date.Time))
data$dayofweek <- factor(wday(data$Date.Time, label=TRUE))
unique(data$day)
length(which(data$day == 3))

data$second <- second(data$Date.Time)
data$minute <- minute(data$Date.Time)
data$hour <- hour(data$Date.Time)

unique(data$second)
length(which(data$second == 3))

day_group <- data %>% group_by(day) %>% dplyr::summarize(Total = n()) 
datatable(day_group)

ggplot(day_group, aes(day, Total)) + 
        geom_bar( stat = "identity", fill = "steelblue") + ggtitle("Trips Every Day") +
            theme(legend.position = "none") + scale_y_continuous(labels = comma)

day_month_data <- data %>% group_by(month, dayofweek) %>% dplyr::summarize(Total = n())
datatable(day_month_data)

ggplot(day_month_data, aes(dayofweek, Total, fill = month)) + 
        geom_bar(stat = "identity", aes(fill = month), position = "dodge")  +
           ggtitle("Trips by Day and Month") + scale_y_continuous(labels = comma) +
            scale_fill_manual(values = colors)

month_data <- data %>% group_by(month) %>% dplyr::summarize(Total = n())
month_data

ggplot(month_data, aes(month, Total, fill = month)) + 
geom_bar(stat = "Identity") + ggtitle("Trips in a month") + 
theme(legend.position = "none") + scale_y_continuous(labels = comma) + 
scale_fill_manual(values = colors)

day_hour_data <- data %>% group_by(dayofweek, hour) %>% dplyr::summarize(Total = n())
datatable(day_hour_data)

ggplot(day_hour_data, aes(dayofweek, hour, fill = Total)) + 
geom_tile(color = "white") + ggtitle("Heat Map by Hour and Day")

ggplot(data, aes(Base)) + 
 geom_bar(fill = "darkred") + scale_y_continuous(labels = comma) +
 ggtitle("Trips by Bases")

ggplot(data, aes(Base, fill = month)) + 
 geom_bar(position = "dodge") + scale_y_continuous(labels = comma) +
 ggtitle("Trips by Bases and Month") + scale_fill_manual(values = colors)

ggplot(data, aes(Base, fill = dayofweek)) + 
 geom_bar(position = "dodge") + scale_y_continuous(labels = comma) +
 ggtitle("Trips by Bases and DayofWeek") + scale_fill_manual(values = colors)

min_lat <- 40.5774
max_lat <- 40.9176
min_long <- -74.15
max_long <- -73.7004
ggplot(data, aes(x=Lon, y=Lat, color = Base)) +
  geom_point(size=1) +
     scale_x_continuous(limits=c(min_long, max_long)) +
      scale_y_continuous(limits=c(min_lat, max_lat)) +
       theme_map() +
          ggtitle("NYC MAP BASED ON UBER RIDES DURING 2014 (APR-SEP) by BASE")


