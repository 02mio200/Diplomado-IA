#

x<-matrix(c(1,2,3,4),2,2, byrow = T)
x2<-matrix(c(1,2,3,4),2,2, byrow = T)

x + x2
x - x2
x*10
# multiplicacion de matrices
x %*% x2
#traspuesta de una matrix
t(x)
#inversa de la matriz
solve(x)

