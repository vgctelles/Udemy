#Questao 6
vE1 = c(15, 18, 20, 25, 30, 44)
vR = c(240,255,270,283,300,310)

cor(vE1, vR)

#Questao 7
cor(women$height, women$weight)

mrlWomen = lm(height ~ weight, data = women)
predict(mrlWomen, data.frame(weight = 30))

mrlWomen2 = lm(weight ~ height, data = women)
predict(mrlWomen2, data.frame(height = 70))
