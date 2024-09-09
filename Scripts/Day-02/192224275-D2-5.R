data_range <- c(12, 8, 4, 16, 15, 15, 5, 15, 10, 8)

range_val <- range(data_range)
range_difference <- diff(range_val)
print(paste("Range of the data: ", range_difference))
