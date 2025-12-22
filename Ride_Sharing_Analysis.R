rides_data <- data.frame(
  hour = c(6,8,10,12,14,16,18,20,22),
  city = c("Karachi","Karachi","Lahore","Lahore","Islamabad",
           "Islamabad","Karachi","Lahore","Islamabad"),
  rides = c(120, 260, 180, 300, 150, 210, 420, 350, 190),
  distance_km = c(6, 8, 5, 7, 9, 6, 4, 5, 8),
  fare_rs = c(450, 620, 480, 550, 700, 520, 380, 430, 650),
  demand_level = c("Medium","High","Medium","High","Medium",
                   "Medium","High","High","Medium")
)


# Task 1: Daily Ride Demand Trend (Line Chart)
plot(rides_data$hour , rides_data$rides,
     type = "o",
     col= "blue",
     pch = 16, 
     xlab = "Hours of Days",
     ylab = "Number of Days",
     main = "Daily Rides Demand Trend"
     )

#Task 2: City-wise Ride Comparison (Bar Chart)
city_rides <- aggregate(rides ~ city, data = rides_data, sum)

max_city <- city_rides[which.max(city_rides$rides), ]
bar_colors <- ifelse(city_rides$city == max_city$city, "red", "skyblue")

barplot(city_rides$rides,
        names.arg = city_rides$city,
        col = bar_colors,
        main = "Total Rides per City",
        ylab = "Total Rides")

# Task 3: Distance vs Fare Relationship (Scatter Plot)
install.packages("ggplot2")

library(ggplot2)

ggplot(rides_data, aes(x = distance_km, y = fare_rs, color = demand_level)) +
  geom_point(size = 3) +
  labs(title = "Distance vs Fare Relationship",
       x = "Distance (km)",
       y = "Fare (Rs)") +
  theme_minimal()



# Task 4: Ride Distribution Analysis (Histogram)

hist(rides_data$rides,
     col = "lightgreen",
     main = "Ride Distribution",
     xlab = "Number of Rides")

abline(v = mean(rides_data$rides),
       col = "red",
       lwd = 2 
       )

# Task 5: City Performance Comparison (Box Plot)
boxplot(fare_rs ~ city,
        data = rides_data,
        col = c("orange","lightblue","lightgreen"),
        main = "Fare Distribution by City",
        xlab = "City",
        ylab = "Fare (Rs)")

  
