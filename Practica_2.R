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
