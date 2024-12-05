#muestras dependientes
#mismos individuos medidos en dos tiempos diferentes
#(2012 vs 2013) producción de semillas

tiempo <- read.csv("mainproduccion.csv", header = T)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo,
        col = "orchid4",
        xlab= "Año",
        ylab = "Semillas (kg)")
abline(h = 10.1, col = "red", lwd = 3, lty = "dotdash")
abline(h = 10.9, col = "green", lwd = 3, lty = "dotdash")

#determinar las medias de KG en ambos años
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)

# quiero saber si hay diferencias solamente 
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T)

# saber si 2013 es mayor que 2012 
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T,
       alternative = "less")








