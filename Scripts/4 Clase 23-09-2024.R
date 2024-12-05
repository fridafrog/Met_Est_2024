# Prueba de t de una muestra

semillas <- read.csv("datos_semillas.csv", header=T)
head(semillas)

mean(semillas$Peso)

#normalidad de las semillas: si
shapiro.test(semillas$Peso)

#visualización datos
boxplot(semillas$Peso,col = "orchid4")
abline(h =6.2, col="red", lwd = 3, lty = "dotdash")
abline(h=5.7,col="blue", lwd =3, lty = "dotdash")

t.test(semillas$Peso, mu = 6.2)

#media teorética 5.85g
boxplot(semillas$Peso,col = "orchid4")
abline(h =5.85, col="red", lwd = 3, lty = "dotdash")
abline(h=5.7,col="blue", lwd =3, lty = "dotdash")

#media teorética 5.78
boxplot(semillas$Peso,col = "orchid4")
abline(h =5.78, col="red", lwd = 3, lty = "dotdash")
abline(h=5.7,col="blue", lwd =3, lty = "dotdash")
t.test(semillas$Peso, mu = 5.78)
