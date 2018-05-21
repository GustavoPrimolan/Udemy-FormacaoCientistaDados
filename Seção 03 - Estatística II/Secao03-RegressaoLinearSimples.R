#cars É UM CONJUNTO DE DADOS QUE VEM NO R
#DO QUAL POSSUEM DUAS VARIÁVEIS (VELICIDADE E DISTÂNCIA)
cars
#MOSTRA QUANTIDADE DE DADOS E QUANTAS VARIÁVEIS
dim(cars)

#CORRELAÇÃO ENTRE AS VARIÁVEIS (É FORTE)
cor(cars)

modelo = lm(speed ~ dist, data = cars)

modelo

#MOSTRA GRÁFICOS RELACIONADOS AO MODELO
plot(modelo)

#CRIA O GRÁFICO CARTEZIANO COM SPEED NO Y E DIST NO X
plot(speed ~ dist, data = cars)
#MOSTRA A RETA NO GRÁFICO
abline(modelo)

#FAZ A PREVISÃO COM A VELOCIDADE DE 22, FAZENDO O CÁLCULO NA "MÃO"
modelo$coefficients[1] + modelo$coefficients[2] * 22

#FAZ A MESMA COISA QUE A LINHA DE CIMA
predict(modelo, data.frame(dist=50))

summary(modelo)

#REAJUSTES DOS RESIDUAIS
modelo$residuals

#VALORES AJUSTADOS
#SÃO OS DADOS PARA FAZER O MODELO DE MELHOR AJUSTE
plot(modelo$fitted.values, cars$dist)