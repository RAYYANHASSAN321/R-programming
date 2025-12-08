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




data1 <- data.frame(
  
  Months = as.Date(c("2024-01-01" ,"2024-02-02" , "2024-03-03" , "2024-04-04" , "2024-05-05" )),
  Sales = c(340 , 670 , 220 , 450 , 100)
  
)

install.packages("ggplot2")

library(ggplot2)

ggplot(data1 , aes(x = Months , y = Sales , group = 1)) +
  geom_line(color = "purple") +
  geom_point(color = "black") +
  labs(title = "Monthly Sales record" , x = "Months" , y= "Sales")


Months = c("Jan", "Feb" , "March" , "Apr" , "May" , "Jun")
North_Sales = c(120 , 450 , 349 , 180 , 220 , 250)
South_Sales = c(710 , 253 , 602 , 900 , 660 , 525)


x <- 1:length(Months)

plot(x , North_Sales , type = "o" , col = "lightblue" ,
     pch = 16 , lty = 1 , ylab = "Sales" , xlab = "Months" ,
     main = "Sales Comparison" , xaxt = "n" , ylim = c(100 , 900))

axis(1 , x , labels = Months)

lines(x , South_Sales , type = "o" , col = "orange" , pch = 17 , lty =2)


legend("topleft" , legend = c("North" , "South") , col = c("lightblue" , "orange"),
       lty = c(1 , 2) , pch = c(16 , 17)
)


df <- data.frame(
  Months = c("Jan", "Feb" , "March" , "Apr" , "May" , "Jun"),
  Sales = c(120 , 450 , 349 , 180 , 220 , 250 , 710 , 253 , 602 , 900 , 660 , 525),
  Region = rep(c("North" , "South") , each = 6)
  
)

ggplot(df , aes(x = Months , y =Sales , color = Region , group = Region)) +
  geom_line(size = 1.3) + geom_point(size = 3)+ labs(title = "Sales Comparison")


ggplot(df , aes(x = Months , y =Sales , color = Region , group = Region)) +
  geom_line(size = 1.3) + geom_point(size = 3)+ labs(title = "Sales Comparison")+
  scale_color_manual(values = c("North" = "green" , "South" = "blue"))




  hours = c(1, 2, 3, 4, 5, 6, 7, 8)
marks = c(38, 46, 55, 67, 74, 83, 90, 99)

plot(
  hours, marks,
  main = "Study hours v/s marks",
  xlab = "Hours studied",
  ylab = "marks",
  pch = 16,
  cex = 1.5,
  xlim = c(0, 10),
  ylim = c(30, 100)
)

model = lm(marks ~ hours)

plot(hours, marks, pch = 16, col = "blue")
abline(model, col = "red", lwd = 2)


library(ggplot2)

df = data.frame(
  hours = c(1, 2, 3, 4, 5, 6, 7, 8),
  marks = c(38, 46, 55, 67, 74, 83, 90, 99)
)

ggplot(df, aes(x = hours, y = marks)) +
  geom_point(color = "darkgreen", size = 3)