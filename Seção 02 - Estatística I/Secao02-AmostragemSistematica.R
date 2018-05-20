#INSTALA O PACOTE
install.packages("TeachingSampling")
#USA A LIB
library(TeachingSampling)

#PRIMEIRO PARÂMETRO = TOTAL DA POPULAÇÃO
#SEGUNDO PARÂMETRO = É O INTERVALO DE QUAL IRÁ PULAR CADA AMOSTRA
amostra = S.SY(150, 10)

amostrairis = iris[amostra]

amostrairis
