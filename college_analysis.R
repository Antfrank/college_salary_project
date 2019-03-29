install.packages(tidyverse)
install.packages("janitor")
library(janitor)
library(tidyverse)
library(readr)
degrees_that_pay_back <- read_csv("code/raw_code/degrees-that-pay-back.csv") %>%
  clean_names()

salaries_by_college_type <- read_csv("code/raw_code/salaries-by-college-type.csv") %>%
  clean_names()

salaries_by_region <- read_csv("code/raw_code/salaries-by-region.csv") %>%
  clean_names()


p1 <- ggplot(data= degrees_that_pay_back, aes(x= reorder(undergraduate_major, -starting_median_salary), y=starting_median_salary)) +
  geom_bar(stat="identity", fill = "steelblue") +
  coord_flip()

p2 = ggplot(data= degrees_that_pay_back, aes(x=reorder(undergraduate_major, -mid_career_median_salary), y=mid_career_median_salary)) +
  geom_bar(stat="identity", fill = "red") +
  coord_flip()

install.packages("gridExtra")
library(gridExtra)
grid.arrange(p1,p2, ncol = 2)

library(scales)



 





