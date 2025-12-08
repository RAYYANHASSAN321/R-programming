stu <- list(
  name = "Asad",
  age = 24L,
  course = "AIML",
  CNIC = TRUE,
  enroll = "ADSE II"
)

print(stu)
print(stu[1])

print(stu$CNIC)
print(paste("Student name is" , stu$name , "and enrolled in " , stu$enroll))

result <- list(
  list(name= "Ali" , marks= c(90 , 45 , 67)),
  list(name= "Ahmed" , marks= c(87 , 90 , 81)),
  list(name= "Hasan" , marks= c(67 , 45 , 54))
)

for(r in result){
  avg <- mean(r$marks)
  print(paste("Name is" , r$name , "Average of marks" , avg))
}

#----- Apply family function ------#

lapply(result , function(s){
  mean(s$marks)
})

sapply(result, function(s){
  paste(s$name , " " , mean(s$marks))
})

lapply(result, function(r){
  list(
    name = r$name,
    min = min(r$marks),
    max = max(r$marks),
    average = mean(r$marks)
  )
})

sapply(result , function(r){
  c(
    name = r$name,
    min = min(r$marks),
    max = max(r$marks),
    average = mean(r$marks)
  )
})

#---------- Factor --------#
colors <- factor(c("blue", "green", "orange", "purple", "yellow", "green"))
print(colors)
levels(colors)
summary(colors)

names <- c("Ali", "Saad", "Usman")
marks <- c(78, 89, 69, 45, 73, 81, 90, 82, 79)
group <- rep(names, each = 3)

tapply(marks, group, mean)

#----------matrix --------#
#marks <- c(78, 89, 69, 45, 73, 81, 90, 82, 79)
#mat <- matrix(marks, nrow = 3, ncol = 3)

marks <- c(78, 89, 69, 45, 73, 81)
mat <- matrix(marks, nrow = 3, ncol = 2)
mat

mat2 <- matrix(marks, nrow = 2, ncol = 3)
mat2


alphabets <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n")
alpmat <- matrix(alphabets, nrow = 7, ncol = 2)
alpmat

#------------------------- Data Frames----------------------------#

students <- data.frame(
  name = c("Ali", "Saad", "Ahmed", "Hassan", "Ahsan"),
  age = c(12, 14, 11, 16, 10),
  grade = factor(c("A", "A+", "B", "A", "B")),
  standard = c(5, 8, 4, 10, 5)
)


print(students)
print(students$name)
print(students[2])
print(students[3 , 3])
print(students[1 , 1])
print(students[4])
print(students$standard)
print(students[ , 4])


#---------------- Data manipulation-----------#

stu_marks <- data.frame(
  Name = c("Ali", "Saad", "Ahmed", "Hasan", "Ahsan"), 
  Maths = sample(60:100, 5, replace = TRUE),
  Eng = sample(60:90, 5, replace = TRUE),
  Sci = sample(50:85, 5, replace = TRUE)
)

print(stu_marks)

# Calculate Total Marks
stu_marks$TotalMarks <- stu_marks$Maths + stu_marks$Eng + stu_marks$Sci

# Calculate Percentage
stu_marks$Percentage <- round((stu_marks$TotalMarks / 300) * 100)

# Add Grade column
stu_marks$Grade <- NA

# Assign Grades
for (i in 1:nrow(stu_marks)) {
  if (stu_marks$Percentage[i] >= 80) {
    stu_marks$Grade[i] <- "A+"
  } else if (stu_marks$Percentage[i] >= 70) {
    stu_marks$Grade[i] <- "A"
  } else if (stu_marks$Percentage[i] >= 60) {
    stu_marks$Grade[i] <- "B"
  } else if (stu_marks$Percentage[i] >= 50) {
    stu_marks$Grade[i] <- "C"
  } else {
    stu_marks$Grade[i] <- "Fail"
  }
}

print(stu_marks)


#------------------ Create the data frame ---------------------#

employees <- data.frame(
  name = c("Rayyan", "Sahib", "Mussab", "Hassan", "Ghulam"),
  age = c(45, 52, 38, 60, 55),
  department = c("IT", "Designer", "Sales", "Intern", "Marketing"),
  salary = c(80000, 35000, 48000, 50000, 62000),
  working_years = c(12, 10, 5, 15, 11)
)


print("Salaries:")
print(employees$salary)


print("Employees with age greater than 50:")
print(employees[employees$age > 50, ])

employees$bonus <- 0
for (i in 1:nrow(employees)) {
  if (employees$working_years[i] > 10) {
    employees$bonus[i] <- employees$salary[i] * 0.10
  } else {
    employees$bonus[i] <- 0
  }
}


print("Updated employees with bonus:")
print(employees)








nums <- c(45, 12, 67, 23, 70, 45, 80)

num_input <- as.integer(readline(prompt = "Enter a number: "))

divisible_values <- nums[nums %% num_input == 0]


if (length(divisible_values) > 0) {
  print(paste("Values divisible by", num_input, "are:", divisible_values, "\n"))
} else {
  print(paste("No values in nums are divisible by", num_input, "\n"))
}


