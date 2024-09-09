data_mode_range <- c(280, 350, 320, 400, 350, 280, 350, 320, 400, 350, 490, 590, 470, 280, 410, 350)

get_mode <- function(v) {
  uniq_vals <- unique(v)
  uniq_vals[which.max(tabulate(match(v, uniq_vals)))]
}
mode_val <- get_mode(data_mode_range)
print(paste("Mode: ", mode_val))

range_val <- range(data_mode_range)
range_difference <- diff(range_val)
print(paste("Range: ", range_difference))
