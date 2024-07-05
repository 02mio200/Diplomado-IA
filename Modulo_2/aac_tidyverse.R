#--------------------------------
# uso de la libreria (tidyverse)


library(tidyverse)
#generar 10000 datos aleatorios
x <- rnorm(10000)
#ordenarlos, hacerlos positivo y en matrix de 2
matrix(sort(abs(x)), ncol = 2)
table(Cosecha_Jal)

# lo mismo que lo anterior pero col la libreria 
# %>% tuberia, type 
xx <- x %>%
    abs %>%
      sort %>%
          matrix(,ncol=2)

#-------------------
#lo que tienes en la tabla de cosecha_jal la vas a pasar a
# filter selecciona un conjunto en especifico
library(tidyverse)

data("mtcars")
# poner una dondicion 
mtcars %>% filter(mpg < 20)

Cosecha_Jal %>% filter(Superficie == "pastos") 
#solucionar problema
library(dplyr)

#seleccionar  select solo mostrar los iguiente s datos 

mtcars %>%
  filter(mpg < 20 & vs == 0 ) %>%
    select(mpg,vs,am)
#-----------------
#  para modificar mutate modificar una variable
#filtarar datos
mtcars <- mtcars %>%
  filter(cyl == 6)%>%
    mutate(wt = (wt * 0.45))

#-----------------

  mtcars%>%
    arrange(desc(cyl),mpg) %>% 
      select(cyl,mpg)

#-----------------------------
#declarar varible con =
mtcars%>%
  summarise(promedio=mean(mpg),varianza=var(mpg),desEst=sd(mpg))

#sacando solo para los de 8 cily y trasmision manual
mtcars%>%
  filter(cyl==6 & am == 0)%>%
  summarise(promedio=mean(mpg),varianza=var(mpg),desEst=sd(mpg))
#------------------------
#agrupar 
# agrupados por variables, y sacando su promedio y desviacion estandar 
#n() cuantas observaciones tiene 
mtcars %>%
  group_by(cyl,am,vs) %>%
    summarise(mean(mpg), sd(mpg),n())
#-------------------------------------------
# datos faltantes 

alumos <- data.frame(nombre = c("juan","maria","luis","Sofia"),
                     edades = c(NA,23,26,35))

# na.rm = T remueve el valor NA

mean(alumos$edades, na.rm = T)

table(alumos$edades, useNA = c("always"))

# saber sin existen valore NA

is.na(alumos)

#---------------imputar datos NA

alumos
drop_na(alumos)
media <- mean(alumos$edades, na.rm = T)

#remplazar na con la media
alumos$edades <-replace_na(alumos$edades, media)

mean(alumos$edades)



