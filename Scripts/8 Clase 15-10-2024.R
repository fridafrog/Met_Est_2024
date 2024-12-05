Pseudo <- read.csv("C:/Repositorios/Met_Est_2024/Clase/pseodostrobus.2.CSV", header = TRUE)
head(Pseudo)


t.test(Pseudo$Grupo.1, Pseudo$Grupo.2)
t.test(Pseudo$Grupo.1)
t.test(Pseudo$Grupo.2)

mean(Pseudo$Grupo.1)
mean(Pseudo$Grupo.2)

boxplot(Pseudo, xlab = "Grupo.1", ylab = "Grupo.2", col = "orchid4")

shapiro.test(Pseudo$Grupo.1)
bartlett.test(Pseudo$Grupo.1)
t.test(Pseudo$Grupo.1 ~ Pseudo$Grupo.2, var.equal = T, alternative = "greater")


suelos <- read.csv("C:/Repositorios/Met_Est_2024/Clase/Suelo.2.csv", header = TRUE)
head(suelos)

mean(suelos$Muestra.1)
mean(suelos$Muestra.2)

boxplot(suelos, xlab = "Muestra.1", ylab = "Muestra.2")

t.test(suelos$Muestra.1, suelos$Muestra.2)