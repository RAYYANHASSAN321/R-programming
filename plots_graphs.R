hours = c(1 ,2 ,3 , 4 , 5 , 6 , 7 ,8 )
marks = c(38 , 46 , 55 , 67 , 74 , 83 , 90 , 99)
grade = c("F" , "F" , "B" , "B" , "B" , "A" , "A" , "A")

col_map = c("F" = "red" , "B" = "yellow" , "A" = "green")

plot(hours , marks , col = col_map[grade],
     pch = 19 , main ="hour vs marks (color by grade)",
     xlab = "Hours", ylab = "Marks"
     
)
legend("topleft" , legend = c("A" , "B" , "F") , 
       col = c("green" , "yellow" , "red") , pch= 19)

income = c(10000 , 34000 , 25000 , 75000 , 50000)
spending = c(8900 , 27000 , 18900 , 56300 , 41000)
population = c(20 , 40 , 30 , 50 , 60)

plot(income , spending , pch = 21, bg = "lightblue" , col = "black",
     cex = population / 50,
     main = "Population size chart",
     xlab = "Income" , ylab = "Spendings"
)

library(ggplot2)
df = data.frame(
  
  hours = c(1 ,2 ,3 , 4 , 5 , 6 , 7 ,8 ),
  marks = c(38 , 46 , 55 , 67 , 74 , 83 , 90 , 99),
  success_percent = c(30 , 45 , 50 , 60 , 68 , 75 , 85 , 94)
)

ggplot(df , aes(hours , marks , color = success_percent,
                size = success_percent / 10 ))+
  geom_point()+
  geom_smooth(method = "lm" , se = "FALSE")



#-------------------------Bar chart---------------------------#
clubs <- c("Sports" , "Music" , "Science" , "Arts")
members <- c(256 , 120 , 250 , 190)

barplot(members , names.arg = clubs , col = "lightblue",
        main = "Stu membership ratio" , xlab = "Clubs",
        ylab = "Members"
)

barplot(members , names.arg = clubs , col = "yellow",
        main = "Stu membership ratio" , xlab = "Clubs",
        ylab = "Members" , border = "blue" , ylim = c(0, 300)
)

barplot(members , names.arg = clubs , col = "yellow",
        main = "Stu membership ratio" , xlab = "Clubs",
        ylab = "Members" , border = "blue",
        horiz = TRUE
)

bar_position <- barplot(members , names.arg = clubs , col = "yellow",
                        main = "Stu membership ratio" , xlab = "Clubs",
                        ylab = "Members" , border = "blue" , ylim = c(0, 300)
)

text(x = bar_position , y = members , label = members , pos = 1)


#-----------------ggplot2------------------#
library(ggplot2)

df <- data.frame(
  clubs = c("Sports", "Music", "Science", "Arts"),
  members = c(256, 120, 250, 190)
)

ggplot(df, aes(x = clubs, y = members, fill = clubs)) +
  geom_bar(stat = "identity") +
  labs(title = "Clubs membership", x = "Club", y = "Member")

#-----------------percentage------------------#
clubs <- c("Sports", "Music", "Science", "Arts")
members <- c(256, 120, 250, 190)

percent <- round(members / sum(members) * 100, 1)

bp <- barplot(members, names.arg = clubs, col = "lightblue",
              ylim = c(0, 300), main = "Clubs membership")

text(bp, members + 3, paste(percent, "%"))

#-----------------ordered form------------------#
ordered <- order(members, decreasing = FALSE)

barplot(members[ordered], names.arg = clubs[ordered], col = 'orange',
        ylim = c(0, 300), main = "Clubs membership")

#-----------------min max value ------------ #
highlighted <- ifelse(members == max(members) , "green" ,
                      ifelse(members == min(members) , "red" , "lightblue"))

barplot(members , names.arg = clubs , col = highlighted ,
        ylim = c(0 , 300) , main = "Clubs membership")



#-----------------grouped barchart------------------#
clubs <- c("Sports", "Music", "Science", "Arts")
members_2024 <- c(256, 120, 250, 190)
members_2025 <- c(412, 315, 290, 367)

data <- rbind(members_2024, members_2025)

barplot(data, beside = TRUE, names.arg = clubs, col = c("orange", "lightblue"),
        main = "Clubs membership Comparison"
)

legend("topleft", legend = c("2024", "2025"),
       fill = c("orange", "lightblue")
)

#-----------------stacked barchart------------------#
bp <- barplot(data, names.arg = clubs, col = c("pink", "lightgreen"),
)

totals <- colSums(data)

text(bp, totals + 3, totals)

legend("topleft", legend = c("2024", "2025"),
       fill = c("pink", "lightgreen")
)


# ----------Histogram---------- #
marks <- c(67, 90, 34, 87, 56, 75, 69, 50, 92, 84)

hist(marks, 
     main = "Distribution of marks", 
     xlab = "Mark", 
     ylab = "No. of Students", 
     border = "white", 
     col = "green", 
     breaks = 10)

grid()
rug(marks)

library(ggplot2)

df <- data.frame(
  marks = c(67, 90, 34, 87, 56, 75, 69, 50, 92, 84)
)

ggplot(df, aes(x = marks)) +
  geom_histogram(
    fill = "lightblue",
    color = "black",
    binwidth = 8
  ) +
  labs(
    title = "Marks frequency",
    x = "Marks",
    y = "No. of students"
  )



#---------attendance distribution---------#
attendance <- c(62 , 75 , 80 , 55 , 90 , 85 , 70 , 60 ,78, 88,
                92 , 66 , 73 , 58 ,61 ,82 , 84 , 69 , 77 ,91
)

hist( attendance ,
      breaks = c(50 , 60 , 70 , 80 , 90 , 100),
      col = "orange",
      border = "black",
      main = "Attendance distribution",
      xlab = "Attendance Percentage",
      ylab = "Number of student"
)

#-----------Probability Density-----------#

hist( attendance ,
      probability = TRUE,
      col = "lightgreen",
      border = "black",
      main = "Attendance Density Histogram",
      xlab = "Attendance Percentage",
      ylab = "Number of student"
)

lines(density(attendance) , col = "red" , lwd = 2)

#--------- Mean median lines -----------#

hist( attendance ,
      probability = TRUE,
      col = "lightblue",
      border = "black",
      main = "Attendance with Mean and Medain ratio",
      xlab = "Attendance Percentage"
)

abline(v = mean(attendance), col = "red", lwd = 2)
abline(v = median(attendance) , col = "green" , lwd = 2)


# ---------Comparison of two classes-----------
class_A <- c(62 , 75 , 80 , 55 , 90 , 85 , 70 , 60 ,78, 88)
class_B <- c(92 , 66 , 73 , 58 ,61 ,82 , 84 , 69 , 77 ,91)

par(mfrow = c(1 , 2))

hist(class_A , col = "lightblue" , main = "class A attendance")
hist(class_A , col = "lightgreen" , main = "class B attendance")

par(mfrow = c(1 , 1))



library(ggplot2)

df2 <- data.frame(attendance)

ggplot(df2, aes(x = attendance)) +
  geom_histogram(aes(y = after_stat(density)),
                 fill = "lightblue",
                 color = "black",
                 binwidth = 5) +
  geom_density(color = "red", linewidth = 1) +
  labs(title = "Attendance Distribution with Density",
       x = "Attendance %", y = "Density"
  )


attendance <- c(62, 75, 80, 55, 90, 85, 70, 60, 78, 88,
                92, 66, 73, 58, 61, 82, 84, 69, 77, 91)

groups <- c(rep("Section_A", 10), rep("Section_B", 10))
attend <- c(attendance[1:10], attendance[11:20])

df <- data.frame(attend, groups)

ggplot(df, aes(attend)) +
  geom_histogram(fill = "lightblue", color = "black", binwidth = 5) +
  facet_wrap(~groups) +
  labs(title = "Attendance by sections",
       x = "Attendance", y = "Sections"
  )