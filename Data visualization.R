plot(1 , 5)

plot(c(1 , 4 , 3 , 7 , 10) , c(45 , 61 , 23 , 54 , 37))

years =  c(1999 , 2001 , 2003 , 2010 , 2014 , 2021 , 2024)
match_win = c(34 , 81 , 67 , 51 , 41 , 55 , 10)

plot(years , match_win , xlab= "Years" , ylab = "Match win" , main = "Match Winning data" , 
     type = "o" , col = "blue" , cex = 2 , pch = 9 , lty = 6)


hours = c(1, 2, 3, 4, 5)
marks = c(50, 63, 72, 80, 90)

plot(hours, marks, xlab = "Hours of Study", ylab = "Marks Obtained", main = "Hours of Study vs 
     Marks Obtained", type = "o", col = "orange", cex = 2, pch = 9, lty = 6)


months <- c("Jan", "Feb", "March", "April", "May", "June")
sales <- c(909, 782, 891, 650, 420, 220)

plot(1:length(sales), sales, xlab = "Months", ylab = "Sales",
     main = "Sales record by month",
     type = "o", col = "green", xaxt = "n")

axis(1, at = 1:length(sales), labels = months)

# ---- to save in png format

png(file = "C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\salesbymonth.png")

plot(1:length(sales), sales, xlab = "Months", ylab = "Sales",
     main = "Sales record by month",
     type = "o", col = "green", xaxt = "n")

axis(1, at = 1:length(sales), labels = months)

graphics.off()

data = read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\sales_data.csv")

months = 1 : length(data$Month)

plot(months, data$Units_Sold, type = "o", col = "green", 
     xlab = "Months", ylab = "Sales",
     main = "Selling record by month", lty = 1, xaxt = "n")

axis(1, at = months, labels = data$Month)


plot(months, data$Unit_Price, type="o", col="blue",
     xlab="Month", ylab="Unit Price",
     main="Unit Price by Month", xaxt="n")

axis(1, at=months, labels=data$Month)


data$Revenue <- data$Units_Sold * data$Unit_Price

plot(months, data$Revenue, type="o", col="red",
     xlab="Month", ylab="Revenue",
     main="Revenue by Month", xaxt="n")

axis(1, at=months, labels=data$Month)




install.packages("ggplot2")

library(ggplot2)

data <- data.frame(
  months = c("Jan", "Feb", "March", "Apr", "May", "Jun"),
  Sales  = c(120, 450, 349, 180, 220, 250)
)

ggplot(data, aes(x = months, y = Sales, group = 1)) +
  geom_line() +
  geom_point()


ggplot(data, aes(x = months, y = Sales, group = 1)) +
  geom_line(color = "blue", size = 1.2, linetype = "dashed") +
  geom_point(color = "red", size = 4, shape = 15)

ggplot(data, aes(x = months, y = Sales, group = 1)) +
  geom_line(color = "blue", size = 1.2, linetype = "dashed") +
  geom_point(color = "red", size = 4, shape = 15)


ggplot(data, aes(x = months, y = Sales, group = 1)) +
  geom_line(color = "blue", size = 1.2, linetype = "dashed") +
  geom_point(color = "red", size = 4, shape = 15) +
  labs(title = "Monthly sales record", x = "Months", y = "Sales"
  )



library(ggplot2)

data <- read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\sales_data.csv")

data$months <- 1:nrow(data)

data$Revenue <- data$Units_Sold * data$Unit_Price


ggplot(data, aes(x = months, y = Units_Sold, group = 1)) +
  geom_line(color = "green", size = 1.2) +
  geom_point(color = "darkgreen", size = 3) +
  labs(title = "Selling Record by Month", x = "Months", y = "Units Sold")


png(file = "C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\sales.png")
ggplot(data, aes(x = months, y = Unit_Price, group = 1)) +
  geom_line(color = "blue", size = 1.2, linetype = "dashed") +
  geom_point(color = "red", size = 4, shape = 15) +
  labs(title = "Unit Price by Month", x = "Months", y = "Unit Price")


graphics.off()


ggplot(data, aes(x = months, y = Revenue, group = 1)) +
  geom_line(color = "red", size = 1.2) +
  geom_point(color = "black", size = 3) +
  labs(title = "Revenue by Month", x = "Months", y = "Revenue")
