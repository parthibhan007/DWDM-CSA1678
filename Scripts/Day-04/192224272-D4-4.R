persons <- c("Gopu", "Babu", "Baby", "Gopal", "Krishna", "Jai", "Dev", "Malini", "Hema", "Anu")
vegetarian <- c("yes", "yes", "yes", "no", "yes", "no", "no", "yes", "yes", "yes")
veg_count <- sum(vegetarian == "yes")
non_veg_count <- sum(vegetarian == "no")
cat("Number of vegetarians:", veg_count, "\n")
cat("Number of non-vegetarians:", non_veg_count, "\n")
if (veg_count > non_veg_count) {
  cat("There are more vegetarians.\n")
} else if (veg_count < non_veg_count) {
  cat("There are more non-vegetarians.\n")
} else {
  cat("Both groups have the same number of people.\n")
}
