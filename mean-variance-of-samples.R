require(tidyverse)
require(gtools)

Height <- c(72, 66, 74, 76, 61, 63, 70, 74)
# Height <- c(1:10)
var(Height)
var(Height)*(length(Height)-1)/(length(Height))

var.sample <- function(set) {
  n <- length(set)
  sum((set-mean(set))^2) / (n-1)
}

var.pop <- function(set) {
  n <- length(set)
  sum((set-mean(set))^2) / n
}

var.sample(Height)
var.pop(Height)



sample_size <- 3
samples <- permutations(length(Height), sample_size, Height, set = F, repeats.allowed = T)
var_samples <- apply(samples, 1, var.sample)
mean(var_samples)

