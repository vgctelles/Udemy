library(sampling)
library(TeachingSampling)

#Amostra Simples
sample()

#Amostra Extratificada
strata()

#Amostra Sistematica 
S.sy()

#Aula
amostra = sample(c(0,1), 150, replace=TRUE, prob = c(0.5, 0.5))

#Visualizacao do numero do resultado da geracao dos 150 aleatorios
length(amostra[amostra==1])
length(amostra[amostra==0])

#Geracao de Numero aleatorio replicavel
set.seed(2345)
sample(c(100),1)

#Amostra Extratificada I - Aula II
AmostraIrisStrat = strata(iris, c("Species"), size = c(25, 25, 25), method="srswor")
summary(AmostraIrisStrat)

#Amostra Extratificada II - Aula II
summary(infert)
size0_5 = round(12/248*100)
size6_11 = round(120/248*100)
size12 = round(116/248*100)

#O metodo SRSWOR eh padrao que retira uma amostra aleatoria sem reposiçao
AmostraInfertStrat = strata(infert, c("education"), size = c(size0_5, size6_11, size12), method="srswor") 
summary(AmostraInfertStrat)

#Amostra Sistematica I - Aula III
set.seed(2345)
num_ini = sample(c(10),1)

amostraSistem = S.SY(150,num_ini)

amostraIrisSist = iris[amostra,]

amostraIrisSist

