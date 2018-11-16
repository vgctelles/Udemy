sample(2, 10, replace = T, prob=c(0.2,0.8))

#Qual a chance de Tirar 8 Caras em 10 Lancamentos de moeda nao viciada
dbinom(8, 10, 0.5)

#Qual a chance de escolher um celular que custe menos que 1500 em uma luja cujo estoque tem preco medio de 1250 e desvio padrao de 480
probCel = pnorm(1500, 1250, 480)