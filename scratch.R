library(openintro)
library(tidyverse)

help(age_at_mar)
age_at_mar %>% ggplot(aes(x = age)) +
  geom_histogram()
