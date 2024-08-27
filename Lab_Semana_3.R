getwd()

setwd("C:/Repositorios/Met_Est_2024/Datos")

trees <- read.csv("DBH_1.csv", header=TRUE)
head(trees)

library(repmis)
conjunto <- source_data("https://www.dropbox.com/scl/fi/mpo1u26mb3efgv4pvfg8l/cuadro1.csv?rlkey=k0ccrhwur2uosvq9rlva29004&e=1&dl=1")
head(conjunto)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)

mean(trees$DBH)
sd(trees$DBH)

sum(trees$DBH<10)
which(trees$DBH<10)

trees.13 <- trees[!(trees$Parcela=="2"),]
trees.13

trees.1 <- subset(trees,DBH <= 10)
head(trees.1)

mean(trees$DBH)
mean(trees.1$DBH)

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep,
     xlim = c(0,20), 
     ylim = c(0,14), 
     main = "Total de horas sueño de las 39 especies", 
     xlab = "Horas sueño", 
     ylab = "Frecuencia",
     las = 1, 
     col = "#8FBC8F")

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds

barplot(feeds)
barplot(feeds[order(feeds, decreasing = FALSE)],
        horiz = TRUE,
        xlim = c(0,14), 
        main = "Frecuencias por tipo de alimentación", 
        xlab = "Número de pollos", 
        las = 1,
        col  = "#8FBC8F"
)

