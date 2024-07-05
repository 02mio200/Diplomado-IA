
#ejecicio 

A <- matrix(c(2,5,0,7,3,8,3,0,1),3,3, byrow = T)
B <- matrix(c(5,4,1,8,13,0,9,10,2),3,3, byrow = T)

A+B

A%*%B

B%*%A

t(t(A))

solve(A)

