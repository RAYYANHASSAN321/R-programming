#-------- Input / Prompt from user --------#
name <- readline(prompt = "Enter your name : ")
yearOfBirth <- as.integer(readline(prompt = "Enter your year of birth : "))

current_year <- 2025
current_age <- current_year - yearOfBirth

print(paste("Your name is : ", name))
print(paste("Your year of birth is : ", yearOfBirth))
print(paste("Your age is : ", current_age))

#-------- Input / Prompt for product of three numbers  --------#

a <- as.integer(readline(prompt = "Enter first number: "))
b <- as.integer(readline(prompt = "Enter second number: "))
c <- as.integer(readline(prompt = "Enter third number: "))

product <- a * b * c
print(paste("The product is:", product))


# ----------- Conditional Statement ----------- #
msg <- readline(prompt = "Enter your message : ")

if(msg == "thanks"){
  print("You're welcome!!")
} else if(msg == "hi"){
  print("Hello there, how could we help you?")
} else if(msg == "timings"){
  print("Timings are 9:00AM to 8:00PM")
} else{
  print("Could you repeat again?")
}

# ---- Number Input ----
number <- as.integer(readline(prompt = "Enter a number: "))

if(number >= 0){
  print(paste(number, "is positive number"))
} else if(number < 0){
  print(paste(number, "is negative number"))
}




#---------------- Switch Cases ----------------#
day <- 3

result <- switch(day,
                 "Sunday",
                 "Monday",
                 "Tuesday",
                 "Wednesday",
                 "Thursday",
                 "Friday",
                 "Saturday"
)

#---- Next Break statement ----#

for(i in 1:10){
  if(i == 5){
    next   #skip
  }
  print(i)
}

for(i in 1:10){
  if(i == 8)
    break   #terminate loop
  print(i)
}



# -------------- For Loop ----------------- #
for(i in 1:10){
  print(paste("value is : " , i ))
}


# ------------- Prime Print ------------------- #
for(i in 2:100){
   isPrime <- TRUE

  for(j in 2:(i - 1)){
    if(i %% j == 0){
      isPrime <- FALSE
      break
    }
  }
  
  if(isPrime == TRUE){
    print(paste(i , "is prime number"))
  }
}

#--------- Even/odd ------------- #

num <- 50

if (num %% 2 == 0) {
  print(paste(num, "is an even number."))
} else {
  print(paste(num, "is an odd number."))
}

# ------------------- Repeat Loop -------------- #
i <- 1
repeat{
   print(i)
  
  x =  23.2
  print(typeof(x))
  print(class(x))
  
  i <- i + 1
  if(i > 5){
    break
  }
}


# ----------------- while loop  ------------ #

i <- 1
while(i <= 0){
  
  print (i)
  i <- i + 1
}






