# Given data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins (let's assume 5 bins for this example)
bin_size <- 5
bins <- split(data, ceiling(seq_along(data) / bin_size))

# (a) Smoothing by Bin Mean
bin_means <- lapply(bins, mean)
smoothed_by_mean <- unlist(lapply(seq_along(bins), function(i) rep(bin_means[[i]], length(bins[[i]]))))

# (b) Smoothing by Bin Median
bin_medians <- lapply(bins, median)
smoothed_by_median <- unlist(lapply(seq_along(bins), function(i) rep(bin_medians[[i]], length(bins[[i]]))))

# (c) Smoothing by Bin Boundaries
smoothed_by_boundaries <- unlist(lapply(bins, function(bin) {
  bin_min <- min(bin)
  bin_max <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - bin_min) < abs(x - bin_max), bin_min, bin_max))
}))

# Output the results
smoothed_by_mean
smoothed_by_median
smoothed_by_boundaries
