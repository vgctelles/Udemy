#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Oct 13 14:48:00 2018

@author: victortelles
"""

from scipy.stats import binom

#calculo da Probabilidade em uma distribuicao binomial
#jogar a moeda 5x e dar cara 3x

prob = binom.pmf(3, 5, 0.5)

#passar 4 sinais de 4 tempos cada qual a probabilidade de pegar 0, 1, 2, 3, 4 verdes

prob0 = binom.pmf(0, 4, 0.25)
prob1 = binom.pmf(1, 4, 0.25)
prob2 = binom.pmf(2, 4, 0.25)
prob3 = binom.pmf(3, 4, 0.25)
prob4 = binom.pmf(4, 4, 0.25)

probCum = binom.cdf(1, 4, 0.25) #Probabilidade cumulativa (até 1 sinal verde p(0) +p(1))

#passar 4 sinais de 2 tempos cada qual a probabilidade de pegar 0, 1, 2, 3, 4 verdes
prob0_2 = binom.pmf(0, 4, 0.5)
prob1_2 = binom.pmf(1, 4, 0.5)
prob2_2 = binom.pmf(2, 4, 0.5)
prob3_2 = binom.pmf(3, 4, 0.5)
prob4_2 = binom.pmf(4, 4, 0.5)

#Prova 12 Questoes - chutando todas as questoes, cada uma com 4 alternativas - qual a probabilidade de acertar 7

prob_prova = binom.pmf(7, 12, 0.25)