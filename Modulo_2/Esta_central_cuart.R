


data("mtcars")

#obtener minumo, priemr cuartil, media, promedio, tercer cuarti y maximo  
summary(mtcars)


#ajustar datos
#convetir cuantitativa a cualitativa 
#cuualitatica dicotomica 
mtcars$vs <- factor(mtcars$vs,labels = c("v","s"))

mtcars$am <- factor(mtcars$am, labels = c("automatico","manual"))
#cuatitaiva ordinaria 
mtcars$cyl <- factor(mtcars$cyl, ordered = T)

mtcars$gear <- factor(mtcars$gear, ordered = T)
# sin ordered se usa para nominal
mtcars$carb <- factor(mtcars$carb, ordered = T)

#----------------------


# calculando el promedio 

mean(mtcars$mpg)

#mediana 

median(mtcars$mpg)

# moda // sort() para ordenar
sort(table(MaizOloton$Longitud))
names(sort(table(MaizOloton$Longitud), decreasing = T)[1])

#---------------dispercion-------------

# varianza

var(mtcars$mpg)

#desciacion estandar
sd(mtcars$mpg)

# coeficiente de variacion 
sd(mtcars$mpg) / mean(mtcars$mpg) *100

#-----------caurtiles-----------

quantile(mtcars$mpg)
summary(mtcars$mpg)
#deciles 
quantile(mtcars$mpg,
         probs = seq(0,by=0.1))
#---------------grafica de cajs y bigotes------------
#una grafica
boxplot(mtcars$hp, horizontal = T)
# dos categorias tomando como datos abajo caballos de fuerza
boxplot(mtcars$hp ~ mtcars$cyl, horizontal = T)

#--------------coeficiente de asimetria y curtosis--------

kurtosis(mtcars$hp)
#coeficiente de asimetria
skewness(mtcars$mpg)

boxplot(mtcars$mpg, horizontal = T)
hist(mtcars$mpg,
     breaks = 8)

#----------------------calculo de datos con indice
# variable que quiero calcular, porque datos agrupar , operacion
tapply(mtcars$hp, mtcars$cyl, quantile)




