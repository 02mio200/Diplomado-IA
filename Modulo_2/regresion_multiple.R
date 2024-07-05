
#---regresion lineal multiple-------

library(scatterplot3d)

summary(insectos)
cor(insectos)

#----------MODELO----------
# NumInsectos = B0 + B1 * Temperatura + B2 * Humedad + error

scatterplot3d(x = insectos$Humedad,
              y = insectos$Temperatura,
              z = insectos$N_insectos, # z = variable dependiente
              type = "h", 
              xlab = "humedad",
              ylab = "temperatura",
              zlab = "num insectos")

modinsectos = lm(N_insectos~Temperatura+Humedad, insectos)

# NumInsectos = 18.272 + 1.691 * Temperatura + 1.627 * Humedad + error

# NumInsectos = ? si la temperatura es igual a 15 y la humedad es igual a 70

presInc = 18.272 + 1.691 * 15 + 1.627 * 70

residual = 156 - presInc 

predic_ince = predict(modinsectos)

insectos$pred <- predict(modinsectos)

#--------------Agregar prediciones--------

valPred <- data.frame(Temperatura = c(16,17),
                      Humedad = c(158,159))

predict(modinsectos, valPred)


#------ graficar plano

graf3D <- scatterplot3d(x = insectos$Humedad,
              y = insectos$Temperatura,
              z = insectos$N_insectos, # z = variable dependiente
              type = "h", 
              xlab = "humedad",
              ylab = "temperatura",
              zlab = "num insectos")

graf3D$plane3d(modinsectos)

#prueba de hipotesis 
summary(modinsectos)





