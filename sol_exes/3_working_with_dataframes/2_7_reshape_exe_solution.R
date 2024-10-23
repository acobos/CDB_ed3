library(dplyr)
library(tidyr)
d <- rio::import("data/hta.xlsx", sheet = "data") 


# Create dataframe drugs with pid and all drug treatment variables (bb to other) 
# in long format.
drugs <- d %>% 
  select(pid, bb:other) %>% 
  pivot_longer(bb:other) 

head(drugs)


# Same, but the resulting dataframe should have variables pid, drug, and prescribed.
drugs <- d %>% 
  select(pid, bb:other) %>% 
  pivot_longer(bb:other, names_to = "drug", values_to = "prescribed") 

head(drugs)


# Same but keeping only the rows of drugs that were prescribed, 
# and variables pid and drug only.
drugs %>% 
  select(pid, bb:other) %>% 
  pivot_longer(bb:other, names_to = "drug", values_to = "prescribed") %>% 
  filter(prescribed == 1) %>% 
  select(-prescribed) 

head(drugs)


# Create dataframe bp with all blood pressure measurements in a long format, 
# having variables pid, sbp, dbp, and visit, and create an indicator variable 
# of BP control, defined as SBP < 120 and DBP < 90.

bp <- d %>% 
  select(pid, sbp_v1:dbp_v6) %>% 
  pivot_longer(sbp_v1:dbp_v6) %>% 
  na.omit() %>% 
  separate(name, into = c("var", "visit")) %>% 
  pivot_wider(names_from = "var", values_from = value) %>% 
  mutate(bp_control = ifelse(sbp<120 & dbp<90, "yes", "no")) %>% 
  arrange(pid, visit)

head(bp)

