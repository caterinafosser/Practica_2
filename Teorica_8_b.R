#################
##################################################################
# # Laboratorio de Procesamiento de Informaci�n Meteorol�gica/Oceanogr�fica

# 2� cuatrimestre 2023
##################################################################

# Clase_Array_2 alumnos
##############################


matrix(8,ncol=2,nrow=4)
matrix(NA,ncol=2,nrow=4)
matrix(Inf,ncol=2,nrow=4)
matrix(NaN,ncol=2,nrow=4)

b=matrix(runif(6),nrow=3,ncol=2)
rnorm(30,mean=0,sd=1)

#############################################
J=matrix(NA,nrow=3,ncol=1) 

J[1,1]=readline('Ingrese su edad ')
J[2,1]=readline('Ingrese su peso ')
J[3,1]=readline('Ingrese su altura ')

########################################
m2 <- matrix(1:15, nrow=5, ncol= 3)
m3<-rbind(1:3,3:1,c(1,1,1),c(2,2,2),c(3,3,3))

m2 * m3

#######################################
x <- 1:4

z <- x %*% x	

drop(z) 		
y <- diag(x) 	

g <- matrix(1:12, ncol = 3, nrow = 4) 

y %*% g		
y %*% x 
x %*% g		

#######################################
A=matrix(c(1:2,3:4), ncol=2,byrow=TRUE)

det(A)		

solve(A)    	

A%*%solve(A)
#######################################

B=matrix(c(1,8,5,3,0,2,3,6,1), ncol=3,byrow=TRUE)

L=B
L[lower.tri(B)]=0  

L[lower.tri(B,diag=TRUE)]=5    
U=B
U[upper.tri(B,diag=TRUE)]=10

M=B
M[upper.tri(B,diag=TRUE)]->pp

####################################

a<-matrix(c(1,1,1,2,2,2,3,3,3,4,4,4),nrow=3,ncol=4)
mean(a)

colMeans(a,dims=1)		
rowMeans(a,dims=1)	

require(abind)
b<-matrix(c(4,4,4,5,5,5,6,6,6,7,7,7),nrow=3,ncol=4)
c<-abind(a,b,along=3)
media_1<-apply(c,c(1,3),mean) #para cada fila (dim=1) y cada tiempo promedio las columnas(2). tiene dimension (3,2), perdi la dimension de las columnas
media_2<-apply(c,c(2,3),mean)
media_3<-apply(c,c(1,2),mean) #promedio en el tiempo

desvio_1<-apply(c,c(1,3),sd)
desvio_2<-apply(c,c(2,3),sd)
desvio_3<-apply(c,c(1,2),sd)

datos<-read.table("juntas_1960-2018.txt",header=TRUE,sep="",fill=TRUE) #(o pegando el directorio y el archivo asi podria agarrar archivos de distintas carpetas)
datos[datos==-99.9]<-NA
dim(datos)
datos_peque=datos[6571:21170,]
posadas<-datos_peque[,8]
pp_x_anio<-array(posadas,dim=c(365,40))
acum_anual<-colSums(pp_x_anio,na.rm=T)
