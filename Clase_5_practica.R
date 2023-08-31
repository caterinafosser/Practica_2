#If y else---------
valor<-readline("Ingrese un numero entero:")
print(class(valor))
if (valor >=0){
  raiz_cuadrada<-sqrt(as.numeric(valor))
} else{
print("ingrese un numero mayor o igual a 0")
}
print(raiz_cuadrada)


#And &//or|----------
x<-1
y<-3
if((x>0)|(y>0)){
  print("Ambos son positivos")
}

#Else if--------
nota<-readline("Ingresa la nota de lx estudiante:")
nota<-as.numeric(nota)
if ((nota>=4)&(nota<=10)){
  print(paste("El parcial esta aprobado con",nota,"¡Felicitaciones!"))
} else if ((nota>0)&(nota<4)){
    print(paste("El parcial esta desaprobado con",nota,":( volvelo a intentar"))
} else{
  print ("Numero no valido")
}

#Ejercicio----
Tmax<-as.numeric(readline("Ingrese la temperatura máxima registrada (en °C):"))
Tmin<-as.numeric(readline("Ingrese la temperatura mínima registrada (en °C):"))
if (Tmax>Tmin){
  print(paste("La amplitud diara fue de",Tmax-Tmin,"°C"))
}else if (Tmax<Tmin){
  print("Tmax menor a Tmin, verificar los datos")
}else if (Tmax==Tmin){
  print("Tmax es igual a Tmin, verificar los datos")
}
