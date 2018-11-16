#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct 12 16:53:51 2018

@author: victortelles
"""

import numpy as np
from scipy import stats

jogadores = [40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000]

np.mean(jogadores)

np.median(jogadores)

quartis = np.quantile(jogadores, [0, 0.25, 0.5, 0.75, 1.0])

np.std(jogadores) #calcula com base na formula de Populacao

np.std(jogadores, ddof = 1) #calcula com base na formula de Amostra

stats.describe(jogadores)