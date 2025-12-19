#----------------------Box Plot------------------------------#

marks <- c(45 , 67 , 34 , 90 , 55 , 87 , 29 , 94 , 89)

boxplot(marks , main = "Box plot of student marks" , ylab = "Marks" , 
        col = "yellow" , border = "black" , horizontal = TRUE , notch = TRUE)

marking = c(
  62 , 75 , 80 , 55 , 90 , 85 , 70 , 60 , 78 , 88,
  92 , 66 , 73 , 58 , 61 , 82 , 84 , 69 , 77 , 91
)

sections = c(rep("Section A" ,  10) , rep("Section B" , 10))

df <- data.frame(
  marks = marking,
  section = sections
)

boxplot(marks ~ section , data = df ,
        main = "Box of plot section A & B marks",
        ylab = "Marks" , col = c("orange" , "lightblue"),
        border = "black" , horizontal = TRUE , notch = TRUE
        )

legend("topright" , legend = c("Section A" , "Section B"),
       fill = c("orange" , "lightblue")
       )

library(ggplot2)

ggplot(df , aes(x = section , y = marks , fill = section)) +
  geom_boxplot(notch = TRUE , color = "black") +
  scale_fill_manual(values = c("pink" , "lightgreen")) + 
  labs(title = "Comparison of Section A & B" , X = "Section" , y = "marks")