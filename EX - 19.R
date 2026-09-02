advertising <- read.csv("advertising.csv")

# Display data
head(advertising)

# Create regression model
model <- lm(
  Sales ~ Spend,
  data = advertising
)

# Display model
summary(model)

# Predict Sales
new_data <- data.frame(
  Spend = c(100, 200, 300)
)

prediction <- predict(
  model,
  newdata = new_data
)

print(prediction)

# Scatter plot
plot(
  advertising$Spend,
  advertising$Sales,
  main = "Advertising Spend vs Sales",
  xlab = "Spend",
  ylab = "Sales"
)

# Regression line
abline(model)