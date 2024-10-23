library(tidyverse)
library(ggformula)

d <- rio::import("data/hta.xlsx", sheet = "data") %>%
  mutate(region = factor(region, 
                  levels = 1:17, 
                  labels = c("Andalucia", "Aragon", "Asturias",
                             "Baleares", "Canarias", "Cantabria",
                             "Castilla-La Mancha", "Castilla-Leon",
                             "Catalunya", "Extremadura", "Galicia", 
                             "La Rioja", "Madrid", "Murcia", "Navarra",
                             "Pais Vasco", "Valencia")))


# Use gf_barh() to produce a barchart of region with blue lines and no fill
gf_bar(~ region, data = d, col = "blue", fill = NA)

# Same, but with blue fill and no lines 
gf_bar(~ region, data = d, fill = "blue", col = NA)

# Same, but after gf_bar() add the following code:      + coord_flip() 
gf_bar(~ region, data = d, fill = "blue", col = NA) + coord_flip() 

# body mass index by sex: density (left) and boxplot (right),
# in a single graphic window.

dd <- d %>% 
  select(sex, weight, height) %>% 
  mutate(bmi = round(weight / height^2,1)) %>% 
  filter(!is.na(sex))

gf_density(~ bmi, data = dd) /
  gf_boxplot(~ bmi, data = dd) 

# unimodal? yes
# symmetry? slight positive assymetry
# outliers? yes, in the long tail
