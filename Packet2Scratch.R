county %>%
  na.omit(poverty) %>%
  ggplot(aes(x = poverty)) + 
  stat_boxplot(geom = "errorbar") +
  geom_boxplot()

county %>%
  na.omit(poverty) %>%
  ggplot(aes(x = poverty)) + 
  stat_boxplot(geom = "errorbar", coef = 10) +
  geom_boxplot(coef = 10) + 
  labs(title = "Poverty Rates of U.S. Counties",
       y = NULL, 
       x = "Poverty rate", 
       subtitle = "Percentage of residents living in poverty",
       caption = "Source: county dataset") + 
      scale_y_continuous(breaks = NULL, labels = NULL)
                                                                                                              
county %>% na.omit(poverty) %>% 
  ggplot(aes(x = poverty, y = metro)) +
  stat_boxplot(geom = "errorbar") + 
  geom_boxplot() +
  labs(title = "Poverty Rates of U.S. Counties",
       y = "Metropolitan Area", 
       x = "Poverty rate",
       subtitle = "Percentage of residents living in poverty",
       caption = "Source: county dataset")
                                                                                      
county %>%
  na.omit(pop2017) %>%
  ggplot(aes(x = pop2017)) + 
  stat_boxplot(geom = "errorbar") +
  geom_boxplot() +
  scale_y_continuous(breaks = NULL, labels = NULL) +
  scale_x_log10()

mean(census$age)
census_dev <- census %>% 
  mutate(Deviation = age - mean(age))
mean(census_dev$Deviation) %>% round(14)

census_dev <- census_dev %>% 
  mutate(Sq_Deviation = Deviation^2)
mean(census_dev$Sq_Deviation)
mean(census_dev$Sq_Deviation) %>% sqrt()
