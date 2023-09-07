#Clase 7 - Integradora :)
#Ejercicio 1-------
rm(list=ls())
contrasenia<-readline("Introduzca una contraseña:")
confirmacion<-readline("Confirme su contraseña:")
while (confirmacion!=contrasenia){    #hubiera sido mas comodo usar repeat ;)
  print("Las contraseñas no coinciden. Intentelo nuevamente")
  confirmacion<-readline("Confirme su contraseña:")
}
if (confirmacion==contrasenia){
  print("Bienvenidx")
}

#Ejercicio 2-------
repeat {
  algo<-readline("Introduci una palabra:")
  if (algo=="salir"){
    break
  }
  print(algo)
}

#Ejercicio 3-----
#solucion: el readline se guarda como caracter- cuando lee la opcion no va a andar
#Ejercicio 4-----
frase<-readline("Escribi una frase:")
letra<-readline("Elegi una letra:")
frase_lista<-strsplit(frase,"")
cant<-0
for (i in 1:nchar(frase)){
  if (letra==frase_lista[[1]][i]){
    cant<-cant+1
  }
}
print(cant)


#Ejercicio 5-----
