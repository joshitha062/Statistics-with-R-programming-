data(iris)

# Convert Species into binary classes
iris$Species_Binary <- ifelse(
  iris$Species == "setosa",
  "Setosa",
  "Non-Setosa"
)

iris$Species_Binary <- factor(
  iris$Species_Binary,
  levels = c("Setosa", "Non-Setosa")
)

# Random 80/20 split
set.seed(123)

train_index <- sample(
  1:nrow(iris),
  size = 0.8 * nrow(iris)
)

train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Logistic regression model
model <- glm(
  Species_Binary ~ Petal.Length + Petal.Width,
  data = train_data,
  family = binomial
)

# Model summary
summary(model)

# Predict probabilities
probability <- predict(
  model,
  newdata = test_data,
  type = "response"
)

# Convert probabilities into classes
prediction <- ifelse(
  probability >= 0.5,
  "Non-Setosa",
  "Setosa"
)

prediction <- factor(
  prediction,
  levels = c("Setosa", "Non-Setosa")
)

# Confusion matrix
confusion_matrix <- table(
  Actual = test_data$Species_Binary,
  Predicted = prediction
)

print(confusion_matrix)

# Accuracy
accuracy <- mean(
  prediction == test_data$Species_Binary
)

print(accuracy)

# Error rate
error_rate <- 1 - accuracy

print(error_rate)