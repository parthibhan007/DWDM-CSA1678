marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
equal_freq_bins <- split(marks, cut(marks, quantile(marks, probs = seq(0, 1, 1/3)), include.lowest = TRUE))
equal_freq_bins
hist(marks, breaks = 3, main = "Equal Width Partitioning", xlab = "Marks", col = "lightblue")
