library(formattable)
library(kableExtra)
library(tidyverse)
budget <- read.csv("online_budgetallocations.csv")
comm <- read.csv("summary_comm.csv")
geo <- read.csv("summary_geo.csv")
ward <- read.csv("summary_ward.csv")

kbl(budget) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))

comm = comm %>% mutate(commarea_prop = commarea_prop*100)
colnames(comm) = c("Community Area", "Count", "% of Respondents")
kbl(comm) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))

ward = ward %>% mutate(ward_prop = ward_prop*100)
colnames(ward) = c("Ward", "Count", "% of Respondents")
kbl(ward) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))

geo = geo %>% mutate(proportion = proportion*100)
colnames(geo) = c("Geographic Side", "Count", "% of Respondents")
kbl(geo) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))
