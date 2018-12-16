library(forecast)

AirPassengers

#funcao para inicio da serie temporal
ini_serie = start(AirPassengers)

#funcao para fim da serie temporal
fim_serie = end(AirPassengers)

#utilizacao da funcao plot que se adapta ao tipo de dados destino
plot(AirPassengers)

#visao agregada anualmente, muito mais suavizada
plot(aggregate(AirPassengers))

#visao agregada por mes
monthplot(AirPassengers)

#funcao para extracao de subconjunto da serie temporal
subst = window(AirPassengers, start = c(1960, 1), end = c(1960,12))

plot(subst)

#Decomposicao de Series Temporais (Tendencia, Sazonalidade, Efeito Aleatorio)

dec = decompose(AirPassengers)

plot(dec$seasonal)
plot(dec$trend)
plot(dec$random)

#visualizacao de todos os elementos no mesmo frame
plot(dec)

#previsao em series temporais
#passo 1: calculo de media movel
mediamovel = ma(AirPassengers, order = 12)

#uso da funcao FORECAST
previsao = forecast(mediamovel, h=7)
plot(previsao)

#uso da tecnica ARIMA
arima = auto.arima(AirPassengers)
prevarima = forecast(arima, h= 12)
plot(prevarima)

prevarima

