library("e1071")

filepath = "/Users/victortelles/Documents/Coursera/Udemy/Data Scientist/Modulo VI/Dados/"
filename = "Credit.csv"
credito = read.csv(file = paste(filepath, filename, sep = ""), sep = ",", header = TRUE)

#serao usads para treino 70% dos dados historicos
#30% serao usados para teste

amostra = sample(2, 1000, replace = TRUE, prob = c(0.7,0.3))

creditoTreino = credito[amostra == 1,]
creditoTeste = credito[amostra == 2,]

modelo = naiveBayes(class ~ ., creditoTreino)

predicao = predict(modelo, creditoTeste)

predicao

confusao = table(creditoTeste$class, predicao)

confusao

#Calculo de Metricas

taxaDeAcerto = (confusao[1]+confusao[4])/sum(confusao) # 76%

taxaDeErro = 1 - taxaDeAcerto

#Previsao de Um cliente novo (sem Class Calculada)

filename2 = "NovoCredit.csv" 
novocliente = read.csv(file = paste(filepath, filename2, sep = ""), sep = ",", header = TRUE)

predict(modelo, novocliente)


