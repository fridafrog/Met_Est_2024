#3 tratamientos
#en este caso son no fert, fertilizante regular, fertilizante al doble
#altura, diametro, longitud de raíz
#variacione entre tratamientos
#variaciones dentro de los tratamientos
#analisis de varianza de donde viene la variación
#prueba de tukey
#Trat error: variacion dentro del tratmiento
#an.var <- aov()
#summary(an.var)
#permite descubrir si los resultados d una prueba son significativos


paraje <-read.csv ("datos.csv", header = T)
paraje$Paraje <- as.factor(paraje$Paraje)

boxplot(paraje$DAP ~ paraje$Paraje)

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

shapiro.test(paraje$DAP)
bartlett.test(paraje$DAP ~ paraje$Paraje)

par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)
9892/3
10476/116
3297/90

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
