scores <- c(14, 21, 18, 21, 14, 35, 42, 42, 21, 14)

mean_scores <- mean(scores)
print(paste("Mean: ", mean_scores))

median_scores <- median(scores)
print(paste("Median: ", median_scores))

get_mode <- function(v) {
  uniq_vals <- unique(v)
  uniq_vals[which.max(tabulate(match(v, uniq_vals)))]
}
mode_scores <- get_mode(scores)
print(paste("Mode: ", mode_scores))
