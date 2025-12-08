#-----------------Vector ----------------------#

nums <- c(34 , 56 , 78 , 12 , 23 , 64)
names <- c("Ali" , "Saad" , "Ahsan" , "Sami" , "Khalid")

print(nums)
print(names)
print(names[2])
print(length(nums))
print(nums[2:5])

for(i in names){
  print(i)
}

for(j in nums){
  
  if(j < 50){
    next
  }
  print(j)
}


v1 <- c(45 , 23 , 3  , 122, 53 , 16)
v2 <- c(78 , 34 , 1 , 23 , 43 , 0)

print(v1 & v2)
print(typeof(v1))
v3 <- as.integer(v1)

print(typeof(v3))

a <- 45L

print(typeof(a))

print(v1[2 : 5])

sum(56 , 12)

sum(v1 , v2)

plot(v1)

# Create a vector of fruits , print 2nd and 4th element
# Create two vectors of 5 numeric values and perform
  # Element wise Addition
  # Element wise Multiplication

v1 <- c(45 , 23 , 3  , 122, 53 , 16)
v2 <- c(78 , 34 , 1 , 23 , 43 , 340)

#--- arithmetic operators ---#

add <- v1 + v2
sub <- v1 - v2
mul <- v1 * v2
div <- v1 / v2

#----Logical functions of vector -----#

which(v1 > 50)
all(v2 < 100)   # All should be true
any(v2 > 500)  # Atleast 1 TRUE

v2 > 100

v2[-6]  # remove this element


#---------------LIST-----------------#
course <- c("R" , "AI ML" , "Hadoop" , "Tableau")

student <- list("Ali" , 25L , "ADSE II" , 5.8 , TRUE , course)

print(student)

for(i in student){
  
  print(i)
}

print(student[3])

print(student[1:3])


stu <- list(
  
  name = "Asad",
  age = 24L,
  course = course,
  CNIC = TRUE,
  enroll = "ADSE II"

  )

print(stu)
print(stu[1])

print(stu$CNIC)
print(paste("Student name is " , stu$name , " and enrolled in " , stu$enroll))


result <- list(
  
  list(name= "Ali" , marks= c(90 , 45 , 67)),
  list(name= "Ahmed" , marks= c(87, 90 , 81)),
  list(name= "Hasan" , marks= c(67 , 45 , 54))
  
)

for(r in result){
  
  avg <- mean(r$marks)
  print(paste("Name is " , r$name , " Average of marks ", avg))
 
}

#---- Apply family function ----#

lapply(result, function(s){
  mean(s$marks)
})


sapply(result , function(s){
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

sapply(result, function(r){
  c(
    name = r$name,
    min = min(r$marks),
    max = max(r$marks),
    average = mean(r$marks)
  )
})



#----------- Factor ------#
colors <- factor(c("blue" ,"green" , "orange" , "purple" , "yellow" , "green"))
print(colors)
levels(colors)
summary(colors)

names <- c("Ali" , "Saad" , "Usman")
marks <- c(78 , 89 ,69 , 45 , 73 , 81 , 90 , 82 , 79)
group <- rep(names , each = 3)


tapply(marks, group, mean)


#----------------matrix -------------------#
#marks <- c(78 , 89 ,69 , 45 , 73 , 81 , 90 , 82 , 79)
#mat <- matrix(marks , nrow = 3 , ncol = 3)

marks <- c(78 , 89 ,69 , 45 , 73 , 81 )
mat <- matrix(marks , nrow = 3 , ncol = 2)
mat

mat2 <- matrix(marks , nrow = 2 , ncol = 3)
mat2


fruits <- matrix(c("Apple" , "Mango" , "Oranges" , "Avocado" , "Grapes" , "Berries") , nrow = 2 , ncol = 3)
fruits

marks <- c(78 , 89 ,69 , 45 , 73 , 81 )
mat <- matrix(marks , nrow = 3 , ncol = 2 , byrow = FALSE)
mat


name <- c("Ahsan" , "Saim" , "Asad")
subjects <- c("Maths" , "Physics" ,"Computer")
marks <- c(78 , 98 , 69 , 56 , 71 , 67 , 81 ,95 , 79)

result <- matrix(marks , nrow = 3 , ncol = 3 , byrow = TRUE , dimnames = list(name , subjects))
result

rowSums(result)
colSums(result)

result[2 , 2]
result[1 , 3]
result[1 , ]
result[ , 3]
colMeans(result)
rowMeans(result)

#-----------Arrays-------------------#

# Stores = 3
# Months = 2
# Years = 2

sales <- array(
  c(120 , 150 , 180 , 130 , 145 , 160 , 140 , 190 , 200 , 150 , 170 , 210),
  dim = c(3 , 2 , 2),
  dimnames = list(
    c("Store_A" , "Store_B" , "Store_C"),
    c("Nov" , "Dec"),
    c("2023" , "2024")
  )
)

sales

sales["Store_A" , "Nov" , "2024"]

apply(sales , 1 , sum)

apply(sales , 2, sum)

apply(sales , 3, sum)

#----------------------Data Frames---------------------------------#

students <- data.frame(
    
  name = c("Ali" , "Saad" , "Ahmed" , "Hasan" , "Ahsan"),
  age = c(12 , 14 , 11 , 16 , 10 ),
  grade = factor(c("A" , "A+" , "B" , "A" , "B")),
  standard = c(5 , 8 , 4 , 10 , 5)
  
)

print(students)
print(students$name)
print(students[2])
print(students[3 , 3])
print(students[1 , ])
print(students[4])
print(students$standard)
print(students[ , 4])

#-------------Data Manipulation------------#

stu_marks <- data.frame(
  Name = c("Ali" , "Saad" , "Ahmed" , "Hasan" , "Ahsan"),
  Maths = sample(60:100 , 5 , replace = TRUE),
  Eng = sample(60:90 , 5 , replace = TRUE),
  Sci = sample(50:85 , 5 , replace = TRUE)
)

print(stu_marks)


stu_marks$TotalMarks <- 0
stu_marks$TotalMarks <- stu_marks$Maths + stu_marks$Eng + stu_marks$Sci

stu_marks$Grade <- NA

stu_marks$Percetange <- round((stu_marks$TotalMarks / 300) * 100)

for(i in 1:nrow(stu_marks)){
  
  if(stu_marks$Percetange[i] >= 80){
    
    stu_marks$Grade[i] <- "A+"
  
    } else if(stu_marks$Percetange[i] >= 70){
      
      stu_marks$Grade[i] <- "A"
      
    } else if(stu_marks$Percetange[i] >= 60){
      
      stu_marks$Grade[i] <- "B"
      
    } else if(stu_marks$Percetange[i] >= 50){
      
      stu_marks$Grade[i] <- "C"
      
    } else {
      
      stu_marks$Grade[i] <- "Fail"
      }   
  
}

stu_marks[stu_marks$TotalMarks > 200,]
stu_marks[stu_marks$Percetange > 80 , ]

max(stu_marks$TotalMarks)
min(stu_marks$Percetange)


# Create dataframe of employees , name , age , department , salary , working_years

# print salaries
# print employees age greater than 50
# Add Bonus of 10% of salary where working_year > 10   































































