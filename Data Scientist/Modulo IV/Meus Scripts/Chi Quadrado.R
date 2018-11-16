novela = matrix(c(19, 6, 43, 32), nrow = 2, byrow = T)
rownames(novela) = c("masculino", "feminino")
colnames(novela )= c("assiste", "nao assiste")

chisq.test(novela)

#data:  novela
#X-squared = 2.0374, df = 1, p-value = 0.1535

#H0 = Nao ha diferenca significativa alem do acaso
#alfa = 0.05

#Como p-value > alfa, nao pode ser rejeitado H0 ou seja, ambos os sexos assistem novela com a mesma frequencia

jogo = matrix(c(41, 34, 18, 7), nrow = 2, byrow = T)
rownames(jogo) = c("masculino", "feminino")
colnames(jogo)= c("Joga", "nao Joga")

chisq.test(jogo)

#data:  jogo
#X-squared = 1.6674, df = 1, p-value = 0.1966

#H0 = Nao ha diferenca significativa alem do acaso
#alfa = 0.05

#Como p-value > alfa, nao pode ser rejeitado H0 ou seja, ambos os sexos jogam com a mesma frequencia