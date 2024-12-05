geyser <- read.csv("erupciones.csv")

plot(geyser$waiting, geyser$eruptions, 
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)

range(geyser$waiting)
range(geyser$eruptions)

#Correlación?
cor.test(geyser$waiting, geyser$eruptions)
#Correlación significativa

#Para cada observacion en x hay q tener una observacion en y

lm(geyser$eruptions ~ geyser$waiting)
gy.lm <- lm(geyser$eruptions~ geyser$waiting)
summary(gy.lm)

#graficar linea de tendencia central

plot(geyser$waiting, geyser$eruptions, 
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19, col = "orchid4")
abline(gy.lm, col = "red")

#agregar en la tabla el valor predicho
geyser$predicho <- gy.lm$fitted.values
geyser$prima <- -1.874016 + 0.075628 * geyser$waiting
geyser$residual <- gy.lm$residuals^2

yprima <- c(70,75,82)
-1.87 + 0.075 * yprima

setwd ("C:/Repositorios/Met_Est_2024")



 