data_partition <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)

equal_freq_partition <- cut(data_partition, quantile(data_partition, probs = seq(0, 1, length.out = 4)), include.lowest = TRUE)
print("Equal-frequency partitioning:")
print(table(equal_freq_partition))

equal_width_partition <- cut(data_partition, breaks = 3)
print("Equal-width partitioning:")
print(table(equal_width_partition))
