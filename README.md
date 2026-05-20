# Mobile Prices Data Analysis

A comprehensive data analytics project focused on analyzing mobile phone specifications and understanding the factors that influence mobile phone pricing using statistical analysis and visualization techniques in R.

## Project Overview

This project analyzes a mobile phone dataset containing 2000 observations and 21 variables related to smartphone specifications such as:

- Battery Power
- RAM
- Internal Memory
- Camera Quality
- Screen Dimensions
- Network Support (3G/4G/WiFi)
- Price Range

The goal of this project is to explore relationships between mobile phone features and pricing categories using statistical methods, hypothesis testing, ANOVA, regression analysis, and categorical data analysis.

---

## Team Members

- Salman Khan
- Gowri Rohith Chirra
- Ratnesh Chilamkurthi
- Bhanuprasad Unnam
- Manikanta Modugula
- Rishi Vardhan Reddy Navaru

Professor: Ankur Arora

---

## Dataset Information

The dataset contains:

- 2000 mobile phone records
- 21 variables
  - 14 Numerical Variables
  - 7 Categorical Variables

### Numerical Features

- battery_power
- clock_speed
- fc (Front Camera)
- int_memory
- m_dep
- mobile_wt
- n_cores
- pc (Primary Camera)
- px_height
- px_width
- ram
- sc_h
- sc_w
- talk_time

### Categorical Features

- blue
- dual_sim
- four_g
- three_g
- touch_screen
- wifi
- price_range

---

## Technologies Used

- R Programming
- ggplot2
- dplyr
- Statistical Analysis
- Hypothesis Testing
- ANOVA
- Linear Regression

---

## Project Objectives

- Perform data cleaning and preprocessing
- Analyze mobile phone specifications
- Identify relationships between device features and price range
- Conduct hypothesis testing
- Perform ANOVA analysis
- Conduct categorical data analysis
- Build linear regression models
- Visualize distributions and relationships

---

## Statistical Analyses Performed

### 1. Data Cleaning & Preprocessing
- Missing value analysis
- Outlier detection using Box Plots and IQR

### 2. Data Summarization
- Mean
- Median
- Mode
- Quartiles
- Standard Deviation

### 3. Hypothesis Testing
- Battery Power Mean Testing
- Internal Memory Mean Testing
- RAM Comparison for 4G vs Non-4G Phones

### 4. ANOVA Analysis
- One-Way ANOVA
- Two-Way ANOVA

### 5. Categorical Data Analysis
- Frequency Analysis
- Chi-Squared Test

### 6. Linear Regression
- Battery Power vs Talk Time Analysis

---

## Key Findings

- No missing values or major outliers were found in the dataset.
- RAM significantly varies across different mobile price ranges.
- Battery power differs significantly from the hypothesized mean value.
- 4G support does not significantly impact average RAM.
- Talk time has a statistically significant relationship with battery power.
- WiFi and 4G support showed no strong association using Chi-Squared testing.

---

## Visualizations Included

- Box Plots
- Histograms
- Scatter Plots
- Normal Distribution Graphs

---

## Sample R Code

```r
# Load Dataset
data <- read.csv("Mobile Price.csv")

# Summary Statistics
summary(data)

# Linear Regression
linear_model <- lm(battery_power ~ talk_time, data = data)

summary(linear_model)
