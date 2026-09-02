data(Titanic)

# Convert Titanic table to data frame
titanic_data <- as.data.frame(Titanic)

# Display
print(titanic_data)

# Survival vs Class
survival_class <- xtabs(
  Freq ~ Class + Survived,
  data = titanic_data
)

barplot(
  survival_class,
  beside = TRUE,
  legend = TRUE,
  main = "Survival vs Class",
  xlab = "Class",
  ylab = "Number of Passengers"
)

# Survival vs Class by Gender
survival_gender <- xtabs(
  Freq ~ Class + Survived + Sex,
  data = titanic_data
)

# Male
barplot(
  survival_gender[, , "Male"],
  beside = TRUE,
  legend = TRUE,
  main = "Survival by Class - Male",
  xlab = "Class",
  ylab = "Passengers"
)

# Female
barplot(
  survival_gender[, , "Female"],
  beside = TRUE,
  legend = TRUE,
  main = "Survival by Class - Female",
  xlab = "Class",
  ylab = "Passengers"
)
titanic <- read.csv("titanic.csv")

hist(
  titanic$Age,
  main = "Histogram of Age",
  xlab = "Age",
  ylab = "Frequency"
)