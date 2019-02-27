library(class)

amostra = sample(2, 150, replace = TRUE, prob = c(0.7, 0.3))

irisTreino = iris[amostra == 1,]
irisClassificar = iris[amostra == 2,]
 
previsaoKNN = knn(irisTreino[,1:4], irisClassificar[,1:4], irisTreino[,5], k=3)

confusaoKNN = table(irisClassificar[,5], previsaoKNN)
confusaoKNN