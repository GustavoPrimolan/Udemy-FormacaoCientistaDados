jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)

#MÉDIA DO SALÁRIO DOS JOGADORES
mean(jogadores)

#MEDIANA
median(jogadores)

#QUARTIS
quartis = quantile(jogadores)

quartis
quartis[4]

#DESVIO PADRÃO (STANDARD DEVIATION)
sd(jogadores)

summary(jogadores)


