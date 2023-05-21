data = read.csv('~/github/med-article/data/data_clean.csv')

# library(tidyverse)
library(caret)
library(DAAG)

# PRIMER MODELO
model <- glm(extracted ~ gland + size + retrocaruncular + hilio, 
             data = data, family = binomial)

summary(model)

plot(model, which = 4, id.n = 3)
vif(model)

# SEGUNDO MODELO
model <- glm(preserved ~ extracted + retrocaruncular + hilio, 
             data = data, family = binomial)
summary(model)

plot(model, which = 4, id.n = 3)
vif(model)


# TERCER MODELO
model <- glm(estenosis ~ gland + size + age + sex + n_calc + retrocaruncular + hilio, 
             data = data, family = binomial)
summary(model)

plot(model, which = 4, id.n = 3)
vif(model)


