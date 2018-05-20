---------------------------------------------------------------------------------------------
<h1>Se��o 03 - Estat�stica II</h1>

<h2>Introdu��o a Correla��o e Regress�o Linear</h2>
Vari�veis
<img src="../imgs/49.PNG"/>

* Existe uma rela��o matem�tica entre estas duas vari�veis?
* Se existe, como posso medir sua for�a?
* Poderia usar essa rela��o para fazer previs�es?

Gr�fico de Dispers�o
* Representa��o gr�fica mais tradicional para vari�veis n�mericas e trabalhar com regrass�o linear.

<img src="../imgs/50.PNG"/>

Plano Cartesiano
* Eixo Y (Vertical) - Vari�vel de Resposta ou Dependente.
* Eixo X (Horizontal) - Vari�vel Explanat�ria ou Independente.

<img src="../imgs/51.PNG"/>

Regrass�o Linear
* Existe uma certa linearidade entre as vari�veis Dependente e Independente.
<img src="../imgs/52.PNG"/>

<h2>Correla��o [R]</h2>
* Mostra a for�a e a dire��o da rel��o entre vari�veis.
* Pode ser um valor entre -1 e 1.
* A corre��o de A ~ B � a mesma que B ~ A.

For�a e Dire��o
<img src="../imgs/53.PNG"/>
* Quanto mais pr�ximo de 0, mais a correla��o � fraca.
* Quanto mais aos extremos mais forte � a correla��o.
<img src="../imgs/54.PNG"/>


Correla��o Forte e Fraca
<img src="../imgs/55.PNG"/>

Corre��o Positiva e Negativa
<img src="../imgs/56.PNG"/>

Coeficiente de Determina��o [R^2]
* Mostra o quanto o modelo consegue explicar os valores.
* Quanto maior, mais explicativo ele �.
* O restante da variabilidade est� em vari�veis n�o inclu�das no modelo.
* Varias entre zero at� 1 (sempre positivo).
* Calcula-se com o quadrado do coeficiente de corre��o [R].
<img src="../imgs/57.PNG"/>

<h2>Regress�o Linear - Previs�o</h2>
* Ex: Qual vai ser o custo de um cliente com 45 anos de idade?
<img src="../imgs/58.PNG"/>

Como a Linha de melhor ajuste � constru�da?
* Ponto de Encontro da Linha no Eixo Y (interse��o):  X = 0.
* Inclina��o: a cada unidade que aumenta a vari�vel Independente (x), a vari�vel de resposta (y) sobe o valor da inclina��o.
* Planilhas e Ferramentas Estat�sticas calculam estes valores automaticamente.
<img src="../imgs/59.PNG"/>

Como fazer a previs�o de um valor atrav�s da regress�o linear?
* Previs�o = Intersec��o + (inclina��o * valor a prever).
* Quanto vai custar um cliente com 56 anos de idade?
	* X = -558,94 + (61,86 * 56).
	* X = 2905,22.
* Qualquer software executa o c�lculo automaticamente.

<h2>Regress�o Linear - Residuais</h2>
* Anteriormente foi visto a linha da intersec��o para prever valores.
* Nesse exemplo abaixo, nenhumm coincide com a linha de regress�o, sendo um ajuste criado a partir dos dados fornecidos.
<img src="../imgs/60.PNG"/>
* O res�duo � o valor do qual se localiza o dado at� a linnha de regress�o.
* Se a vari�vel estiver acima da linha de regress�o seu valor � positivo, se abaixo, seu valor � negativo e se coincidir seu valor � 0.

<h2>Regress�o Linear: Outliears - Extrapola��o - Correla��o n�o � causa</h2>





