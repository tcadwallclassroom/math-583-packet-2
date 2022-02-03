age_at_mar %>% ggplot(aes(x = age)) +
  geom_histogram(binwidth = 1, fill="forestgreen", color = "black") +
  geom_vline(aes(xintercept=mean(age)),
             color="blue", linetype="dashed", size=1) + 
  geom_vline(aes(xintercept=median(age)),
             color="red", linetype="dotted", size=1) +
  labs(title = "Age at first marriage for 5,534 US women",
    subtitle = "Dotted red line indicated median, dashed blue line indicates mean.",
    x = "Age at first marriage",
    y = "Number of women",
    caption = "age_at_mar dataset"
  )
