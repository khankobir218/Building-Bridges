# 'Building Bridges'

# Create a function to convert a numeric vector into a character vector 
convert_vector <- function(x) {
  if (is.numeric(x)) {
    x <- as.character(x)
  }
  return(x)
}

# Define a function to create a bridge across two vectors
build_bridge <- function(A, B){
  A <- convert_vector(A)
  B <- convert_vector(B)
  bridge <- c(A, B)
  return(bridge)
}

# Create two vectors 
A <- c(1, 3, 5, 7, 9)
B <- c(2, 4, 6, 8, 10)

# Build the bridge 
bridge <- build_bridge(A, B)

# Print the bridge 
print(bridge)

# Create an empty bridge
empty_bridge <- build_bridge(NA, NA)

# Print empty bridge
print(empty_bridge)

# Create a column of ages
ages <- c(18, 24, 20, 25)

# Create a column of zeros
zeros <- rep(0, length(ages))

# Build a bridge with the two vectors 
age_bridge <- build_bridge(ages, zeros)

# Print age bridge
print(age_bridge)

# Create a vector of odd numbers
odd_numbers <- c(1, 3, 5, 7, 9)

# Create a vector of even numbers
even_numbers <- c(2, 4, 6, 8, 10)

# Create a data frame with the two vectors
prepare_data <- data.frame(odd_numbers, even_numbers)

# Convert the data frame to a matrix
matrix_data <- as.matrix(prepare_data)

# Build a bridge across the matrix
matrix_bridge <- build_bridge(matrix_data[,1], matrix_data[,2])

# Print the matrix bridge
print(matrix_bridge)

# Create a vector of dog breeds
dog_breeds <- c("labrador", "poodle", "terrier", "dachshund")

# Create a vector of cat breeds
cat_breeds <- c("siamese", "bengal", "persian", "ragdoll")

# Create a data frame with the two vectors
mix_breeds <- data.frame(dog_breeds, cat_breeds)

# Build a bridge across the data frame
mix_breeds_bridge <- build_bridge(mix_breeds$dog_breeds, mix_breeds$cat_breeds)

# Print the bridge 
print(mix_breeds_bridge)

# Create a vector of food
food_list <- c("apple", "banana", "carrot", "date")

# Duplicate the vector
more_food <- food_list

# Build a bridge across the two vectors
food_bridge <- build_bridge(food_list, more_food)

# Print the bridge 
print(food_bridge)

# Create a list of colors
colors <- c("red", "orange", "yellow", "green")

# Add another element to the list
colors <- c(colors, "blue")

# Build a bridge across the two lists
color_bridge <- build_bridge(colors, food_list)

# Print the bridge
print(color_bridge)

# Create a vector of numbers
numbers <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Create an empty vector
empty <- rep(NA, length(numbers))

# Build a bridge across the two vectors
numbers_bridge <- build_bridge(numbers, empty)

# Print the bridge
print(numbers_bridge)

# Create a vector of letters
letters <- LETTERS[1:10]

# Build a bridge across the vector 
letter_bridge <- build_bridge(letters, empty)

# Print the bridge
print(letter_bridge)