zz#------------- Simple Function --------------#

greet <- function(){
  
  print("Welcome to functions")
}
greet()

#------------- Parameter function -------#

greeting <- function(name){
  print(paste("Welcome" , name))
}

greeting("Ali")

add_numbers <- function(a , b){
  sum <- a + b 
  print(paste("sum is" , sum))
}

add_numbers(45 , 5)






#---------------- Function with return type --------------#

subtract <- function(a , b){
  
  sub <- a - b
  return(sub)
}

subtract(50 , 20)

result = 50 
result <- result + subtract(50 , 20)
print(result)

# ----------------------- Default Function ----------------#

info <- function(role = "user"){
  print(paste("Welcome", role, "!"))
}

info()
info("admin")

#--------------- Returning multiple outputs ---------------#

calculate <- function(x, y){
  sum <- x + y
  sub <- x - y
  multiply <- x * y
  div <- x / y
  
  return(list(Sum = sum, Sub = sub, Mul = multiply, Div = div))
}

result <- calculate(20, 5)
print(result)
print(result$Sum)

# -------------- Anonymous (inline) function -------- #
numbers <- c(2 , 4 , 6 , 8)
square <- sapply(numbers, function(x) x ^2)
print(square)

# ----------------- Built in Functions -------------- #
sum(10 , 20 , 30) #------Sum
mean(c(10 , 20 , 30 , 40)) # --- Mean / Average
median(c(3 , 8 , 4 , 9 , 1)) #---- Median

nums <- c(12 , 45 , 8 , 13 , 21 , 56)

min(nums) #-- minimum
max(nums) #---- maximum

range(nums)

sqrt(81) # square root
abs(-1) # absolute number
round(3.14295874 , 2) # round off

floor(4.2) #-- round off downward
ceiling(4.2) #-- round off upward
round(4.2 , 0)

marks <- c(65 , 90 , 45 , 72, 56 , 85)

sd(marks) # standard deviation
var(marks) #variance

summary(marks) # summary of numbers
quantile(marks) # quantile of numbers 

# -------- string functions ---------- #
name <- "Ali Ahmed"

nchar(name)

toupper(name)
tolower(name)

# --------- sub string function ---------- #
substr(name , start = 1 , stop = 3)

# ---------- concatenation function ------ #
paste("welcome" , name)

# ---- string split ------ #
strsplit(name , " ")

# ---- which function ----- #
numbers <- c(2 , 4 , 6 , 7 , 9)
which(numbers %% 2 == 0)

#--- NA functions -----#
data <- c(10 , 30 , NA , 70)
is.na(data)
na.omit(data)

# -------- sequence function ----------- #
seq(1 , 20 , by = 2)

# ---------- repeat function ------ #
rep(5 , 6)
rep("Ali" , 4)

rep(c("pink" , "green") , 5)
rep(c("pink" , "green") , times = 5)

# ---------- random number ----#

sample(1:60 , 5)

# ---------- length ----------- # 
x <- c(10 , 4 , 32 , 10 , 25 , 56 , 32, 1 , 78)
length(x)
sort(x)
unique(x)


#---------- Frequency of each value -----# 
table(x)
table()


#------------ Vector --------------------------#

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

v1 <- c(45 , 23 , 3 , 122 , 53 , 16)
v2 <- c(78 , 34 , 1 , 23 , 43 , 0)

print(v1 & v2)
print(typeof(v1))

v3 <- as.integer(v1)

print(typeof(v3))

a <- 45L

print(typeof(a))

print(v1[2:5])

sum(56 , 12)

plot(v1)


# create two vectors of 5 numeric values and perform
    #Element wise Addition
    #Element wise Multiplication
v1 <- c(10, 20, 30, 40, 50)
v2 <- c(5, 4, 3, 2, 1)

v3 <- v1 + v2
print(v3)

v4 <- v1 * v2
print(v4)


# Create a vector of fruits, print 2nd and 4th element
fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")

print(fruits)

print(fruits[2])
print(fruits[4])







matrix_data <- matrix(1:12, nrow = 4, ncol = 3)

print("The 4x3 matrix:")
print(matrix_data)

row_sums <- rowSums(matrix_data)
print("Row sums:")
print(row_sums)

col_means <- colMeans(matrix_data)
print("Column means:")
print(col_means)






fruit_colors <- factor(c("red", "green", "yellow", "red", "green", "red"))


print("Fruit colors as a factor:")
print(fruit_colors)


print("Levels of the factor:")
print(levels(fruit_colors))


print("Summary of the factor:")
print(summary(fruit_colors))

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


employees$bonus <- ifelse(employees$working_years > 10, employees$salary * 0.10, 0)


print("Updated employees with bonus:")
print(employees)
