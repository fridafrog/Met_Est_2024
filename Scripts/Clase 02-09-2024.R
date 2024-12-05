library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

conjunto_clase <- as.factor(conjunto$Clase)
conjunto_especie <- as.factor(conjunto$Especie)
summary(conjunto)

boxplot(conjunto$Altura ~ conjunto$Especie,
        col = "orchid4",
        xlab = "Especie",
        ylab = "Diámetro (cm)"
)

#Seleccionar la especie F mediante subset
SpF <- subset(conjunto,conjunto$Especie=="F")
SpF
#Seleccionar exceptuando F
SpHC <- subset(conjunto,conjunto$Especie!="F")
SpHC

tapply(conjunto$Altura, conjunto$Especie, mean)
tapply(conjunto$Diametro, conjunto$Especie, mean)

which(conjunto$Altura > 20)
#El dato se encuentra en la fila 18
conjunto[18:20,7]
conjunto[c(18,20),]
conjunto[,3]




setwd("C:/Repositorios/Met_Est_2024")
