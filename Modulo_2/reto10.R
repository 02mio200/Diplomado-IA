


precipitacion %>%
  ggplot(aes(Precipitacion,ppn))+
  geom_point()

#---------modelo: suelo ----
# ppn = B0 + B1 + precipitacion
# ppnhat <- -29.37 + 0.59 * Precipitacion
#calculado el modelo
ModPpn<- lm(ppn ~ Precipitacion, precipitacion)

# calcualdo para 400 de precipitacion
ppnhat <- -29.37 + 0.59 * 300

recid <- 206.63 - ppnhat

precipitacion$pred <- predict(ModPpn)

summary(ModPpn)

precipitacion%>%
  ggplot(aes(Precipitacion,ppn)) +
  geom_point()+
  geom_abline(intercept = -29.37 , slope = 0.59,color = "blue")
#-----------------


ventas %>%
  ggplot(aes(NumEmpleado,Ventas))+
  geom_point()

#---------modelo: suelo ----
# ppn = B0 + B1 + precipitacion
# ppnhat <- -29.37 + 0.59 * Precipitacion
#calculado el modelo
ModVentas<- lm(Ventas ~ NumEmpleado, ventas)

ventas$pred <- predict(ModVentas)

# calcualdo para 400 de precipitacion
ppnhat <- -0.5894 + 0.4259 * 20

recid <- # - ppnhat

summary(ModVentas)

ventas%>%
  ggplot(aes(NumEmpleado,Ventas)) +
  geom_point()+
  geom_abline(intercept = -0.5894 , slope = 0.4159,color = "blue")

##

precipitacion%>%
  ggplot(aes(Precipitacion,ppn)) +
  geom_point()+
  geom_smooth(method = "lm", se=F)
