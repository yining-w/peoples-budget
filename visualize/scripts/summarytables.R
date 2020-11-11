library(formattable)
library(kableExtra)
library(tidyverse)
library(magick)
webshot::install_phantomjs()
budget <- read.csv("online_budgetallocations.csv")
comm <- read.csv("Peoples_Budget_user_summary_COMMUNITY_AREA.csv")
geo <- read.csv("summary_geo.csv")
ward <- read.csv("Peoples_Budget_user_summary_WARD.csv")
race <- read.csv("Peoples_Budget_user_summary_RACE.csv")

colnames(budget) = c("Total", "Carceral", "Community", "Education", "Health", "Housing", "Infrastructure")
kbl(budget) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) %>% 
  save_kable("budget.pdf")


comm = comm %>% mutate(proportion = proportion*100)
colnames(comm) = c("Community Area", "Count", "% of Respondents")
kbl(comm) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) %>%
  save_kable("comm_responses.pdf")

ward = ward %>% mutate(proportion = proportion*100)
colnames(ward) = c("Ward", "Count", "% of Respondents")
kbl(ward) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))  %>%
  save_kable("ward_responses.pdf")

geo = geo %>% mutate(proportion = proportion*100)
colnames(geo) = c("Geographic Side", "Count", "% of Respondents")
kbl(geo) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) %>%
  save_kable("geo_responses.pdf")


race = race %>% mutate(proportion = proportion*100)
colnames(race) = c("Race", "Count", "% of Respondents")
kbl(race) %>%
  kable_styling(bootstrap_options = c("striped", "hover")) %>%
  save_kable("race_responses.pdf")

