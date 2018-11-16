#calculo da Probabilidade em uma distribuicao binomial
#jogar a moeda 5x e dar cara 3x
dbinom(3, 5, 0.5)

#passar 4 sinais de 4 tempos cada qual a probabilidade de pegar 0, 1, 2, 3, 4 verdes
dbinom(0, 4, 0.25) #p(0) = 0.3164
dbinom(1, 4, 0.25) #p(1) = 0.4219
dbinom(2, 4, 0.25) #p(2) = 0.2109
dbinom(3, 4, 0.25) #p(3) = 0.0469
dbinom(4, 4, 0.25) #p(4) = 0.0039

pbinom(1, 4, 0.25) #Probabilidade cumulativa (at?? 1 sinal verde p(0) +p(1))

#passar 4 sinais de 2 tempos cada qual a probabilidade de pegar 0, 1, 2, 3, 4 verdes
dbinom(0, 4, 0.5) #p(0) = 0.0625
dbinom(1, 4, 0.5) #p(1) = 0.2500
dbinom(2, 4, 0.5) #p(2) = 0.3750
dbinom(3, 4, 0.5) #p(3) = 0.2500
dbinom(4, 4, 0.5) #p(4) = 0.0625

 
dbinom(7, 12, 0.25) #p(7) = 0.0115 = 1.15%





