

#-------------reto 11-------------------

#----------MODELO----------
# NumInsectos = B0 + B1 * Temperatura + B2 * Humedad + error

scatterplot3d(x = Boston$lstat,
              y = Boston$crim,
              z = Boston$medv, # z = variable dependiente
              type = "h", 
              xlab = "Estatus bajo",
              ylab = "Criminalidad ",
              zlab = "Valor vivienda")

modCrim = lm(medv~lstat+crim, Boston)

# NumInsectos = 18.272 + 1.691 * Temperatura + 1.627 * Humedad + error

# NumInsectos = ? si la temperatura es igual a 15 y la humedad es igual a 70

presInc = 18.272 + 1.691 * 15 + 1.627 * 70

residual = 156 - presInc 

predic_ince = predict(modinsectos)

insectos$pred <- predict(modinsectos)

#--------------Agregar prediciones--------

valPred <- data.frame(lstat = c(15),
                      crim = c(0.55500))

predict(modCrim, valPred)


#------ graficar plano

graf3D <- scatterplot3d(x = Boston$lstat,
                        y = Boston$crim,
                        z = Boston$medv, # z = variable dependiente
                        type = "h", 
                        xlab = "Estatus bajo",
                        ylab = "Criminalidad ",
                        zlab = "Valor vivienda")

graf3D$plane3d(modCrim)

#prueba de hipotesis 
summary(modCrim)


#--------------------------

modCrim = lm(medv~lstat+crim+zn+indus+nox+rm+age+
               dis+rad+tax+ptratio+black,Boston)
summary(modCrim)

#-------------------
library(dplyr)

BostonVarNum <- Boston %>%
  select(-chas)

ModVarNum <- lm(medv~.,BostonVarNum )

summary(ModVarNum)

