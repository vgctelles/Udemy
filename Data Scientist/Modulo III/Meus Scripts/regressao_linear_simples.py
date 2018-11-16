#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Oct 28 17:31:29 2018

@author: victortelles
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from yellowbrick.regressor import ResidualsPlot

base = pd.read_csv('Dados/cars.csv')
base = base.drop(['Unnamed: 0'], axis = 1)

#verificacao de existencia da correlacao
X = base.iloc[:, 1].values
Y = base.iloc[:, 0].values

correlacao = np.corrcoef(X,Y)

#criacao do modelo

#em Python, a variavel independente deve estar em um formato especifico. para isto eh utilizado a funcao reshape
X1 = X.reshape(-1, 1)

modelo = LinearRegression()
modelo.fit(X1, Y)

#visualizacao de informacoes
modelo.intercept_
modelo.coef_

plt.scatter(X1, Y)
plt.plot(X1, modelo.predict(X1), color = 'red')

#previsao - distancia de parada 22 pes, qual velocidade o veiculo estava

valor = modelo.intercept_ + modelo.coef_ * 22
valor2 = modelo.predict(22)

valor
valor2

#analisando os residuos do modelo de regressao
#a biblioteca sklearn so mostra o total do residual atraves do comando abaixo
modelo._residues

#para um analise mais detalhada foi necessario instalar a biblioteca yellowbrick

visualizador = ResidualsPlot(modelo)
visualizador.fit(X1,Y)
visualizador.poof() 

