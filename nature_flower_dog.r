#This code will build bridges in the R environment 

#Step 1: Set up the environment

#Load necessary packages

library(ggplot2)
library(reshape2)
library(dplyr)

#Set the random seed for reproducibility

set.seed(42)

#Step 2: Load the data

#Load the raw data

raw_data <- read.csv("bridge_data.csv")

#Check the data

head(raw_data)

#Step 3: Clean up the data

#Remove unnecessary columns

bridge_data <- select(raw_data, -c(x, y))

#Check the cleaned-up data

head(bridge_data)

#Step 4: Pre-process the data

#Calculate the bridge length 

bridge_data$length <- bridge_data$width + bridge_data$height

#Scale the numeric variables 

bridge_data <- mutate(bridge_data, 
                       width = scale(width),
                       height = scale(height),
                       length = scale(length))
                       
#Check the processed data

head(bridge_data)

#Step 5: Visualize the data

#Plot the data

ggplot(bridge_data, aes(x=width, y=height)) + 
  geom_point() +
  ggtitle("Bridge Dimensions") +
  xlab("Width") +
  ylab("Height")

#Step 6: Model the data

#Split the data into training and validation sets

train_indices <- sample(1:nrow(bridge_data), 0.8 * nrow(bridge_data))

#Create training and validation sets

train_data <- bridge_data[train_indices,]
valid_data <- bridge_data[-train_indices,]

#Set up the linear regression model

bridge_model <- lm(length ~ width + height, 
                   data=train_data)
                   
#Check the model

summary(bridge_model)

#Step 7: Evaluate the model

#Make predictions on the validation set

valid_predictions <- predict(bridge_model, valid_data)

#Calculate the root mean squared error

rmse <- sqrt(mean((valid_data$length - valid_predictions)^2))

#Print the RMSE

print(paste("RMSE =", round(rmse, 2)))

#Step 8: Make predictions

#Make predictions on new data points

predictions <- predict(bridge_model, 
                       data.frame(width=1.5, height=2.5))

#Print the predictions

print(paste("Predicted Length =", round(predictions, 2)))