library(dplyr)
library(ggplot2)
data("starwars")
glimpse(starwars)
starwars %>%
    count(species) %>%
   ggplot(aes(y = species, x = n)) +
   geom_col()

starwars %>% ggplot(aes(x = height, y = mass, col = species)) + geom_point()

starwars %>% slice_max(mass)

starwars %>% ggplot(aes(x = mass, fill = gender)) +
  geom_density() +
  scale_x_log10()