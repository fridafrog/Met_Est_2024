#Frida Sofía Oviedo Acosta
#2115365
#IF

#Gastos totales
300 + 240 +1527 + 400 + 1500 + 1833

celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <-1833

gastos_mes_total <- c(celular + transporte + comestibles + gimnasio + alquiler + otros)
gastos_semestre <- gastos_mes_total*5
gastos_año <- gastos_mes_total*10

nombre <- c("otros","comestibles","alquiler", "gimnasio", "celular", "transporte")
gastos_mes <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot(sort(gastos_mes, decreasing=TRUE),
        names.arg = nombre ,
        ylim = c(0,2000),
        col = "orchid",
        xlab = "gastos",
        ylab = "$",
        main = "gastos del mes")

#Problema 1

#Nombre de estudiante: Cualitativa
#Fecha de nacimiento: Cuantitativa
#Edad: Cuantitativa
#Dirección de casa: Cualitativa
#Número de teléfono: Cualitativa
#Área principal de estudio: Cualitativa
#Grado de año universitario: Cualitativa
#Puntaje en la prueba de mitad de período:
#Calificación general: Cualitativa
#Tiempo para completar la prueba final de MCF 202: Cuantitativa
#Número de hermanos: Cuantitativa

#Problema 2

#Cuantitativas: Altura y Peso
#Categóricas: Sexo (mujer/hombre) y Estado Civil (soltero/casado/viudo/divorciado)

#Problema 3
#Es una variable cualitativa porque aunque tenga valores númericos, los números son etiquetas para diferentes categorías.

#Problema 4
#1: Individuos de interés: Estudiantes en universidades públicas
    #Variable: El número de horas trabajadas por semana
    #Tipo de variable: cuantitativa
#2: Individuos de interés: Estudiantes de universidad en México
    #Variable: Si el estudiante estáen una universidad pública o no
    #Tipo de varibale: Categórica
#3: Individuos de interés: Estudiantes hombres y mujeres en universidades públicas
    #variable: Puntaje del CENEVAL
    #Tipo de variable: Cuantitativa

#4: Individuos de interés: Atletas universitarios y atletas no universitarios
    #Variable: Si reciben asesoramiento acádemico
    #Tipo de variable: Categórica

#5: variables cuantitativas, como las horas trabajadas por semana y los puntajes del CENEVAL, porque los histogramas muestran la distribución de datos cuantitativos.