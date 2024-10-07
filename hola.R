grupo <- gl(2,12, labels = c("fotografía", "araña"))
niv_ans <- c(30,35,45,40,50,35,55,25,30,45,40,50,40,35,50,55,65,55,50,35,30,50,60,39)
datos <- data.frame (grupo,niv_ans)
head(datos)
print(grupo)

#hipótesis nula = no hay diferencia en los niveles de ansiedad
#hipótesis alternativa = 
# - diferencias fotografía y araña 
# - la ansiedad de las arañas es mayor que ansiedad foto
# - nivel de ansiedad de araña es menor que ansiedad de la foto

tapply (datos$niv_ans, datos$grupo, mean)
plot(density(datos$niv_ans))

hist(datos$niv_ans)
boxplot(datos$niv_ans ~ datos$grupo)

t.test(datos$niv_ans ~ datos$grupo, var.equal = T)

t.test(datos$niv_ans ~ datos$grupo, var.equal = T, alternative = "greater")

t.test(datos$niv_ans ~ datos$grupo, var.equal = T, alternative = "less")

# hipotestis nula = media = 80
# hipotesis alternativa = media < 80

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
           82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95, 73.59, 
           77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23, 79.89, 77.14,
           69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99, 81.94, 80.41, 77.7)

mean (costal)

plot(density(costal),
     main = "densidad producto costal",
     xlab = "peso (kg) costales",
     ylab = "densidad",
     col = "orchid4",
     lwd = 4)
abline(v=mean(costal), col = "indianred", lwd = 4, lty = 2)
abline(v = 80, col = "blue4", lwd = 4, lty = 2)

t.test(costal, mu = 80, alternative = "less")
80 - 78.93341 
