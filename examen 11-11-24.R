
setwd ("C:/Repositorios/Met_Est_2024")
#Código pregunta 15 & 16
set.seed(42)
n <- 30
altura <- rnorm(n,mean=170,sd=10) #altura en cm
peso <- 0.5 * altura + rnorm (n,mean = 0, sd = 5)

cor.test(peso, altura)
t.test(peso,altura)

