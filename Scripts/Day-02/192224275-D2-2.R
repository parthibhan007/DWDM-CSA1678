data <- c(8, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

partition <- cut(data, quantile(data, probs = seq(0, 1, length.out = 4)), include.lowest = TRUE)
print("Equal-frequency partitioning:")
print(table(partition))

bin_means <- tapply(data, partition, mean)
smoothed_data <- unlist(lapply(partition, function(x) bin_means[as.character(x)]))
print("Smoothed data using bin means:")
print(smoothed_data)

hist(data, main="Histogram of Data", xlab="Values", col="lightblue", breaks=5)
