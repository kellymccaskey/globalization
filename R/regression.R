# clear working directory
rm(list = ls())

# set working directory
setwd("~/Dropbox/projects/globalization/")

# load packages
# library(foreign)
# library(dplyr)

# load data
d <- read.dta("data/bjps_powell_tucker_dataset.dta")
d <- read.csv("data/merged-2.csv")

# run model
# m <- lm(TotalVol ~ EL.tradeopen + cap.shr.houle + lab.shr.arjun, d)
# summary(m)

# m <- lm(TotalVol ~ log(labor.endow)*world.trade.gdp.interp + log(labor.endow) + world.trade.gdp.interp, d)
# summary(m)

m <- lm(TotalVol ~ log(labor.endow) + log(labor.endow)*GDPChangeE1E2 + world.trade.gdp.interp + EL.tradeopen + gini.sidd3 + pr + Enp1 + GDPChangeE1E2 + mixsys, d)
summary(m)

m2 <- lm(TotalVol ~ log(labor.endow) + log(labor.endow)*CapChangeE1E2 + world.trade.gdp.interp + EL.tradeopen + gini.sidd3 + pr + Enp1 + CapChangeE1E2 + mixsys, d)
summary(m2)
