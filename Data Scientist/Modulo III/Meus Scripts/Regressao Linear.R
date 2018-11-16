dim(cars)  #descreve o numero de linhas e numero de colunas de um dataset
head(cars) #lista as primeiras linhas e o cabecalho de um dataset 
cor(cars)  #correlacao entre as variaveis do dataset

#Criacao de Modelo

#lm => funcao para criacao de linear model, parametros sao passados sao variavel resposta, variavel explicativa, dataset
modelo = lm(speed ~ dist, data = cars)

modelo

#Utilizado para avaliacao, graficamente, dos residuos
plot(modelo)

#Plota o grafico de dispersao, e a linha de regressao linear (linha de melhor ajuste)
plot(speed ~ dist, data = cars)
abline(modelo)

#Forma-se a formula que descreve a linha de regressao linear (linha de melhor ajuste)
Formula = modelo$coefficients[1] + modelo$coefficients[2]*22
Formula 

#Resolve a formula do mesmo modo que calculado manualmente como acima
predict(modelo, data.frame(dist = 22))
predict(modelo, data.frame(dist = 50))

#mostra informacoes acerca do modelo criado, como formula usada na criacao, distribuicao dos residuos e coeficientes
summary(modelo)