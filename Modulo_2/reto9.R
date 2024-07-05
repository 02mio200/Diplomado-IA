#------------reto 9-----------


precipitacion %>%
  ggplot(aes(Precipitacion,ppn))+
  geom_point()

cov(precipitacion$Precipitacion,precipitacion$ppn)
cor(precipitacion$Precipitacion,precipitacion$ppn)

#---------------------

cov(ventas$NumEmpleado,ventas$Ventas)
cor(ventas$NumEmpleado,ventas$Ventas)

ventas%>%
  ggplot(aes(NumEmpleado,Ventas))+
  geom_point()

#------------
as.numeric()#convierte en numetico 

cov(faithful$waiting,faithful$eruptions)
cor(faithful$eruptions,faithful$waiting)

faithful%>%
  ggplot(aes(eruptions,waiting))+
  geom_point()
