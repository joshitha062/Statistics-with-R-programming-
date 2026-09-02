data(ChickWeight)

# Convert Diet to factor
ChickWeight$Diet <- factor(ChickWeight$Diet)

# Multiple regression
model <- lm(
  weight ~ Time + Diet,
  data = ChickWeight
)

# Model summary
summary(model)

# Predict weight
new_data <- data.frame(
  Time = c(10, 20, 30),
  Diet = factor(
    c(1, 2, 3),
    levels = levels(ChickWeight$Diet)
  )
)

prediction <- predict(
  model,
  newdata = new_data
)

print(prediction)

# Calculate model error
actual <- ChickWeight$weight
predicted <- predict(model)

# MSE
MSE <- mean(
  (actual - predicted)^2
)

# RMSE
RMSE <- sqrt(MSE)

# MAE
MAE <- mean(
  abs(actual - predicted)
)

print(MSE)
print(RMSE)
print(MAE)