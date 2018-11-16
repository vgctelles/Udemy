#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Nov  3 15:39:32 2018

@author: victortelles
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from yellowbrick.regressor import ResidualsPlot
import statsmodels.formula.api as sm

base = pd.read_csv('Dados/mt_cars.csv')
base = base.drop('Unnamed: 0', axis = 1)

#MPG sera a variavel de resposta. Inicialmente usarei DISP como variavel explanatoria
#correlacao entre o consumo e as polegadas quadradas

X = base.iloc[:,2].values
Y = base.iloc[:,0].values

correlacao = np.corrcoef(X, Y)
correlacao
#ajuste para Linear Model - formato necessario exigido pela sklearn
X1 = X.reshape(-1, 1)

modelo = LinearRegression()
modelo.fit(X1, Y)
modelo.intercept_
modelo.coef_

previsoes = modelo.predict(X1)

#Investigar o R-Quadrado 
modelo.score(X1, Y)

#Investigar o R-Quadrado Ajustado
#SKLearn nao possue metodos para calculo do R-Quadrado Ajustado, é necessario importar outra biblioteca para isso statsmodels
modeloAjustado = sm.ols(formula = 'mpg ~ disp', data = base)
modeloTreinado = modeloAjustado.fit()

modeloTreinado.summary()

#visualizacao dos dados e da linha de melhor ajuste
plt.scatter(X1, Y)
plt.plot(X1, previsoes, color='red')

#previsoes
modelo.predict(200)

#Regressao Multipla - Adicionando mais variaveis ao Modelo
Xm = base.iloc[:,1:4].values
Ym = base.iloc[:,0].values

modeloMulti = LinearRegression()
modeloMulti.fit(Xm, Ym)

#Investigar o R-Quadrado 
modeloMulti.score(Xm, Ym)

#Investigar o R-Quadrado Ajustado
#SKLearn nao possue metodos para calculo do R-Quadrado Ajustado, é necessario importar outra biblioteca para isso statsmodels
modeloAjustadoMulti = sm.ols(formula = 'mpg ~ disp+cyl+hp', data = base)
modeloTreinadoMulti = modeloAjustadoMulti.fit()
modeloTreinadoMulti.summary()

novo = np.array([4, 200, 100])
novo = novo.reshape(1,-1)

modeloMulti.predict(novo)







