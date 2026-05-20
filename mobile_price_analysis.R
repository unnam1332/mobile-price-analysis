# Mobile Price Analysis Project
# Author: Bhanuprasad Unnam

# Reading the dataset
mobile_data <- read.csv("mobile_price_data.csv")

# Display first few rows
print("First 5 rows of dataset")
head(mobile_data)

# Checking structure of dataset
print("Dataset Structure")
str(mobile_data)

# Summary statistics
print("Summary Statistics")
summary(mobile_data)

# Checking missing values
print("Missing Values")
sum(is.na(mobile_data))

# Histogram for battery power
hist(
  mobile_data$battery_power,
  main = "Battery Power Distribution",
  xlab = "Battery Power",
  ylab = "Frequency"
)

# Boxplot for RAM
boxplot(
  mobile_data$ram,
  main = "RAM Distribution",
  ylab = "RAM"
)

# Scatter plot between RAM and price range
plot(
  mobile_data$ram,
  mobile_data$price_range,
  main = "RAM vs Price Range",
  xlab = "RAM",
  ylab = "Price Range",
  pch = 19
)

# Correlation between RAM and price range
ram_price_correlation <- cor(
  mobile_data$ram,
  mobile_data$price_range
)

print("Correlation between RAM and Price Range")
print(ram_price_correlation)

# Linear regression model
price_model <- lm(
  price_range ~ ram + battery_power,
  data = mobile_data
)

print("Regression Model Summary")
summary(price_model)

# ANOVA test
anova_result <- aov(
  price_range ~ factor(ram),
  data = mobile_data
)

print("ANOVA Test")
summary(anova_result)

# Chi-square test for 4G and WiFi
chi_square_result <- chisq.test(
  table(
    mobile_data$four_g,
    mobile_data$wifi
  )
)

print("Chi-Square Test Result")
print(chi_square_result)

print("Project Analysis Completed")