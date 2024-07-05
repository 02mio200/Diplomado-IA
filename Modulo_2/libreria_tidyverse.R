

library(tidyverse)
data("mtcars")


PesoEstatura %>%
  ggplot(aes(Estatura,Peso))+
    geom_point()

cov(PesoEstatura$Estatura,PesoEstatura$Peso)

cor(PesoEstatura$Estatura,PesoEstatura$Peso)



mtcars %>%
  ggplot(aes(hp,mpg))+
  geom_point()

cov(mtcars$mpg,mtcars$hp)

cor(mtcars$mpg,mtcars$hp)


HEART %>%
  ggplot(aes(RestBP,Chol))+
  geom_point()

cov(HEART$RestBP,HEART$Chol)

cor(HEART$RestBP,HEART$Chol)
