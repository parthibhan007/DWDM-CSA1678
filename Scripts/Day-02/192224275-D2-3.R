class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

mean_A <- mean(class_A)
mean_B <- mean(class_B)

median_A <- median(class_A)
median_B <- median(class_B)

range_A <- range(class_A)
range_B <- range(class_B)

print(paste("Mean for Class A: ", mean_A, "; Class B: ", mean_B))
print(paste("Median for Class A: ", median_A, "; Class B: ", median_B))
print(paste("Range for Class A: ", diff(range_A), "; Class B: ", diff(range_B)))

boxplot(class_A, class_B, names = c("Class A", "Class B"), main="Boxplot of Class Scores", col=c("red", "green"))
