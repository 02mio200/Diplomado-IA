#matrices 

#byrow = TRUE (fila) si no se pone es por renglon
#               datos    c,f
x<-matrix(c(1,2,3,4,5,6),2,3, byrow = T)
#numero de elementos de la matrix
length(x)
#tipo de matris
mode(x)
#dimension de matriz
dim(x)

#regresa el elemento busacado
x[2,3]
#regresa filas y columnas
x[2,]
x[,3]
#cambiar un dato
x[2,3]<-5
#agregar columnas
x<-cbind(x,c(7,8))

x<-rbind(x,c(7,8,10,10))
