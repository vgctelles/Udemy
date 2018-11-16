#Buscar a Correlacao entre as variaveis do dataset mtcars

cor(mtcars)

#         mpg        cyl       disp         hp
#mpg   1.0000000 -0.8521620 -0.8475514 -0.7761684
#cyl  -0.8521620  1.0000000  0.9020329  0.8324475
#disp -0.8475514  0.9020329  1.0000000  0.7909486
#hp   -0.7761684  0.8324475  0.7909486  1.0000000

#MPG sera a variavel de resposta. Inicialmente usarei DISP como variavel explanatoria

modelo = lm(mpg ~ disp, data = mtcars)
summary(modelo)

#Retorna o R Quadrado
summary(modelo)$r.squared 

#Retorna o R Ajustado
summary(modelo)$adj.r.squared

#Geracao do Grafico de dispersao dos dados do modelo e da linha e melhor ajuste
plot(mpg ~ disp, data = mtcars)
abline(modelo)
predict(modelo, data.frame(disp=200))

#Adicao de Mais variaveis explanatorias para explicacao do consumo MPG
modelo = lm(mpg ~ disp+hp+cyl+wt, data = mtcars)
summary(modelo)$r.squared
summary(modelo)$adj.r.squared
summary(modelo)

predict(modelo, data.frame(disp=200, hp=100, cyl=4))

teste <- mtcars
cor.test(mtcars$mpg, mtcars$qsec)


