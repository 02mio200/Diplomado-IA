
#-------------Bondades de ajuste-------------

#para ver cual modelo es mejor

AIC(model1)
AIC(model2)
AIC(model3)


# para seleccionar cuales variables son mejores para el modelo

model3 <- lm(Sales ~ ., Carseats)

# Metodo hacia adelante
modforward <- stepAIC(model3, direction = "forward", trace = T)

AIC(modforward)
summary(modforward)



# Metodo hacia atras
modbackward <- stepAIC(model3, direction = "backward", trace = T)

AIC(modbackward)
summary(modbackward)

#Metodo por pasos
modstep <- stepAIC(model3, direction = "both", trace = T)

AIC(modstep)
summary(modstep)

#------------------para valriables cualitativa---------

HEART <- HEART %>%
  mutate(AHDN = if_else(AHD == "Yes",1,0))

mod <- lm(AHDN ~ Chol, HEART)

summary(mod)





