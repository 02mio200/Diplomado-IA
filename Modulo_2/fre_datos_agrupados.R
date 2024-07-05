
# tabla de frecuencia para datos agrupados

Durazno$Perimetro
table(Durazno$Perimetro)


intervalos <- 3
# obtenido el valor maximo y minimo
rango <- max(Durazno$Perimetro) - min(Durazno$Perimetro)
#calculado amplitud
amplitud <- rango/intervalos

#generar intervalos
minimo <- min(Durazno$Perimetro)
maximo <- max(Durazno$Perimetro)

limites <- minimo + amplitud * c(0:intervalos)
#aqui esta abierto el limite intferior 
clases <- cut(Durazno$Perimetro,breaks = limites ,)
#aqui se incluye al valor menor 
clases <- cut(Durazno$Perimetro,breaks = limites ,include.lowest = T)
#--------------

#sacando frecuencia absoluta
table(clases)
#frecuencia absoluta acumulada 
cumsum(table(clases))

#frecuancia relativa absoluta
prop.table(table(clases))*100
#frecuencia relativa acomulada
cumsum(prop.table(table(clases)))*100

#--------------------------------------- 
#graficos histograma 
#breaks para poner los limites
#freq = F hace el histograma de la frecuencia realtiva
hist(Durazno$Perimetro, 
     breaks = limites,
     freq = F,
     include.lowest = T,
     main = "HISTOGRAMA DEL PERIMETRO",
     xlab = "PERIMETRO",
     ylab = "FRECUENCIA")


log10(31)*3.322+1



