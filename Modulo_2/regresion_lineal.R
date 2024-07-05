
#------------- regresio lieal 



#---------modelo: suelo ----

# sueldo = B0 + B1 + años de experiencia
# sueldohat <- 25792 + 9450 * AñosExp

#calculado el modelo
modSueldos <- lm(Sueldo ~ AñosExp, Sueldos)

#calculado para 2 años de exp
sueldohat <- 25792 + 9450 * 10.3

# claculado error
resid <- 43525 - sueldohat

ggplot(Sueldos, aes(AñosExp,Sueldo))+
  geom_point()+
    geom_point(aes(x=10.3,y=sueldohat,color = "red"))

#para hacer predicciones

Sueldos$pred <- predict(modSueldos)

Sueldos$resid <- Sueldos$Sueldo - Sueldos$resid

ggplot(Sueldos, aes(AñosExp,Sueldo))+
  geom_point()+
  geom_point(aes(y=pred,color = "red"))

# calculado otras predccioes de valores no observados 
#agredado volores
NuevoValor <- data.frame(AñosExp = c(2,2.5,3))

#calcualdo
NuevoValor$pred <- predict(modSueldos,NuevoValor)


#-------------
library(tidyverse)

Sueldos%>%
  ggplot(aes(AñosExp,Sueldo)) +
    geom_point()+
      geom_abline(intercept = 25792 , slope = 9450)

##

Sueldos%>%
  ggplot(aes(AñosExp,Sueldo)) +
  geom_point()+
  geom_smooth(method = "lm", se=F)

##
Sueldos%>%
  ggplot(aes(AñosExp,Sueldo)) +
    geom_point()+
    geom_smooth()

# para obteer pureba de ipotesis

summary(modSueldos)


