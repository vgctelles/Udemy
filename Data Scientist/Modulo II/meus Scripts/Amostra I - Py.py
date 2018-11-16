#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct 12 15:50:04 2018

@author: victortelles
"""

import pandas as pd
import numpy as np

base = pd.read_csv('iris.csv')

#mostra como a base esta desenhada (quantos registros e quantas colunas)
base.shape 

np.random.seed(2345) #usado para replicacao de experimentos
amostra = np.random.choice(a=[0,1], size = 150, replace = True, p = [0.5, 0.5])

len(amostra)
len(amostra [amostra==1])
len(amostra [amostra==0])

#Amostra Extratificada
import pandas as pd
from sklearn.model_selection import train_test_split

iris = pd.read_csv('iris.csv')
iris['class'].value_counts()

X, _, Y, _ = train_test_split(iris.iloc[:,0:4], iris.iloc[:,4], test_size = 0.5, stratify = iris.iloc[:,4])

Y.value_counts()

#Utilizacao na base Infert

infert = pd.read_csv('infert.csv')
infert['education'].value_counts()

num_0_5y = (12/248)*100
num_6_11y = (116/248)*100
num_12y_plus = (120/248)*100

X1, _, Y1, _ = train_test_split(infert.iloc[:,2:9], infert.iloc[:,1], test_size = 0.6, stratify = infert.iloc[:,1])
Y1.value_counts()

#Amostra Sistematizada
from math import ceil
populacao = 150
amostra = 15
k = ceil(populacao/amostra)

r = np.random.randint(low = 1, high = k+1, size = 1)

acumulador = r[0]
sorteados = []

for i in range(amostra):
    print(acumulador)
    sorteados.append(acumulador)
    acumulador += k

iris_final = iris.loc[sorteados]


