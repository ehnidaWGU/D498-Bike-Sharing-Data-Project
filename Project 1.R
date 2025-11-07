## Importing Necessary Packages
library(ggplot2)
library(dplyr)
library(readr)
library(lubridate)

## Importing .csv files into IDE
ny = read_csv("C:/Users/eriki/Documents/D498/Project_1/new_york_city.csv")
chi = read_csv("C:/Users/eriki/Documents/D498/Project_1/chicago.csv")
wash = read_csv("C:/Users/eriki/Documents/D498/Project_1/washington.csv")

## Research Question #1: What month (between January and June) is the most common to travel in these 3 cities?
#Combine the datasets into one combined dataframe with dplyr bind_rows()
combined_df <- bind_rows(chi, ny, wash)

#Parse month out of 'Start Time' column into new column 'month' using format
combined_df$month <- format(combined_df$`Start Time`, "%B")

#Counting value that appears most often within the 'month' column
table(combined_df$month)
#According to the value counts of each month, June is the most popular month to travel

#Visualizing the solution to question #1
ggplot(combined_df, aes(x=month, fill = month)) +
  geom_bar()+
  labs(
    title = "Travel Count by Month",
    x = "Month",
    y = "Trips Taken"
  )+
  theme_classic()

## Research Question #2: Which month has the highest average travel time?

#Creating a new column "travel_time" that is End Time - Start Time
combined_df$travel_time <- combined_df$`End Time` - combined_df$`Start Time`

#Finding average travel time per month
avg_month <- combined_df %>%
  group_by(month) %>%
  summarise(avg_travel_time = mean(travel_time, na.rm = TRUE)) %>%
  arrange(desc(avg_travel_time))

#Seeing which month has the highest average  
avg_month %>% slice_max(avg_travel_time, n = 1)

#It shows us that March has the highest average travel time. Now I am going to visualize this on a bar chart.
#Arranging the months in order for visual clarity
avg_month$month <- factor(
  avg_month$month,
  levels = c("January", "February", "March", "April", "May", "June"),
  ordered = TRUE
)

#Plotting the visualization as a geom_col instead of geom_bar, so that a y-axis is accepted
ggplot(avg_month, aes(x=month, y = avg_travel_time, fill=month)) +
  geom_col() +
  labs(
    title = "Average Travel Time by Month",
    x = "Month",
    y = "Average Travel Time"
  )+
  theme_classic()

##Research Question #3: What is the most common user type/count of user types?
table(combined_df$`User Type`)

#According to this, subscribers are the most common user type. 30754 Customers and 121576 subscribers.
#Using a pie chart to visualize this distribution
ggplot(combined_df, aes(x = "", fill = `User Type`)) +
  geom_bar(width = 1) +
  coord_polar("y") +
  labs(title = "User Type Distribution") +
  theme_void()

