#Procura de Outliers

boxplot(iris$Sepal.Width)

#visualizacao de 3 outliers superiores e 1 outlier inferior

boxplot(iris$Sepal.Width, outline = F)
#gera o boxplot sem considerar outliers


boxplot.stats(iris$Sepal.Width)$out
#visualizacao do parametro de outliers

install.packages('outliers')
library(outliers)
outlier(iris$Sepal.Width)
#por padrao encontra apenas outliers superiores

outlier(iris$Sepal.Width, opposite = T)
#para buscar outliers inferiores