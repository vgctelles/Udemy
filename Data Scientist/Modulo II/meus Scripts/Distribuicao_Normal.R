#Media = 8 DP = 2. Qual a probabilidade de tirar objeto com peso < 6KG
prob0 = pnorm(6, 8, 2)

#Media = 8 DP = 2. Qual a probabilidade de tirar objeto com peso > 6KG
prob1 = 1 - pnorm(6, 8, 2)
prob12 = pnorm(6, 8, 2, FALSE)

#Media = 8 DP = 2. Qual a probabilidade de tirar objeto com peso < 6KG ou 10KG+
prob2 = pnorm(6, 8, 2) + pnorm(10, 8, 2, FALSE)

#Media = 8 DP = 2. Qual a probabilidade de tirar objeto com peso < 10KG e > 8KG
prob3 = pnorm(10,8,2) - 0.5

#geracao de dados normalmente distribuidos
normal = rnorm(100)

qqnorm(normal)
qqline(normal)

 