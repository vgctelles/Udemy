#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Nov  3 17:56:33 2018

@author: victortelles
"""

import matplotlib.pyplot as plt
import pandas as pd
from pyod.models.knn import KNN

iris = pd.read_csv('Dados/iris.csv')

plt.boxplot(iris.iloc[:,1])

plt.boxplot(iris.iloc[:,1], showfliers = False)
#Remover os Outliers da visualizacao do Boxplot

outliers = iris[(iris['sepal width'] > 4.0) | (iris['sepal width'] < 2.1)]
outliers
#fazendo um conjunto de dados com os outliers apos a analise visual do boxplot

sepal_width = iris.iloc[:,1]

sepal_width2 = sepal_width.values.reshape(-1,1)

detector = KNN()
detector.fit(sepal_width2)

previsoes = detector.labels_