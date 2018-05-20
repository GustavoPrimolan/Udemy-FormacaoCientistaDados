---------------------------------------------------------------------------------------------
<h1>Seção 03 - Estatística II</h1>

<h2>Introdução a Correlação e Regressão Linear</h2>
Variáveis
<img src="../imgs/49.PNG"/>

* Existe uma relação matemática entre estas duas variáveis?
* Se existe, como posso medir sua força?
* Poderia usar essa relação para fazer previsões?

Gráfico de Dispersão
* Representação gráfica mais tradicional para variáveis númericas e trabalhar com regrassão linear.

<img src="../imgs/50.PNG"/>

Plano Cartesiano
* Eixo Y (Vertical) - Variável de Resposta ou Dependente.
* Eixo X (Horizontal) - Variável Explanatória ou Independente.

<img src="../imgs/51.PNG"/>

Regrassão Linear
* Existe uma certa linearidade entre as variáveis Dependente e Independente.
<img src="../imgs/52.PNG"/>

<h2>Correlação [R]</h2>
* Mostra a força e a direção da relção entre variáveis.
* Pode ser um valor entre -1 e 1.
* A correção de A ~ B é a mesma que B ~ A.

Força e Direção
<img src="../imgs/53.PNG"/>
* Quanto mais próximo de 0, mais a correlação é fraca.
* Quanto mais aos extremos mais forte é a correlação.
<img src="../imgs/54.PNG"/>


Correlação Forte e Fraca
<img src="../imgs/55.PNG"/>

Correção Positiva e Negativa
<img src="../imgs/56.PNG"/>

Coeficiente de Determinação [R^2]
* Mostra o quanto o modelo consegue explicar os valores.
* Quanto maior, mais explicativo ele é.
* O restante da variabilidade está em variáveis não incluídas no modelo.
* Varias entre zero até 1 (sempre positivo).
* Calcula-se com o quadrado do coeficiente de correção [R].
<img src="../imgs/57.PNG"/>

<h2>Regressão Linear - Previsão</h2>
* Ex: Qual vai ser o custo de um cliente com 45 anos de idade?
<img src="../imgs/58.PNG"/>

Como a Linha de melhor ajuste é construída?
* Ponto de Encontro da Linha no Eixo Y (interseção):  X = 0.
* Inclinação: a cada unidade que aumenta a variável Independente (x), a variável de resposta (y) sobe o valor da inclinação.
* Planilhas e Ferramentas Estatísticas calculam estes valores automaticamente.
<img src="../imgs/59.PNG"/>

Como fazer a previsão de um valor através da regressão linear?
* Previsão = Intersecção + (inclinação * valor a prever).
* Quanto vai custar um cliente com 56 anos de idade?
	* X = -558,94 + (61,86 * 56).
	* X = 2905,22.
* Qualquer software executa o cálculo automaticamente.

<h2>Regressão Linear - Residuais</h2>
* Anteriormente foi visto a linha da intersecção para prever valores.
* Nesse exemplo abaixo, nenhumm coincide com a linha de regressão, sendo um ajuste criado a partir dos dados fornecidos.
<img src="../imgs/60.PNG"/>
* O resíduo é o valor do qual se localiza o dado até a linnha de regressão.
* Se a variável estiver acima da linha de regressão seu valor é positivo, se abaixo, seu valor é negativo e se coincidir seu valor é 0.

<h2>Regressão Linear: Outliears - Extrapolação - Correlação não é causa</h2>





