# data_manage code

# yes all of the below packages will be required so plz install
library(tidyverse)
library(RNHANES)
library(weights)
library(ggsci)
library(ggthemes)

# The RNHANES package enables the data starting from 1999

d99 = nhanes_load_data("DEMO", "1999-2000") %>%
    select(SEQN, cycle, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR) %>%
    transmute(SEQN=SEQN, wave=cycle, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR) %>%
    left_join(nhanes_load_data("BMX", "1999-2000"), by="SEQN") %>%
    select(SEQN, wave, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR, BMXBMI) %>%
    left_join(nhanes_load_data("WHQ", "1999-2000"), by="SEQN") %>%
    select(SEQN, wave, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR, BMXBMI, WHQ070)

# Something entirely different from what I've usually had.
# I don't know if this will go well in terms of the merging process

A = list()
b = matrix()
c = c('a','b','c')
