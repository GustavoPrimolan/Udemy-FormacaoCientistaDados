#Média = 75, AMOSTRA = 9 E DESVIO PADRÃO 10
# < 80  t = 1,5
#Segundo parâmetro = Graus de Liberdade
#8 pois amostra é 9, então n - 1
pt(1.5, 8)

pt(1.5, 8, lower.tail=F)

pt(1.5, 8) + pt(1.5, 8, lower.tail=F) # = 1
# > pt(1.5, 8)
# [1] 0.9139984
# > pt(1.4, 8, lower.tail=F)
# [1] 0.09953969
# > pt(1.5, 8, lower.tail=F)
# [1] 0.08600165
# > pt(1.5, 8) + pt(1.5, 8, lower.tail=F)
# [1] 1
