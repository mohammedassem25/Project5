library(ggplot2)
library(ggthemes)
library(lubridate)
library(dplyr)
library(tidyr)
library(tidyverse) # metapackage of all tidyverse packages
library(DT)
library(scales)
library(writexl)

# Read the data for each month separately 
apr <- read.csv("uber-raw-data-apr14.csv")
may <- read.csv("uber-raw-data-may14.csv")
june <- read.csv("uber-raw-data-jun14.csv")
july <- read.csv("uber-raw-data-jul14.csv")
aug <- read.csv("uber-raw-data-aug14.csv")
sept <- read.csv("uber-raw-data-sep14.csv")
# Combine the data together 
data <- rbind(apr, may, june, july, aug, sept)
cat("The dimensions of the data are:", dim(data))

head(data)

data1 <- data[!duplicated(data[c('Date.Time','Base')]),]
dim(data1)
summary(data1)

#write.csv(data1, file = "Uber_Project.csv", row.names = FALSE)

data1$Date.Time <- as.POSIXct(data1$Date.Time, format="%m/%d/%Y %H:%M:%S")
typeof(data1$Date.Time)

data2 <- na.omit(data1)
#data2 <- drop_na(data)
#data2 <- na.exclude(data)
dim(data1)
dim(data2)
summary(data2)

data2$Time <- format(as.POSIXct(data2$Date.Time), format = "%H:%M:%S")

data2$day <- factor(day(data2$Date.Time))
data2$month <- factor(month(data2$Date.Time, label=TRUE))
data2$year <- factor(year(data2$Date.Time))
data2$dayofweek <- factor(wday(data2$Date.Time, label=TRUE))

data2$second <- second(data2$Date.Time)
data2$minute <- minute(data2$Date.Time)
data2$hour <- hour(data2$Date.Time)

head(data2)
summary(data2)
unique(data2$day)
length(which(data2$day == 3))
unique(data2$second)
length(which(data2$second == 3))

hour_data <- data2 %>% group_by(hour) %>% dplyr::summarize(Total = n()) 
datatable(hour_data)

ggplot(hour_data, aes(hour, Total)) + 
        geom_bar( stat = "identity", fill = "steelblue", color = "red") +
           ggtitle("Trips Every Hour") + theme(legend.position = "none") +
            scale_y_continuous(labels = comma)

month_hour <- data2 %>% group_by(month, hour) %>% dplyr::summarize(Total = n())
datatable(month_hour)

ggplot(month_hour, aes(hour, Total, fill = month)) + 
       geom_bar( stat = "identity") +
          ggtitle("Trips by Hour and Month") + scale_y_continuous(labels = comma)

month_base <-  data2 %>% group_by(Base, month) %>% dplyr::summarize(Total = n())
datatable(month_base)

dayofweek_bases <-  data2 %>% group_by(Base, dayofweek) %>% dplyr::summarize(Total = n())
datatable(dayofweek_bases)

ggplot(month_base, aes(Base, month, fill = Total)) +
            geom_tile(color = "white") + ggtitle("Heat Map by Month and Bases")

ggplot(dayofweek_bases, aes(Base, dayofweek, fill = Total)) +
geom_tile(color = "white") + ggtitle("Heat Map by Bases and Day of Week")

min_lat <- 40.5774
max_lat <- 40.9176
min_long <- -74.15
max_long <- -73.7004
ggplot(data2, aes(x=Lon, y=Lat)) +
  geom_point(size=1, color = "blue") +
     scale_x_continuous(limits=c(min_long, max_long)) +
      scale_y_continuous(limits=c(min_lat, max_lat)) +
        theme_map() +
           ggtitle("NYC MAP BASED ON UBER RIDES DURING 2014 (APR-SEP)")


