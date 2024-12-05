#Importar datos de GitHub
url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"
madera <- read.csv(url,header=T)
madera
#Comparación ~
boxplot(madera$Peso_g ~ madera$Especie)

#Normalidad
shapiro.test(madera$Peso_g)
#homogeneidad varianza
bartlett.test(madera$Peso_g ~ madera$Especie)
#Homogeneidad
madera$peso_t <- log(madera$Peso_g+0.5) 

boxplot(madera$peso_t ~ madera$Especie,
        col = "orchid4")

t.test(madera$Peso_g ~ madera$Especie, var.equal = T)

boxplot(madera$Lado_C ~ madera$Especie,
        col = "orchid")

which(madera$Lado_C > 20.5)
madera[c(23,30),]

shapiro.test(madera$Lado_C)
bartlett.test(madera$Lado_C ~ madera$Especie)

