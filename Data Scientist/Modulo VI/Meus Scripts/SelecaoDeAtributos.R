library("e1071")
library("FSelector")

model = svm(class ~ ., creditoTreino)
model

predicaoSVM = predict(model, creditoTeste)

confusaoSVM = table(creditoTeste$class, predicaoSVM)

taxaDeAcerto = (confusaoSVM[1]+confusaoSVM[4])/sum(confusaoSVM) # 74.9%
taxaDeAcerto

#Selecao de Atributos

random.forest.importance(class ~ ., credito)

model = svm(class ~ checking_status+duration+credit_history+credit_amount+purpose, creditoTreino)
model

predicaoSVM = predict(model, creditoTeste)

confusaoSVM = table(creditoTeste$class, predicaoSVM)

taxaDeAcerto = (confusaoSVM[1]+confusaoSVM[4])/sum(confusaoSVM) # 74.2% #74.9%
taxaDeAcerto