#Abrir o Arquivo CSV
eleicao = read.csv(file.choose(), sep = ";", header = T)

#Visualizar a relacao entre Despesas e Situacao(eleito = 1 nao eleito = 0)
plot(eleicao$DESPESAS, eleicao$SITUACAO)

#Resumo das estatisticas observadas no Data Set
summary(eleicao)

#Visualizacao da existencia ou nao de correlacao entre as despesas de uma campanha e a eleicao do candidato
cor(eleicao$DESPESAS, eleicao$SITUACAO)

modEleicao = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
summary(modEleicao)

#Retorna NULL
summary(modEleicao)$r.squared
summary(modEleicao)$adj.r.squared

plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)
points(eleicao$DESPESAS, modEleicao$fitted.values, pch = 4)


preverEleicao = read.csv(file.choose(), sep = ";", header = T)
preverEleicao$RESULT = predict(modEleicao, newdata = preverEleicao, type = "response")