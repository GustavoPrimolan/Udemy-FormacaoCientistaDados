#M�DIA = 8 DESVIO PADR�O = 2. TIRAR OBJETO < 6
#QUAL OBJETO TIRAR, M�DIA E DESIVIO PADR�O (ORDEM DOS PAR�METROS)
pnorm(6, 8, 2)

#MEDIA = 8 DESVIO PADR�O = 2 OBJETO > 6
pnorm(6, 8, 2, lower.tail=F)

#MESMO RESULTADO DO COMANDO ACIMA
1 - pnorm(6,8,2)

#MENOS 6 QUILOS OU MAIS DE 10 QUILOS
pnorm(6,8, 2) + pnorm(10, 8, 2, lower.tail=F)

#QUAL A CHANCE DE SE TIRAR UM OBJETO MENOS DE 10 KG E MAIS DE 8KG
pnorm(10, 8, 2) - pnorm(8,8,2)


#100 VARI�VEIS ALEAT�RIAS
x = rnorm(100)

qqnorm(x)

qqline(x)

shapiro.test(x)
