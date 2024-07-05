# tabla de frecuencia para datos agrupados

Durazno$Peso
table(Durazno$Peso)


intervalos <- 5
# obtenido el valor maximo y minimo
rango <- max(Durazno$Peso) - min(Durazno$Peso)
#calculado amplitud
amplitud <- rango/intervalos

#generar intervalos
minimo <- min(Durazno$Peso)
maximo <- max(Durazno$Peso)

limites <- minimo + amplitud * c(0:intervalos)
#aqui esta abierto el limite intferior 
clases <- cut(Durazno$Peso,breaks = limites ,)
#aqui se incluye al valor menor 
clases <- cut(Durazno$Peso,breaks = limites ,include.lowest = T)
#--------------

#sacando frecuencia absoluta
table(clases)
#frecuencia absoluta acumulada 
cumsum(table(clases))

#frecuancia relativa 
prop.table(table(clases))*100
#frecuencia relativa acomulada
cumsum(prop.table(table(clases)))*100


hist(Durazno$Peso, 
     breaks = limites,
     freq = F,
     include.lowest = T,
     main = "HISTOGRAMA DEL PESO",
     xlab = "PESO",
     ylab = "FRECUENCIA")

hist(Durazno$Peso, 
     breaks = limites,
     freq = T,
     include.lowest = T,
     main = "HISTOGRAMA DEL PESO",
     xlab = "PESO",
     ylab = "FRECUENCIA")

#-------------------------------

K <- 1 + log10(30)*3.322
intervalos = round(K)

#calculado amplitud
rango <- max(Invernadero$`Extremo B`) - min(Invernadero$`Extremo B`)
amplitud <- rango/intervalos

#generar intervalos
minimo <- min(Invernadero$`Extremo B`)
maximo <- max(Invernadero$`Extremo B`)
limites <- minimo + amplitud * c(0:intervalos)

#aqui esta abierto el limite intferior 
#clases <- cut(Invernadero$`Extremo B`,breaks = limites ,)
#aqui se incluye al valor menor 
clases <- cut(Invernadero$`Extremo B`,breaks = limites ,include.lowest = T)
#--------------

#sacando frecuencia absoluta
table(clases)
#frecuencia absoluta acumulada 
cumsum(table(clases))

#frecuancia relativa 
prop.table(table(clases))*100
#frecuencia relativa acomulada
cumsum(prop.table(table(clases)))*100


#graficos histograma 
#breaks para poner los limites
#freq = F hace el histograma de la frecuencia realtiva

hist(Invernadero$`Extremo B`, 
     breaks = limites,
     freq = F,
     include.lowest = T,
     main = "HISTOGRAMA DE NUMERO DE FRUTOS",
     xlab = "FRUTOS",
     ylab = "FRECUENCIA")

hist(Invernadero$`Extremo B`, 
     breaks = limites,
     freq = T,
     include.lowest = T,
     main = "HISTOGRAMA DE NUMERO DE FRUTOS",
     xlab = "FRUTOS",
     ylab = "FRECUENCIA")


#----------------

#generar intervalos

limites <- c(min(Manzanas$EjeLongitudinal),68,72,80)

#aqui esta abierto el limite intferior 
#clases <- cut(Invernadero$`Extremo B`,breaks = limites ,)
#aqui se incluye al valor menor 
clases <- cut(Manzanas$EjeLongitudinal,breaks = limites ,include.lowest = T)

#--------------

#sacando frecuencia absoluta
table(clases)
#frecuencia absoluta acumulada 
cumsum(table(clases))

#frecuancia relativa 
prop.table(table(clases))*100
#frecuencia relativa acomulada
cumsum(prop.table(table(clases)))*100




