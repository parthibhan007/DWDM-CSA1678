pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean(pencils)
median(pencils)
mode_pencils <- as.numeric(names(sort(table(pencils), decreasing = TRUE)[1]))
mode_pencils
