------------------------------------------------------------------------------------------------
<h1>Se��o 01 - Introdu��o</h1>

<h2>Apresenta��o</h2>

Estamos na era da informa��o e n�o adianta em nada uma grande quantidade de dados sem nenhuma utilidade.<br/>
O cientista de dados usa tecnicas para gerar valor a partir de dados.

A profiss�o de cientista de dados tem crescido cada vez mais e existem v�rias oportunidades.

O curso dar� uma caixa de ferramentas e ensinar� qual ferramenta dever� ser utilizada em certas situa��es

Pr�-requisitos:
1 - Inform�tica
2 - L�gica de Programa��o
3 - Base matem�tica.

A l�nguagem R ser� utilizada nesse curso.

<h2>Aplica��es</h2>

A imagem abaixo mostra a porcetagem do que ser� abordado nos m�dulos do curso.

<img src="imgs/porcetagem-modulos-curso.PNG" />

Est�tistica
* An�lise de dados explorat�ria.
* Identificar valores anormais.
* Produzir amotras
* Avaliar se diferen�as s�o significantes
* Avaliar custo/benef�cio entre produtos
* Previs�o de vendas.
* Resumo de dados.
* Produ��o de indicadores.
* Controle de qualidade.

<img src="imgs/02.PNG" />

S�ries temporais
* Prever a gera��o de energia em usina e�licas.
* Analisar o comportamento das a��es na bolsa de valores.
* Analisar efeitos sazonais (vendas de casacos no inverno).
* Buscar padr�es no comportamento de consumidores.
* Controle de qualidade em linhas de produ��o.

Machine Learning
* Quais clientes v�o atender quais promo��es?
* Previs�o de fraudes.
* Churn Analysis: Quais clientes tendem a abandonar a empresa?
* Qual o perfil de funcion�rios que abandonar�o o emprego e quando?

Neural Networks e Deep Learning
* Reconhecimento de imagens e padr�es.
* Reconhecimento de fala.
* Analise de comportamento em tempo real.
* Tradu��o.
* Agentes em jogos.
* Carros aut�nomos.

Grafos
* Encontrar rotas mais curtas.
* Estudo da estrutura de linguagem.
* Estudo da dissemina��o de doen�as.
* Analises de redes ele�tricas ou l�gicas, buscando pontos fracos.

Minera��o de Texto
* Classifica��o de spam.
* An�lise de sentimentos.
* Classifica��o de documentos.
* Processamento de linguagem natural.
* Preven��o de crimes cibern�ticos.

Visualiza��o, Gr�ficos e Dashboards
* An�lise de dados explorat�ria.
* Analise de Performance (KPI).
* Toda forma de produ��o final de resultados de processos de an�lise de dados.



-------------------------------------------------------------------------------------------------
<h1>Se��o 02 - Estat�stica I</h1>

<h2>Conceitos Ger�is</h2>

Estat�stica:
- Ci�ncia que usa de teorias em experimentos e observa��es para o estudo destes.
	- Descritiva: Organizar, Demonstrar e Resumir Dados.
	- Probabilidade: Analisar situa��es sujeitas ao acaso.
	- Infer�ncia: Obter respostas sobre um fen�meno com dados representativos.

Observa��o e experimento:
- Observa��o: Estudo em que os elementos analisados n�o s�o afetados (pesquisa).
	Ex: Pesquisa de inten��o de votos.
- Experimentos: Condi��es ou tratamentos s�o impostas a grupos, para avaliar o resultado.
	Ex: Interfere nas condi��es.

Vari�veis:
- Quantitativa - Num�ricas
	- Cont�nuas: Valores reais, podem assumir qualquer intervalo.
	- Discretas: N�meros fixos, inteiro e num intervalo.
- Qualitativas - Categ�ricas
	- Nominais: Categorias sem hierarquia. Ex: Estado - SP, RS, RJ
	- Ordinais: Categorias com hierarquia. Ex: Baixo, M�dio, Alto.

Estat�stica depende:
- Interpreta��o.
- Escolhas.
- Avalia��o.


<h2>Amostragem</h2>

Amostra
- Parte de uma popula��o, selecionada usando alguma t�cnica que de chances iguais a todos os elementos da popula��o de serem selecionados.
	- Popula��o � todo o conjunto de elementos que est� sendo estudado ou pesquisado.

Conceitos
	- Popula��o: Alvo de estudo.<br/>
	- Amostra: subconjunto da popula��o.<br/>
	- Censo: Pesquisa com toda a popula��o.
		- Alguns casos � utilizado.

Amostra � diferente de popula��o.

Porque Amostra?
- Pode ser caro ou imposs�vel inferir sobre toda a popula��o (censo).

� poss�vel inferir sobre uma amostra
* Uma amostra feita corretamente deve representar as mesmas caracter�sticas da popula��o de onde foi retirada.
* Se ela n�o representa a popula��o, dizemos que ela � enviesada.

Enviesamento
* Voc� subestima ou superestima o par�metro da popula��o. Resultados acima ou abaixo do esperado.
* Causas:
	* Pesquisa de pessoas pr�ximas ou de f�cil acesso.
	* Pesquisas pela Internet.
	* Sem uso de mecanismo de sele��o aleat�rio.

"Custo" da Amostra:
* Margem de Erro e N�vel de Confian�a.
* Varia��o: Amostrar diferentes podem apresentar resultados diferentes.
* Podemos "medir" a varia��o esperada.

Amostra??
* Custo/benef�cio - 
	- As vezes com uma propor��o menor, � conseguido um resultado melhor.
	- Vai necessitar de t�cnicas de amostragem mesmo se trabalhar com toda popula��o.
* Separa��o da popula��o para teste/treino/valida��o.
	- Necess�rio fazer alguma t�cnica.
* Experimentos diferentes.


Principais tipos de amostras
* Aleat�ria Simples.
* Estratificada.
* Sistem�tica.
* Por Unidade Monet�ria.


Amostras Aleat�rias Simples
* Um determinado n�mero de elementos � retirado da popula��o de forma aleat�ria.
* Todos os elementos da popula��o alvo do processo de amostragem, devem ter as mesmas chances de serem selecionados para fazer parte da amostra.

<img src="imgs/03.PNG"/>

Duas formas de se trabalhar com Amostras Aleat�rias Simples
* Com reposi��o.
	- Continua sendo parte da popula��o e poder� ser selecionado novamente.
	- Utiliza��o: Olimpiada de jogadores para fazer exame anti-dopping, se eles n�o puderem ser sorteados de novo, eles estariam livres para fazerem a utiliza��o, por conta disso eles podem ser selecionados de novo.

* Sem reposi��o.
	- N�o faz parte da popula��o e n�o poder� ser selecionado novamente.
	- Utiliza��o: Opini�o de pesquisa de votos, onde s� contar� apenas uma vez.


Amostra Estratificada
* As vezes as popula��es est�o divididas nos chamados estratos.
	- Separam grupos em categorias.


Amostra Sistem�tica
* Neste tipo de amostragem, � escolhido um elemento aleat�rio, e a partir da�, a cada N elementos um novo membro � escolhido.

<img src="imgs/04.PNG"/>

Amostragem por Unidade Monet�ria

* Total de Registros: 50
* Total de D�bitos: 108.465,00
* Calcula o intervalo da amostra:
	* Valor Total/registros = 2.169.
* Ordena por Clientes.
* Seleciona um n�mero aleat�rio entre 1 e 2.169.

<img src="05.PNG"/>

Fun��es no R
* sample()
	- Fun��o utilizada para amostras simples.
* strata()
	- Fun��o utilizada para amostras estatificada
* S.SY()
	- Gerar amostra sistem�tica.

<h2>Amostragem - Aula em R</h2>

```html

#DATASET FAMOSO QUE J� VEM COM O R
iris

dim(iris)

#PRIMEIRO PAR�METRO DO SAMPLES � ONDE ELE VAI BUSCAR
#OS DADOS PARA GERAR A AMOSTRA
#VAI GERAR AMOSTRAS APENAS DE 0 OU 1
#SEGUNDO PAR�METRO � QUANTAS AMOSTRAS EU QUERO GERAR
#QUE S�O 150
#TERCEIRO PAR�METRO SE PODE TER REPOSI��O OU N�O
#QUARTO PAR�EMTRO � A PROBABILIDADE DE GERAR CADA AMOSTRA.
#FOI FEITO A PROBABILIDADE IGUAL AOS DOIS VALORES

amostra = sample(c(0,1), 150, replace=TRUE, prob=c(0.5,0.5))

#QUANTIDADE DE AMOSTRAS COM O VALOR = 1
length(amostra[amostra==1])

#QUANTIDADE DE AMOSTRAS COM O VALOR = 0
length(amostra[amostra==0])

#SEMENTE DE ALEAT�RIEDADE QUE PODE REPETIR O EXPERIMENTO
set.seed(2345)

sample(c(100), 1)

```

<img src="imgs/06.PNG"/>