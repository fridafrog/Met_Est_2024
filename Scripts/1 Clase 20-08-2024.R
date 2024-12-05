#Frida Sofía Oviedo Acosta
#2115365
#20/08/2024

# Problema 1 -------------------------------------------------------------------
# Ingresar en objetos la superficie reforestada por especie

Pinus <- 3140
Mezquite <- 1453
Encino <- 450
Teka <- 1200
Juniperus <- 720

superficie <- c(Pinus, Mezquite, Encino, Teka, Juniperus)
sup <- c(3140, 1453, 450, 1200, 720)

#Operaciones
#transformar ha a m2

m2 <- superficie*10000
sup*10000


barplot(superficie)
sort(superficie, de=TRUE)


nombre <- c("Pinus","Mezquite","Teka", "Juniperus", "Encino")


      
barplot(sort(superficie, decreasing=TRUE),
        ylim=c(0,3500),
        col = "purple",
        names.arg = nombre,
        xlab = "Especies",
        ylab = "Superficie (ha)",
        main = "Reportes CONAFOR")

median(sup)




