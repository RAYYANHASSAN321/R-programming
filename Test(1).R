#Vector:Create a vector of 8 product IDs (e.g., 3001:3008).
#Extract only the IDs of products with odd numbers.

product_ids <- 3001:3008
print(product_ids)

odd_ids <- product_ids[product_ids %% 2 != 0]
print(odd_ids)


#1. Data Frame
#Create a data frame furniture_df with these columns (8 rows):
  #o ProductName (e.g., Chair, Table, Sofa, Bed, Wardrobe, Desk, Shelf, Stool)
  #o Category (Seating, Storage, Bedroom, Office)
  #o Price (numeric, in USD)
  #o Stock (numeric, quantity available)

ProductName <- c("Chair", "Table", "Sofa", "Bed",
                 "Wardrobe", "Desk", "Shelf", "Stool")

Category <- c("Seating", "Seating", "Bedroom", "Bedroom",
              "Storage", "Office", "Storage", "Seating")

Price <- c(120, 450, 800, 950, 600, 300, 200, 90)
Stock <- c(15, 10, 5, 8, 4, 12, 20, 18)

furniture_df <- data.frame(
  ProductID = product_ids,
  ProductName,
  Category,
  Price,
  Stock
)

print(furniture_df)


#2. Data Frame Filtering
#From furniture_df, display all products with Price &gt; 500.

expensive_items <- furniture_df[furniture_df$Price > 500, ]
print(expensive_items)


#3. List
#Create a list named store_list containing:
  #o The product ID vector
  #o The furniture_df data frame
  #o A character vector of supplier names (at least 3 suppliers).

suppliers <- c("Homex", "FurniPro", "WoodMaster")

store_list <- list(
  product_ids,
  furniture_df,
  suppliers
)

print(store_list)


#4. Matrix
#Suppose the sales quantity for the first 4 products over 3 months is:
  #5. Jan: c(12, 8, 5, 6)
  #6. Feb: c(15, 10, 7, 9)
  #7. Mar: c(18, 12, 9, 11)
#Create a matrix with rows as products and columns as months.
  #o Find the total sales per product (row sums).

Jan <- c(12, 8, 5, 6)
Feb <- c(15, 10, 7, 9)
Mar <- c(18, 12, 9, 11)

sales_matrix <- matrix(
  c(Jan, Feb, Mar),
  nrow = 4,
  ncol = 3,
  byrow = FALSE,
  dimnames = list(
    furniture_df$ProductName[1:4],
    c("Jan", "Feb", "Mar")
  )
)

print(sales_matrix)
print(rowSums(sales_matrix))


#Factor
#Convert the Category column in furniture_df into a factor.
  #o Show how many products belong to each category.

furniture_df$Category <- factor(furniture_df$Category)
print(furniture_df$Category)

summary(furniture_df$Category)


#Data Frame Column Add
  #Add a new column &quot;StockValue&quot; = Price * Stock.

furniture_df$StockValue <- furniture_df$Price * furniture_df$Stock
print(furniture_df)


#Sorting
#Sort the data frame by StockValue in descending order to find the most valuable inventory item.

sorted_df <- furniture_df[order(-furniture_df$StockValue), ]
print(sorted_df)


#Merging
  #Create another data frame delivery_df with Product IDs and Delivery Time (in days).
  #Merge it with furniture_df on Product ID.

delivery_df <- data.frame(
  ProductID = product_ids,
  DeliveryTime = c(3, 5, 7, 4, 6, 2, 3, 4)
)

merged_df <- merge(furniture_df, delivery_df, by = "ProductID")
print(merged_df)


#Summary Statistics
#Find:
  # The average Price of all furniture items
  # The product with the maximum Stock
  # The total inventory value (sum(StockValue))


avg_price <- mean(furniture_df$Price)
print(avg_price)

max_stock_item <- furniture_df[furniture_df$Stock == max(furniture_df$Stock), ]
print(max_stock_item)

total_value <- sum(furniture_df$StockValue)
print(total_value)
