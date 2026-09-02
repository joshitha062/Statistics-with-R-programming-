data(USArrests)

# Display dataset
USArrests

# Summary statistics
summary(USArrests)

# State with largest Rape arrest rate
max_rape <- max(USArrests$Rape)

rownames(USArrests)[
  USArrests$Rape == max_rape
]

print(max_rape)

# Maximum Murder rate
max_murder <- max(USArrests$Murder)

rownames(USArrests)[
  USArrests$Murder == max_murder
]

print(max_murder)

# Minimum Murder rate
min_murder <- min(USArrests$Murder)

rownames(USArrests)[
  USArrests$Murder == min_murder
]

print(min_murder)

# Correlation
cor(USArrests)

# Median Assault
median_assault <- median(USArrests$Assault)

# States above median Assault
USArrests[
  USArrests$Assault > median_assault,
]

# Bottom 25% Murder
q25 <- quantile(
  USArrests$Murder,
  0.25
)

USArrests[
  USArrests$Murder <= q25,
]

# Histogram
hist(
  USArrests$Murder,
  main = "Histogram of Murder",
  xlab = "Murder Rate"
)

# Density plot
plot(
  density(USArrests$Murder),
  main = "Density Plot of Murder",
  xlab = "Murder Rate"
)

# Scatter plot
plot(
  USArrests$Murder,
  USArrests$Rape,
  main = "Murder vs Rape",
  xlab = "Murder",
  ylab = "Rape"
)

# Bar graph
barplot(
  USArrests$Murder,
  names.arg = rownames(USArrests),
  las = 2,
  cex.names = 0.5,
  main = "Murder Rate by State",
  ylab = "Murder Rate"
)