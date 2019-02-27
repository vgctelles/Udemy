library(rpart)

filepath = "/Users/victortelles/Documents/Coursera/Udemy/Data Scientist/Modulo VI/Dados/"
filename = "Credit.csv"
credito = read.csv(file = paste(filepath, filename, sep = ""), sep = ",", header = TRUE)

amostra = sample(2, 1000, replace = TRUE, prob = c(0.7,0.3))

creditoTreino = credito[amostra == 1,]
creditoTeste = credito[amostra == 2,]

arvore = rpart(class ~ ., data = creditoTreino, method = "class") 

#para visualizacao da arvore
print(arvore)

plot(arvore)
text(arvore, use.n = TRUE, all = TRUE, cex = .8)

#Testando o modelo

testeArvore = predict(arvore, newdata = creditoTeste)
testeArvore

#convertendo testeArvore para fazer a matriz de confusao
base = cbind(creditoTeste, testeArvore)

base$result = ifelse(base$bad >= 0.5, "bad", "good")

confusao = table(base$class, base$result)
confusao

taxaDeAcerto = (confusao[1]+confusao[4])/sum(confusao) # 71%
taxaDeAcerto


