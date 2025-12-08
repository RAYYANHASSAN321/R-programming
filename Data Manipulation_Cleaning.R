# to import dataset

students <- read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\students.csv")

head(students)

names(students)

str(students)

students

#--------------- Data Manipulation ------------#

students$TotalMarks <- students$English + students$Science + students$Math

students$Percentage <- round((students$TotalMarks / 300) * 100)

students$Grade <- ifelse(students$Percentage >= 80 , "A+" ,
                         
                         ifelse(students$Percentage >= 70 , "A" , 
                                
                                ifelse(students$Percentage >= 60 , "B" , "Fail")
                                )
                         )

top_sci <- subset(students , Science > 90)
top_sci

# Descending order 

sortByTotal <- students[order(-students$TotalMarks),]


# Ascending order 

sortByTotal <- students[order(students$TotalMarks),]

aggregate(TotalMarks ~ Gender , data =  students , FUN = mean)

# Lowest marks
students[which.min(students$TotalMarks) , c("StudentID" , "Name" , "TotalMarks")]


# Highest marks
students[which.max(students$TotalMarks) , c("StudentID" , "Name" , "TotalMarks")]


weakStudent <- subset(students , Math <= 50 | English <= 50 | Science <= 50)

nrow(weakStudent)


# To export dataset


write.csv(students , "C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\students.csv")

students <- read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\students.csv")
students

# To fill NA values 
colSums(is.na(students))
mean(students$Math , na.rm = TRUE)
math_mean <- round(mean(students$Math , na.rm = TRUE))
students$Math[is.na(students$Math)] <- math_mean


# to trim white space 
students$Name <- trimws(students$Name)


students <- read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\students.csv")
students$Remarks<- ifelse(students$Remarks == "excellent" | students$Remarks == "EXCELLENT", "Excellent",
                          ifelse(students$Remarks == "good"      | students$Remarks == "GOOD",      "Good",
                                 ifelse(students$Remarks == "average"   | students$Remarks == "AVERAGE",   "Average",
                                        ifelse(students$Remarks == "poor"      | students$Remarks == "POOR",      "Poor",
                                               students$Remarks
                                        ))))


students <- read.csv("C:\\Users\\asp.APTECHNK1\\Desktop\\R programming\\dataset\\students.csv")
unique(students)


# ---Detect outlier---- #

subset(students , Math > 0 | Math < 100 | English > 0 | English < 100 | Science > 0 | Science < 100)

students$Math[students$Math > 100] <- 100
students$Math[students$Math < 0]   <- 10

table(students$Remarks)

table(students$Gender)

write.csv(students , "C:\\Users\\amna\\Desktop\\R Programming\\dataset\\stu.csv")
