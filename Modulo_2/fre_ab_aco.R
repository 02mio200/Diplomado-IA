

MaizOloton$Longitud


#Frecuencia absoluta
table(MaizOloton$Longitud)


# frecueencia absoluta acomulada 

cumsum(table(MaizOloton$Longitud))

# Frecuencia relativa 

prop.table(table(MaizOloton$Longitud))*100

# Frecuencia relativa acomulada
cumsum(prop.table(table(MaizOloton$Longitud)))*100

#----------------------------------
#tabla de frecuencia de dos vias

table(MaizOloton$Longitud,MaizOloton$Ancho)

prop.table(table(MaizOloton$Longitud,MaizOloton$Ancho))*100

#---------------------------
# Reto 4

data("mtcars")
#odenar de menor a mayor , T - F
sort(mtcars$gear,decreasing = F)



