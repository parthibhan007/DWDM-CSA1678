data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_mean <- function(x, bin_size) {
  bins <- split(x, ceiling(seq_along(x) / bin_size))  # Split data into bins
  means <- sapply(bins, mean)  # Calculate the mean for each bin
  list(bins = bins, means = means)  # Return both bins and means
}
bin_median <- function(x, bin_size) {
  bins <- split(x, ceiling(seq_along(x) / bin_size))  # Split data into bins
  medians <- sapply(bins, median)  # Calculate the median for each bin
  list(bins = bins, medians = medians)  # Return both bins and medians
}
bin_boundaries <- function(x, bin_size) {
  bins <- split(x, ceiling(seq_along(x) / bin_size))  # Split data into bins
  boundaries <- sapply(bins, function(bin) c(min(bin), max(bin)))  # Find min and max for each bin
  list(bins = bins, boundaries = boundaries)  # Return both bins and boundaries
}
bin_size <- 4
mean_result <- bin_mean(data, bin_size)
median_result <- bin_median(data, bin_size)
boundary_result <- bin_boundaries(data, bin_size)

# Display the results
cat("Bins by Mean:\n")
print(mean_result$bins)
cat("Means of each bin:\n")
print(mean_result$means)

cat("\nBins by Median:\n")
print(median_result$bins)
cat("Medians of each bin:\n")
print(median_result$medians)

cat("\nBins by Boundaries:\n")
print(boundary_result$bins)
cat("Boundaries of each bin:\n")
print(boundary_result$boundaries)
