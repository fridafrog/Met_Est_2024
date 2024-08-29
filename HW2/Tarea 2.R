conjunto <- read.csv("Base de datos.csv", header=TRUE)

H.media <- which(conjunto$Altura<=mean(conjunto$Altura))
H.media
H.16 <- which(conjunto$Altura<16.5)
H.16

Vecinos_3 <- which(conjunto$Vecinos<=3)
Vecinos_3
Vecinos_4 <- which(conjunto$Vecinos>4)
Vecinos_4

DBH_media <- which(conjunto$Diametro<mean(conjunto$Diametro))
DBH_media
DBH_16 <- which(conjunto$Diametro>16)
DBH_16

Especie <- c("Cedro Rojo", "Tsuga heterófila", "Douglasia verde")
Especie

Diametro_16.9 <- sum(conjunto$Diametro<=16.9)
Diametro_16.9

Altura_18.5 <- sum(conjunto$Altura>18.5)
Altura_18.5

hist(conjunto$Altura,
     main="Altura", 
     ylab="metros", 
     col="lightblue", 
     border="black")

hist(H.media,
     main="Datos iguales o menores a la media de altura",
     ylab= "metros",
     col="orchid",
     border="black")





