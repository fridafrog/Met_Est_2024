# Prueba de t de una muestra

semillas <- read.csv("datos_semillas.csv", header=T)
head(semillas)

mean(semillas$Peso)

#normalidad de las semillas: si
shapiro.test(semillas$Peso)

#visualización datos
boxplot(semillas$Peso)

