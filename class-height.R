
library(tidyverse)

Height <- c(70,75,77,60,68,67,64,62,72)
class_data <- data.frame(Height)

median(class_data$Height)
fivenum(class_data$Height)
summary(class_data$Height)

class_data %>% ggplot(aes(x = Height)) +
  geom_boxplot() +
  stat_boxplot(geom = "errorbar")

range(class_data$Height)
IQR(class_data$Height)
