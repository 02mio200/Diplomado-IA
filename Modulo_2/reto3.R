# operaciones arigmeticas y matrices en R

7-(-8+9)+9
1-(5*3-5)
18.99-2.5*(1.79-24.28)
(-3)^5*(2)^4*((-4)^2+(-2))
((-3)^5*(7)^2)/((-4)^2+(-2))


A<-matrix(c(2,0,1,3,0,0,5,1,1),3,3,byrow = T)
B<-matrix(c(1,0,1,1,2,1,1,1,0),3,3,byrow = T)

A+B
A-B
A%*%B
B%*%A


A<-matrix(c(0,1,1,1,0,1,1,1,0),3,3,byrow = T)
I<-matrix(c(1,0,0,0,1,0,0,0,1),3,3,byrow = T)

((A%*%A)-A)-(2*I)


