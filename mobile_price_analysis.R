# Load dataset
mobile_data <- read.csv("C:/Users/unnam/Downloads/projects/mobile_price_data.csv")

# View dataset structure and sample rows
head(mobile_data)
str(mobile_data)
summary(mobile_data)

# Check missing values
sum(is.na(mobile_data))

# Distribution of battery power
hist(
  mobile_data$battery_power,
  main = "Battery Power Distribution",
  xlab = "Battery Power",
  ylab = "Frequency",
  col = "lightblue",
  border = "white"
)

# Distribution of RAM
boxplot(
  mobile_data$ram,
  main = "RAM Distribution",
  ylab = "RAM",
  col = "lightgreen"
)

# Relationship between RAM and Price Range
plot(
  mobile_data$ram,
  mobile_data$price_range,
  main = "RAM vs Price Range",
  xlab = "RAM",
  ylab = "Price Range",
  pch = 19,
  col = "blue"
)

# Correlation between RAM and Price Range
ram_price_correlation <- cor(
  mobile_data$ram,
  mobile_data$price_range,
  use = "complete.obs"
)

ram_price_correlation

# Linear regression model to predict price range
price_model <- lm(price_range ~ ram + battery_power, data = mobile_data)
summary(price_model)

# ANOVA test to check variance across RAM groups
anova_result <- aov(price_range ~ factor(ram), data = mobile_data)
summary(anova_result)

# Chi-square test for relationship between 4G and WiFi
chi_square_result <- chisq.test(table(mobile_data$four_g, mobile_data$wifi))
chi_square_result

