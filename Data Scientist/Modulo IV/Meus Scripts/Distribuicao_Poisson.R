#Distribuicao de Poisson

#para probabilidade exata => dpois(x, lambda)
#para probabilidade exata => ppois(x, lambda, lower.tail=F)

#media de acidentes eh 2 qual a probabilidade de acontecerem 3

dpois(12, 10)

#media de acidentes eh 2 qual a probabilidade de ocorrerem 3 ou menos

ppois(3, 2, lower.tail = T)

#media de acidentes eh 2 qual a probabilidade de ocorrerem 3 ou mais

ppois(3, 2, lower.tail = F)

