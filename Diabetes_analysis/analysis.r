# Install and load necessary packages
install.packages(c("tidyverse", "ggplot2"))
library(tidyverse)
library(ggplot2)

# Read the dataset (replace path/to/your/diabetes_dataset.csv with the actual path)
diabetes_data <- read.csv("/Users/anamay/Desktop/Thanmayee/archive-2/Training.csv")

# Explore the structure of the dataset
str(diabetes_data)

# Summary statistics
summary(diabetes_data)

# Data preprocessing (if needed)
# For example, handling missing values
# diabetes_data <- na.omit(diabetes_data)

# Explicitly load the dplyr package for the pipe operator
library(dplyr)

# Create scatter plots
scatter_plots <- diabetes_data %>%
  ggplot(aes(x = Glucose, y = BMI, color = factor(Outcome))) +
  geom_point() +
  labs(title = "Scatter Plot: Glucose vs BMI by Outcome",
       x = "Glucose",
       y = "BMI",
       color = "Outcome") +
  theme_minimal()

# Create histograms
histograms <- diabetes_data %>%
  ggplot(aes(x = Age, fill = factor(Outcome))) +
  geom_histogram(binwidth = 5, position = "identity", alpha = 0.7) +
  labs(title = "Histogram: Age by Outcome",
       x = "Age",
       y = "Frequency",
       fill = "Outcome") +
  theme_minimal()

# Display the plots
print(scatter_plots)
print(histograms)

