##Teorica 8 omg
#############################
z<-numeric(1500)
dim(z)<-c(3,5,100)
x<-c(1:6)
dim(x)<-c(2,3) #la maquina x default acomoda los datos columna por columna
dimnames(x)<-list(c('Fila1','Fila2'),c('Col1','Col2','Col3'))
ejema<-matrix(1:12,ncol=3,byrow=T,dimnames=list(letters[1:4],LETTERS[1:3]))
ejema[1,1]
ejema[,c(2,3)]

ejema[,c(-1,-3)]
ejema[,c(-1,-3),drop=F]


#############################
m2<-cbind(c(2,3,4.5),c(5,6,7.5)) 
m2		
m3<-rbind(c(2,3,4.5),c(5,6,7.5))
m3		
#############################
x<-matrix(1:6,2,3)
x[,2]
x[1,1:2]
x[3,] 
x[3]
ncol(x); nrow(x)
t(x)
cbind(1,x)
cbind(1:3,1:6)
apply(x,1,sum)
max(x); min(x)
dim(x)
length(x)
max(dim(x))

#############################
a=diag(3) 	#genera matriz de 3x3 con 1 en la diagonal
b=rnorm(9) 		

dim(b)=c(3,3) 		

require(abind)        #instalo/llamo el paquete
abind(a,b,along=3)->c		#concatena haciendo matriz multidim
abind(a,b,along=1)->d   #concatena por filas
abind(a,b,along=2)->e   #concatena por columnas

##################################################

c<-matrix(c(2,1,5,6,3,8,4,9,2,7,3,5),nrow=3,ncol=4)
c[order(c[,1]),]     	
c[order(c[,3]),]    		
c[order(c[,2],decreasing=TRUE),]

#################################################

diag(x) 		

l<-diag(5) 
s=diag(10,3,4) 

x=c(2,3,4,5)
y=diag(x,4,4) 

#######################
