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

<img src="imgs/05.PNG"/>

Fun��es no R
* sample()
	- Fun��o utilizada para amostras simples.
* strata()
	- Fun��o utilizada para amostras estatificada
* S.SY()
	- Gerar amostra sistem�tica.

<h2>Amostragem - Aula em R</h2>

```r

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


AMOSTRAGEM ESTR�TIFICADA

```r

#APARECE INFORMA��ES MAIS DETALHADAS SOBRE O DATASET
summary(iris)

#INSTALA PACOTE
#install.packages("sampling")

#CARREGA O PACOTE
#library(sampling)

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

```

AMOSTRAGEM SISTEM�TICA

```r

#INSTALA O PACOTE
install.packages("TeachingSampling")
#USA A LIB
library(TeachingSampling)

#PRIMEIRO PAR�METRO = TOTAL DA POPULA��O
#SEGUNDO PAR�METRO = � O INTERVALO DE QUAL IR� PULAR CADA AMOSTRA
amostra = S.SY(150, 10)

amostrairis = iris[amostra]

amostrairis

```


<h2>Medias de Centralidade e Variabilidade</h2>

Centralidade
* M�dia.
* Moda.
* Mediana.

M�dia:

<img src="imgs/07.PNG"/>

Moda:
* Valor mais frequente

<img src="imgs/08.PNG"/>

Mediana
* Valor do meio.
* Ordena-se os valores em ordem crescente.
* Se a quantidade for par, a mediana ser� a m�dia dos valores nas posi��es n/2 e n/2+1.
* Se a quantidade for impar, a mediana ser� o valor na posi��o (n+1)/2.

<img src="imgs/09.PNG"/>

Media VS Mediana

* 10, 20, 30, 40, 10000

M�dia: 2020
Mediana: 30

- O mesmo conjunto de dados, h� uma grande diferen�a entre as duas. A mediana n�o � influ�nciada pelos valores dos quartis, igual a m�dia que �.

<h2>Medidas de Centralidade e Variabilidade - Parte II</h2>

Variabilidade
* Vari�ncia.
* Desvio Padr�o.
* Amplitude.
* N�o Centrais: Quartis.


Viari�ncia:
* Mostra a regularidade do n�mero de dados em rela��o a m�dia.
* Vari�ncia e o Desvio Padr�o se relacionam.

<img src="imgs/10.PNG"/>

Desvio Padr�o:
* Dist�ncia que os dados est�o da m�dia.
* � a mesma form�la da Vari�ncia s� que � necess�rio tirar a raiz quadrada.

<img src="imgs/11.PNG"/>

Amplitude:
* Diferen�a entre o maior e o menor.

<img src="imgs/12.PNG"/>

Medidas n�o centrais:
* Quartis
	* Q1: 25% dos menores valores - 30.000
	* Q2: 50%, igual a mediana. - 40.000
	* Q3: 75% dos maiores valores. - 250.000

Resumo do sal�rio do time de futebol.

<img src="imgs/13.PNG"/>

<img src="imgs/14.PNG"/>

Fun��es no R

```r
#CALCULAR QUARTIS
quantile()

#DESVIO PADR�O (STANDARD DESVIATION)
sd()

#VARI�NCIA
var()

#M�DIA
mean()

#MEDIANA
median()

```

Utilizando o R:
```r

jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)

#M�DIA DO SAL�RIO DOS JOGADORES
mean(jogadores)

#MEDIANA
median(jogadores)

#QUARTIS
quartis = quantile(jogadores)

quartis
quartis[4]

#DESVIO PADR�O (STANDARD DEVIATION)
sd(jogadores)

summary(jogadores)


```

<h2>Usando a Estat�stica a seu favor</h2>

<img src="imgs/15.PNG"/>

* Como a m�dia � sens�vel a outliers, voc� pode dizer que o valor do mercado � diferente dependendo se voc� pega o valor da mediana ou da m�dia.


<h2>Probabilidade</h2>

* Probabilidade (P): 0 <= P <= 1
* P = 1: Evento certo.
* P = 0: Evento imposs�vel.
* Probabilidade de 50%: 0,5 / 1/2
* Imposs�vel: -0,5 / -20% / 2/1


Conceitos
* Experimento: o que est� sendo estudado.
* Espa�o Amostral: todas as possibilidades de ocorr�ncia do evento.
* Evento: resultados ocorridos
* Exemplo:
	* Experimento: jogar moeda.
	* Espa�o Amostral: Cara ou Coroa.
	* Evento: Coroa.

* Eventos Excludentes: quando n�o podem ocorrer ao mesmo tempo.
	* Exemplo: Jogar um dado e ser 1 e par.

* Eventos N�o Excludentes: quando podem ocorrer ao mesmo tempo.
	* Exemplo: jogar um dado e ser 2 e par.

* Eventos Dependentes: A ocorr�ncia de um evento afeta o outro. Um tem que ocorrer para depois que o outro ocorra.
* Evento Independentes: A ocorr�ncia de um evento n�o afeta o outro.

Um �nico evento

			Ocorr�ncia Esperada
  P(Probabilidade)  =	-------------------
			Numero de Eventos Poss�veis

Exemplo:
Jogar uma moeda e dar cara: P = 1/2, P =0,5 ou 50%
Jogar moeda = Experimento.
Dar cara = evento.

Jogar um dado e dar 6: P = 1/6, P = 0,16 ou 16%.

Eventos Exludentes
* Soma-se as probabilidades:
	* Jogar um dado e ser 1 ou par: 1/6 + 3/6 = 4/6 = 0,66


Eventos N�o-excludentes
* Soma-se as probabilidades, diminui-se as sobreposi��es
	* Jogar um dado e ser 2 ou par: 1/6 + 3/6 - 1/6 = 3/6 = 0,5

Eventos Independentes
* Mais de um evento, como eles se relacionam?
	* Multiplica��o.

* Qual a probabilidade de jogar dois dados, e dar 1 e 6: (dois eventos independentes)
	* 1/6 * 1/6 = 1/36 = 0,027

Eventos dependentes
* Com 6 cartas na m�o (A,2,3,4,5,6), qual a probabilidade de primeiro evento tirar A e no segundo evento tirar 4?
1/6 * 1/5 = 1/30 = 0,033

Probabilidade a "longo prazo"
*Jogando um dados "justo" 6 vezes, qual a m�dia esperada?
	* 1 + 2 + 3 + 4 + 5 + 6 / 6 = 3,5

<img src="imgs/16.PNG"/>

* Como s�o poucas vezes que o dado ser� jogado, o valor da m�dia de dispersa muito, por conta disso uma simula��o jogando mais vezes � feita, n�o tendo esse valor dispersado.
* Quando temos muitos eventos (mais dados), tendemos a encontrar a probabilidade que esper�vamos. Por conta disso, a probabilidade � algo que se estuda a longo prazo.

<img src="imgs/17.PNG"/>


<h2>Entendo Distribui��o</h2>

* Usado principalmente na teoria da probabilidade.
* Comportamento de dados aleat�rios.

<img src="imgs/18.PNG"/>

N�o � o caso da imagem:
* 68% est�o a +- 1 Desvio Padr�o da M�dia.
* 30% est�o a +- 2 Desvio Padr�o da M�dia.
* Etc...


- O dado tem um determinado perfil, e tendo esse perfil � poss�vel aplicar t�cnicas est�tisticas iguais para todos os dados.

<h2>Distribui��o Binomial</h2>

O que �?
* Distribui��o de Probabilidade Discreta.
* Probabilidade da ocorr�ncia de evento, desde que sejam eventos discretos e determinados pr�-requisitos sejam atendidos.

Pr�-requisitos
* N�mero Fixo de Experimentos.
* Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso.
* A probabilidade de sucesso deve ser a mesma em cada experimento.
* Os experimentos s�o independentes.

Exemplo:
* Se eu jogar uma moeda 5 vezes. Qual a probabilidade de dar cara 3 vezes?

* N�mero Fixo de Experimentos? 5 vezes
* Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso? Cara ou coroa.
* A probabilidade de sucesso deve ser a mesma em cada experimento? Sim.
* Os experimentos s�o independentes? Sim.

Exemplo:
* Um cesto tem 10 frutas que pesam entre 3 e 5 quilos. Qual a probabilidade de eu retirar duas frutas, uma de 4 quilos e outra de 3 quilos?

* N�mero Fixo de Experimentos? Sim.
* Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso? N�o.
* A probabilidade de sucesso deve ser a mesma em cada experimento? N�o.
* Os experimentos s�o independentes? N�o.

Conven��es
* X = Total de sucesso esperado do experimento.
* p = Probabilidade de sucesso.
* n = n�mero de experimentos.

* 1-p = probabilidade de fracassos.

F�rmula para calcular a probabilidade de uma distribui��o binomial:

<img src="imgs/19.PNG"/>
