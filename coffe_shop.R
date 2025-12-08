print("Welcome! We're glad to have you here — let’s get started on something amazing!")

customer_name <- readline(prompt = "Enter customer name : ")
coffee_cups <- as.integer(readline(prompt = "Enter number of coffee cups : "))

print(paste("Your name is : ", customer_name))
print(paste("Your total cups are : ", coffee_cups))


cup = 350.25
cup_total = cup * coffee_cups
print(paste("Your cup total is : ", cup_total))


total_bill <- as.integer(cup_total)
print(typeof(total_bill))
print(paste("Your total bill is : ", total_bill))

if(total_bill >= 2000){
  
  print(paste(total_bill, "You get a free cookie !"))
  
} else if(total_bill < 2000){
  
  print(paste(total_bill, "No free items this time"))
  
}


Feedback <- readline(prompt = "Enter your feedback : ")

if(Feedback == "good"){
  print("Thank you for your kind words")
} else if(Feedback == "bad"){
  print("Sorry for the inconvenience")
} else{
  print("Thanks for visiting coffee time")
}

