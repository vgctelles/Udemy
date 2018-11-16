#analise de variancia  
tratamento = read.csv(file.choose(), sep = ';', header = T)
boxplot(tratamento$Horas ~ tratamento$Remedio)
an = aov(Horas ~ Remedio, data = tratamento)
summary(an)

#analise de variancia 2 fatores
an2f = aov(Horas ~ Remedio * Sexo, data = tratamento)
summary(an2f)

tukey = TukeyHSD(an)
tukey