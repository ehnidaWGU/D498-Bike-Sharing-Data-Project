# D498-Bike-Sharing-Data-Project
A project for Udacity's R Programming class

This project takes 3 .csv files shared by udacity on a bike sharing program across 3 cities. Using these 3 data sets, the student has to create 3 research questions to answer and visualize using R.

Datasets:

  - wash.csv: 
    - Start Time (e.g., 2017-01-01 00:07:57)
    - End Time (e.g., 2017-01-01 00:20:53)
    - Trip Duration (in seconds - e.g., 776)
    - Start Station (e.g., Broadway & Barry Ave)
    - End Station (e.g., Sedgwick St & North Ave)
    - User Type (Subscriber or Customer)

  - new_york_city.csv: 
    - Start Time (e.g., 2017-01-01 00:07:57)
    - End Time (e.g., 2017-01-01 00:20:53)
    - Trip Duration (in seconds - e.g., 776)
    - Start Station (e.g., Broadway & Barry Ave)
    - End Station (e.g., Sedgwick St & North Ave)
    - User Type (Subscriber or Customer)
    - Gender (Male or Female)
    - Birth Year (e.g., 1999)

  - chi.csv: 
    - Start Time (e.g., 2017-01-01 00:07:57)
    - End Time (e.g., 2017-01-01 00:20:53)
    - Trip Duration (in seconds - e.g., 776)
    - Start Station (e.g., Broadway & Barry Ave)
    - End Station (e.g., Sedgwick St & North Ave)
    - User Type (Subscriber or Customer)
    - Gender (Male or Female)
    - Birth Year (e.g., 1999)

Research Questions:
  - #1: What month (Jan-Jun) is the most common to travel across all 3 cities?
  - #2: Which month has the highest average travel time?
  - #3: What is the most common user type/count of user types? 

Dependencies:
- library(ggplot2)
- library(dplyr)
- library(readr)
- library(lubridate)
