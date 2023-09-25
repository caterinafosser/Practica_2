##Parcialito - Practicas 1 y 2
rm(list=ls()) #borro el environment
#setwd("/home/clinux01/Escritorio/Labo_Cate/Practica_2") #seteo la direccion de trabajo
repeat{
  dia<-as.numeric(readline("Ingrese un dia de agosto (1 a 31):"))  #pido dia x pantalla
  if (is.na(dia)|(dia<1)|(dia>31)){  #chequeo q este entre los valores correctos y que sea un numero
    cat("Por favor ingrese un numero valido")
  }else {
    break
  }
}
dias_agosto<-as.numeric(1:31) 
t_sumadas<-0 #voy a ir guardando los valores para sacar t media
j=1 #contador
while (j<=length(dias_agosto)){
  repeat{
  t_dia<-as.numeric(readline(paste("Ingrese la temperatura (en °C) del dia",j,"de Agosto de 2023:")))
  if (is.na(t_dia)){  #warning si no se ingreso un numero
    print("Por favor ingrese un numero valido")
  }else{
    break
  }
  }
  if (j==dia){  #guardo la temperatura del dia aparte para usarla despues
    t_dia_deseado<-t_dia
  }
  t_sumadas<-t_sumadas+t_dia 
  j<-j+1
}

t_media<-t_sumadas/length(dias_agosto) #promedio de temperatura
if (is.na(t_media)){ #warning si hay algun valor invalido. no debería ser necesario xq en los repeats se piden datos hasta que sean válidos.
  cat("La temperatura media no se puede calcular. Ingrese los datos nuevamente")
}

#mensajes segun la condicion que se cumpla
if (t_dia_deseado<t_media){
  cat("El dia",dia,"del mes de Agosto la temperatura fue de",t_dia_deseado,"°C, es decir debajo de la media mensual")
}else if (t_dia_deseado>t_media){
  cat("El dia",dia,"del mes de Agosto la temperatura fue de",t_dia_deseado,"°C, es decir por encima de la media mensual")
}else if (t_dia_deseado==t_media){
  cat("El dia",dia,"del mes de Agosto la temperatura fue de",t_dia_deseado,"°C, es decir igual la media mensual")
}
