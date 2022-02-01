Height<- c(1:10)
class_height <- data.frame(Height) 
# Enter values in the c function, separated by commas
# This gives the column a nice name
glimpse(class_height)
sample_data <- sample_data %>% 
  mutate(Deviation = Value - mean(sample_data$Value))
mean(sample_data$Deviation) %>% round(15)

deviation_ex_1 <- age_at_mar %>% 
  mutate(Deviation = age - mean(age_at_mar$age))
mean(deviation_ex_1$Deviation) %>% round(14)
