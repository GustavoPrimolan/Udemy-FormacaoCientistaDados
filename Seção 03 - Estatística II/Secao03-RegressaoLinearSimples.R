#cars � UM CONJUNTO DE DADOS QUE VEM NO R
#DO QUAL POSSUEM DUAS VARI�VEIS (VELICIDADE E DIST�NCIA)
cars
#MOSTRA QUANTIDADE DE DADOS E QUANTAS VARI�VEIS
dim(cars)

#CORRELA��O ENTRE AS VARI�VEIS (� FORTE)
cor(cars)

modelo = lm(speed ~ dist, data = cars)

modelo

#MOSTRA GR�FICOS RELACIONADOS AO MODELO
plot(modelo)

#CRIA O GR�FICO CARTEZIANO COM SPEED NO Y E DIST NO X
plot(speed ~ dist, data = cars)
#MOSTRA A RETA NO GR�FICO
abline(modelo)

#FAZ A PREVIS�O COM A VELOCIDADE DE 22, FAZENDO O C�LCULO NA "M�O"
modelo$coefficients[1] + modelo$coefficients[2] * 22

#FAZ A MESMA COISA QUE A LINHA DE CIMA
predict(modelo, data.frame(dist=50))

summary(modelo)

#REAJUSTES DOS RESIDUAIS
modelo$residuals

#VALORES AJUSTADOS
#S�O OS DADOS PARA FAZER O MODELO DE MELHOR AJUSTE
plot(modelo$fitted.values, cars$dist)