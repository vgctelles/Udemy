 library(randomForest)
 
 filepath = "/Users/victortelles/Documents/Coursera/Udemy/Data Scientist/Modulo VI/Dados/"
 filename = "Credit.csv"
 credito = read.csv(file = paste(filepath, filename, sep = ""), sep = ",", header = TRUE)
 
 amostra = sample(2, 1000, replace = TRUE, prob = c(0.7,0.3))
 
 creditoTreino = credito[amostra == 1,]
 creditoTeste = credito[amostra == 2,]
 
 modelFloresta = randomForest(class ~ ., data = creditoTreino, ntree = 100, importance = TRUE)
 
 varImpPlot(modelFloresta)
 
 previsaoFloresta = predict(modelFloresta, creditoTeste)
 
 confusaoFloresta = table(previsaoFloresta, creditoTeste$class)
 
 confusaoFloresta
 
 taxaDeAcerto = (confusaoFloresta[1]+confusaoFloresta[4])/sum(confusaoFloresta) # 79%
 taxaDeAcerto