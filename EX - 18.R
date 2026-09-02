data(iris)

boxplot(
  iris$Sepal.Length,
  main = "Boxplot of Sepal Length",
  ylab = "Sepal Length"
)
hist(
  iris$Sepal.Length,
  main = "Histogram of Sepal Length",
  xlab = "Sepal Length"
)
barplot(
  table(iris$Species),
  main = "Bar Plot of Iris Species",
  xlab = "Species",
  ylab = "Frequency"
)
plot(
  iris$Sepal.Length,
  type = "l",
  main = "Line Chart of Sepal Length",
  xlab = "Observation",
  ylab = "Sepal Length"
)
plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main = "Sepal Length vs Petal Length",
  xlab = "Sepal Length",
  ylab = "Petal Length"
)