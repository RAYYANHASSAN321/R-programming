plot(3, 8, main = "Single Point Test")

x <- c(2, 5, 7, 9)
y <- c(10, 25, 18, 30)

plot(x, y,
     type = "o",
     col = "orange",    
     pch = 16,  
     cex = 1.2)
points(x, y, col = "purple", pch = 16)


years <- c(2000, 2005, 2010, 2015, 2020)
wins  <- c(15, 40, 30, 55, 42)

plot(years, wins,
     type = "o",
     col = "yellow",
     pch = 17,      
     cex = 2,       
     lty = 2, 
     xlab = "Years",
     ylab = "Wins",
     main = "Team Wins Over Years")


months <- c("Jan","Feb","Mar","Apr","May","Jun")
sales  <- c(500, 620, 710, 450, 390, 280)

plot(sales, type = "o", xaxt = "n",
     main = "Half-Yearly Sales Data",
     xlab = "Months", ylab = "Sales")

axis(1, at = 1:6, labels = months)




months <- c("Jan","Feb","Mar","Apr","May","Jun")
sales  <- c(500, 620, 710, 450, 390, 280)


png("C:\\Users\\asp.APTECHNK1\\Desktop\\R program\\sales_output.png")
plot(sales, type = "o", xaxt = "n",
     main = "Half-Yearly Sales Data",
     xlab = "Months", ylab = "Sales")

axis(1, at = 1:6, labels = months)

graphics.off()



library(ggplot2)

data <- data.frame(
  months = c("Jan","Feb","Mar","Apr","May","Jun"),
  sales = c(100, 220, 310, 180, 260, 300)
)

data$months <- factor(data$months, levels = data$months)

ggplot(data, aes(x = months, y = sales , group = 1)) +
  geom_line(color = "green", linetype = "dashed", linewidth = 1.2) +
  geom_point(color = "darkgreen", size = 4) +
  ggtitle("Sales Trend") +
  xlab("Months") +
  ylab("Sales")



data <- read.csv("C:/Users/asp.APTECHNK1/Desktop/R program/sales.csv",
                 stringsAsFactors = FALSE, sep=",")

colnames(data)

data$Month <- trimws(data$Month)

data$Month <- factor(data$Month, levels = data$Month)
plot(1:nrow(data), data$Units_Sold,
     type = "o",
     col = "purple",
     xaxt = "n",
     main = "Units Sold (Monthly)",
     xlab = "Month",
     ylab = "Units Sold",
     lwd = 2,
     pch = 16)
axis(1, at = 1:nrow(data), labels = data$Month)
