### PRACTICA 2 ###
rm(list=ls())
#Ejercicio 1----
#a
a=logical()
b=5
c=10
a=(b==c)
#b
a=TRUE
b=FALSE
is.logical(a)
(a&b)
(a|b)
(!b)
is.logical(a|b)
#Ejercicio 2: a mano :)
#Ejercicio 3----
x<-as.numeric(readline("Ingresa un numero:"))
if (x==0){
  Y=0
}else if (x>0){
  Y=5+((1+3*(x**2))**(1/2))
}else{
  Y=1-((1+5*(x**2))**(1/2))
}
print(Y)


#Ejercicio 4----
#a
if(temp<35){
  print("Temperatura por debajo de lo normal")
}else if(temp>35){
  print("Temperatura normal")
}else if(temp>37){
  print("Fiebre baja")
}else if(temp>38){
  print("Fiebre alta")
}
#correccion:
temp<-37.5
if(temp<35){
  print("Temperatura por debajo de lo normal")
}else if(temp>37&temp<38){
  print("Fiebre baja")
}else if(temp>=38){
  print("Fiebre alta")
}else {
  print("Temperatura normal")   #ahora abarca todas las posibilidades
}
#b
dias=c("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado")
nro_dia=1:7
dia<-readline("Ingrese un dia/nro de dia de la semana:")
  if (nchar(dia)==1){
     dia=as.integer(dia)
  }
  if (is.na(dia)==TRUE){
    cat("Error - Intentalo nuevamente")
  }
for (i in 1:length(dias)){
  if (tolower(dia)==tolower(dias[i])){
    msj<-paste("El numero de dia correspondiente al ingresado es",nro_dia[i],sep=" ")
    break
  }else if (dia==nro_dia[i]){
  msj<-paste("El dia de la semana correspondiente al numero ingresado es",dias[i],sep=" ")
  break
  }else {
    msj<-"Error - Intentalo nuevamente"   #me lo imprime 7 veces :(
  }
}
print(msj)

#Ejercicio 5----
#a
A=readline("Ingrese un numero entero:")
nros_a=strsplit(A,"")
for (i in 1:nchar(A)){
  if (nros_a[[1]][i]=="."){
    print("El numero ingresado no es entero.")
  }
}
B=readline("Ingrese un numero entero:")
nros_b=strsplit(B,"")
for (i in 1:nchar(B)){
  if (nros_b[[1]][i]=="."){
    print("El numero ingresado no es entero.")
  }
}
division=as.integer(A)/as.integer(B)
nros_division=strsplit(as.character(division),"")
for (i in 1:nchar(division)){
  if (nros_division[[1]][i]=="."){
    print("A no es multiplo entero de B")
  }else if (is.na(as.integer(division))==TRUE){
    print("A no es multiplo entero de B")
  }else{
    print("A es multiplo entero de B") ##me lo imprime 2 veces :///
  }
}
#b


#Ejercicio 6-----
