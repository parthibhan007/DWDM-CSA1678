marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
sorted_marks <- sort(marks)
n <- length(marks)
equal_frequency_bins <- split(sorted_marks, cut(1:n, 3, labels = FALSE))
equal_frequency_bins
hist(marks, breaks = c(min(marks), max(marks[equal_frequency_bins[[1]]]), 
                       max(marks[equal_frequency_bins[[2]]]), max(marks)),
     main = "Equal-Frequency Partitioning", xlab = "Marks", col = "lightblue")
bin_width <- (max(marks) - min(marks)) / 3
breaks <- seq(min(marks), max(marks), by = bin_width)
breaks
hist(marks, breaks = breaks, main = "Equal-Width Partitioning", 
     xlab = "Marks", col = "lightgreen")
set.seed(123) 
kmeans_result <- kmeans(marks, centers = 3)
kmeans_result$centers
hist(marks, breaks = 10, main = "Clustering Partitioning", 
     xlab = "Marks", col = "lightcoral")
abline(v = kmeans_result$centers, col = "red", lwd = 2, lty = 2)

