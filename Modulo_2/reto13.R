

#----------Reto 13--------





# para seleccionar cuales variables son mejores para el modelo

modelo <- lm(charges ~ ., insurance)

# Metodo hacia adelante
modforward <- stepAIC(modelo, direction = "forward", trace = T)

AIC(modforward)
summary(modforward)



# Metodo hacia atras
modbackward <- stepAIC(modelo, direction = "backward", trace = T)

AIC(modbackward)
summary(modbackward)

#Metodo por pasos
modstep <- stepAIC(modelo, direction = "both", trace = T)

AIC(modstep)
summary(modstep)

#para ver cual modelo es mejor

AIC(modforward)
AIC(modbackward)
AIC(modstep)