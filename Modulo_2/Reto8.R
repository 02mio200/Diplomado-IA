


# ------------------1--------------

HEART$Sex <- factor(HEART$Sex, labels = c("Femenino","Masculino"))
HEART$Fbs <- factor(HEART$Fbs, labels = c("Si","No"))
HEART$AHD <- factor(HEART$AHD, labels = c("Si","No"))
HEART$Thal <- factor(HEART$Thal)
HEART$Ca <- factor(HEART$Ca, ordered = T)
HEART$RestECG <- factor(HEART$RestECG ,labels = c("normal","anomalia","hipertrofia"))
#-----------------------2-------------

summary(HEART)


#----------------

ggplot(HEART, aes(AHD, fill = Sex))+
  geom_bar()+
    labs(title = "Efermedad cardiaca vs edad",
       subtitle = "Punto 3",
       x = "enfermedades cardıacas",
       y = "Numero de personas")

#-----------

ggplot(HEART, aes(AHD, fill = ChestPain))+
  geom_bar(position = "dodge")+
  labs(title = "Efermedad cardiaca vs tipo de dolor de pecho",
       subtitle = "Punto 4",
       x = "enfermedades cardıacas",
       y = "Numero de personas")

#---------------


ggplot(HEART, aes(MaxHR, AHD))+
  geom_boxplot(color = "blue", fill = "green")+
  labs(title = "frecuencia cardiaca máxima alcanzada vs
       pacientes que presentaron enfermedades cardiacas",
       subtitle = "Punto 5",
       x = "frecuencia ",
       y = "enfermedades cardiaca")+
  geom_jitter(color = "red", alpha = 0.3)

#---------------------------

ggplot(HEART, aes(Chol))+
  geom_histogram(aes (Chol), bins = 5, color = "red", 
                 fill = "white")+
  geom_freqpoly(aes(Chol), bins = 5, color = "blue")+
  labs(title = "histograma colesterol",
       subtitle = "Punto 7 ",
       x = "colesterol ",
       y = "mg/dL n")

#--------------

HEART %>%
  ggplot(aes(RestBP, Chol, colour = AHD))+
    geom_point()+
      facet_wrap(HEART$RestECG)



+ 
  facet_grid(Chol ~  RestBP)
      




# grafica en forma de tabla 

