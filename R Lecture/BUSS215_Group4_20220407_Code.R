# BUSS215 Group 4

rm(list=ls())

# Step 0
idx <- c('P01', 'P02', 'P03', 'P04'); idx

name <- c('Monitor', 'Mouse', 'Keyboard', 'Printer'); name

price <- c(300.99, 50.50, 40.38, 75.52); price

qty <- c(9, 30, 25, 9); qty

discount_rate <- c(50, 20, 0, 30); discount_rate

Sales <- data.frame(ID=idx, Name=name, Price=price, QTY=qty, Discount_Rate=discount_rate); Sales

# Step 1
Sales <- rbind(Sales, data.frame(ID='P05', Name='Speaker', Price=39.99, QTY=9, Discount_Rate=15)); Sales

# Step 2
final_price_data <- (Sales$Price * (1 - (Sales$Discount_Rate / 100))); final_price_data

Sales <- cbind(Sales, data.frame(Final_Price=final_price_data)); Sales

# Step 3
Sales[Sales$Final_Price < mean(Sales$Final_Price), 2]
