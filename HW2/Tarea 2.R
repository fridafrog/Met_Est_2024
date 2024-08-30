setwd("C:/Repositorios/Met_Est_2024")
conjunto<-read.csv("Base de datos.csv",header=TRUE)
head(conjunto)

H.media <- which(conjunto$Altura<=mean(conjunto$Altura))

H.16 <- which(conjunto$Altura<16.5)

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
     col="lightblue", 
     border="black")

hist(H.media,
     main="Datos iguales o menores a la media de altura",
    col="orchid",
     border="black")

hist(H.16,
     main="Datos menos a 16.5m", 
     col="maroon4",
     border="black"
     )

hist(conjunto$Vecinos,
     main="Vecinos", 
     col="blue4", 
     border="black")

hist(Vecinos_3,
     main="Número de vecinos iguales o menores a 3", 
     col="bisque3", 
     border="black")

hist(Vecinos_4,
     main="Número de vecinos mayores a 4", 
     col="beige", 
     border="black")

hist(conjunto$Diametro,
     main="Diámetro", 
     col="azure3", 
     border="black")

hist(DBH_media,
     main="Diámetros menores a la media", 
     col="aquamarine4", 
     border="black")

hist(DBH_16,
     main="Diámetros mayores a 16",
     col="darkorange3",
     border="black")


mean(conjunto$Altura)
sd(conjunto$Altura)

mean(H.media)
sd(H.media)

mean(H.16)
sd(H.16)

mean(conjunto$vecinos)
sd(conjunto$vecinos)

mean(Vecinos_3)
sd(Vecinos_3)

mean(Vecinos_4)
sd(Vecinos_4)

mean(conjunto$Diametro)
sd(conjunto$Diametro)

mean(DBH_media)
sd(DBH_media)

mean(DBH_16)
sd(DBH_16)
