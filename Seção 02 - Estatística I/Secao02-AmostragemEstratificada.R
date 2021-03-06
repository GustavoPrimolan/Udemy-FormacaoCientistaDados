#APARECE INFORMA��ES MAIS DETALHADAS SOBRE O DATASET
summary(iris)

#INSTALA PACOTE
install.packages("sampling")

#CARREGA O PACOTE
library(sampling)

#GERA A AMOSTRA ESTRATIFICADA
#PRIMEIRO PAR�METRO = DATASET
#SEGUNDO PAR�METRO = COLUNA/S DESEJADA/S
#TERCEIRO PAR�METRO = QUANTIDADE DE CADA SPECIE
amostrairis2 = strata(iris, c("Species"), size=c(25,25,25), method="srswor")


summary(amostrairis2)

#CONJUNTO DE DADOS QUE J� VEM NO R, SBORE INFERTILIDADE
infert

summary(infert)
120/248 * 100

amostra = strata(infert, c("education"), size=c(5,48,47), method="srswor")

summary(amostra)
