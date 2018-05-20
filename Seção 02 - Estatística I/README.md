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

<img src="../imgs/03.PNG"/>

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

<img src="../imgs/04.PNG"/>

Amostragem por Unidade Monet�ria

* Total de Registros: 50
* Total de D�bitos: 108.465,00
* Calcula o intervalo da amostra:
	* Valor Total/registros = 2.169.
* Ordena por Clientes.
* Seleciona um n�mero aleat�rio entre 1 e 2.169.

<img src="../imgs/05.PNG"/>

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

<img src="../imgs/06.PNG"/>


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

<img src="../imgs/07.PNG"/>

Moda:
* Valor mais frequente

<img src="../imgs/08.PNG"/>

Mediana
* Valor do meio.
* Ordena-se os valores em ordem crescente.
* Se a quantidade for par, a mediana ser� a m�dia dos valores nas posi��es n/2 e n/2+1.
* Se a quantidade for impar, a mediana ser� o valor na posi��o (n+1)/2.

<img src="../imgs/09.PNG"/>

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

<img src="../imgs/10.PNG"/>

Desvio Padr�o:
* Dist�ncia que os dados est�o da m�dia.
* � a mesma form�la da Vari�ncia s� que � necess�rio tirar a raiz quadrada.

<img src="../imgs/11.PNG"/>

Amplitude:
* Diferen�a entre o maior e o menor.

<img src="../imgs/12.PNG"/>

Medidas n�o centrais:
* Quartis
	* Q1: 25% dos menores valores - 30.000
	* Q2: 50%, igual a mediana. - 40.000
	* Q3: 75% dos maiores valores. - 250.000

Resumo do sal�rio do time de futebol.

<img src="../imgs/13.PNG"/>

<img src="../imgs/14.PNG"/>

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

<img src="../imgs/15.PNG"/>

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

<img src="../imgs/16.PNG"/>

* Como s�o poucas vezes que o dado ser� jogado, o valor da m�dia de dispersa muito, por conta disso uma simula��o jogando mais vezes � feita, n�o tendo esse valor dispersado.
* Quando temos muitos eventos (mais dados), tendemos a encontrar a probabilidade que esper�vamos. Por conta disso, a probabilidade � algo que se estuda a longo prazo.

<img src="../imgs/17.PNG"/>


<h2>Entendo Distribui��o</h2>

* Usado principalmente na teoria da probabilidade.
* Comportamento de dados aleat�rios.

<img src="../imgs/18.PNG"/>

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

<img src="../imgs/19.PNG"/>

Exemplo:

* Se eu jogar uma moeda 5 vezes. Qual a probabilidade de dar cara 3 vezes?
* X = 3.
* p = 0,5.
* n = 5.

<img src="../imgs/20.PNG"/>


Exemplo: Se eu passar 4 sinais de quatro tempos cada. Qual a probabilidade de eu pegar 0, 1, 2, 3 e 4 sinais verdes?

* P(0) = Probabilidade de encontrar nenhum sinal vermelho = 0,316406.
* P(1) = Probabilidade de encontrar 1 sinal verde = 0,421875.
* P(2) = 0,210938.
* P(3) = 0,046875.
* P(4) = 0,003906.
A soma de todas as probabilidades poss�veis (estudando as probabilidades de todo o espa�o amostral) � igual a 1.

Exemplo:

Se voc� fizer a prova de um concurso com 12 quest�es. "Chutando" todas as quest�es, qual a probabilidade de acertar 7 quest�es? (4 alternativas cada quest�o).
X = 7 certos.
p = 0,25.
n = 12.

<img src="../imgs/21.PNG"/>
 

� poss�vel tanto resolver o problema atrav�s do c�lculo como na imagem acima como atrav�s de uma tabela de distribui��o binomial.

<img src="../imgs/22.PNG"/>


Distribui��o Binomial ou C�lculo "Manual"?

* Qual a probabilidae de passar em dois sinais de dois tempo e os dois estarem verdes?
* Fazendo manualmente: 1/2 * 1/2 = 0,25.
* Executando a distribui��o binomial no R.
```r
dbinom(2,2,0.5)
```
[1] 0.25

<h2>No R</h2>

```r
#SE JOGAR MOEDA 5 VEZES QUAL A PROBABILIDADE DE DAR CARA 3 VEZES
#PRIMEIRO PAR�METRO � O X
#SEGUNDO PAR�METRO � O n
#TECEIRO PAR�METRO � O p
dbinom(3, 5, 0.5)

#4 SENAIS DE 4 TEMPOS, PROBABILIDADE DE PEGAR 0, 1, 2, 3, 4 SINAIS VERDES
dbinom(0, 4, 0.25)
dbinom(1, 4, 0.25)
dbinom(2, 4, 0.25)
dbinom(3, 4, 0.25)
dbinom(4, 4, 0.25)

#CALCULA A PROBABILIDADE DE TODO O ESTAP�O AMOSTRAL
pbinom(4, 4, 0.25)

#PROVA CONCURSO DE 12 QUEST�ES. ACERTAR 7 QUEST�ES E CADA QUEST�ES TEM 4 ALTERNATIVAS
dbinom(7, 12, 0.25)
```


<h2>Distribui��o Normal</h2>

* Distribui��o Sim�trica.
* Distribui��o em que a m�dia dos dados se encontram ao centro.
* Encontrar relativamente a mesma quantidade de dados acima e abaixo do m�dia


<img src="../imgs/23.PNG"/>

Teorema Central do Limite
* Conforme o tamanho da amostra aumenta, a distribui��o das m�dias amostrais se aproxima cada vez mais da distribui��o normal.
* Independente de como os dados est�o distribu�dos, suas m�dias esta�o normalmente distribu�das.

Distribui��o Normal Padrao [Z]
* Mostra o n�mero de desvios padr�es que o valor est� acima ou abaixo da m�dia (score z ou valor z).
* M�dia Zero.
* Desvio Padr�o 1.
* Usa-se uma f�rmula para calcular a probabilidade de seus dados com rela��o a tabela Z.

<img src="../imgs/24.PNG"/>

<img src="../imgs/25.PNG"/>

Exemplo de c�lculo com distribui��o normal.
* Existe um conjunto de objetos em uma cesta, cujos pesos s�o normalmente distribu�dos com m�dia = 8 e desvio padr�o igual a 2.
* 1 - Qual a chance de se tirar um objeto pesando menos de 6 quilos?

Primeiro calcula-se o Z e depois � verificado na tabela de distribui��o normal.
<img src="../imgs/26.PNG"/>

15,8%

Outro exemplo:
* Existe um conjunto de objetos em uma cesta, cujos pesos s�o normalmente distribu�dos com m�dia = 8 e desvio padr�o igual a 2.
* 2 - Qual a chance de se tirar um objeto pesando mais de 8 quilos?
50%
<img src="../imgs/27.PNG"/>


* 3 - Qual a chance de tirar um objeto com mais de 10 quilos?
<img src="../imgs/28.PNG"/>



* 4 - Qual a chance de se tirar um objeto que tenha menos de 10 quilos e mais de 8 quilos?
<img src="../imgs/29.PNG"/>


* 5 - Qual a chance de se tirar um objeto que tenha menos de 6 quilos ou mais de 10 quilos?
<img src="../imgs/30.PNG"/>

* 6 - Qual a chance de se tirar um objeto que tenha menos de 4,3 quilos?
<img src="../imgs/31.PNG"/>


Distribui��o Normal no R
```r
#SE A DISTRIBUI��O FOR MENOR QUE A M�DIA P[X<x]
pnorm()
#SE MAIOR P[X>x] S� INSERIR O PAR�METRO lower.tail = FALSE

qnorm()

```

Como saber se a Distribui��o dos dados � Normal?
* Forma mais simples e mais r�pida � gerar um Histograma.
<img src="../imgs/32.PNG"/>


Outra forma:
* Gerar um Diagrama de Probabilidade Normal.
<img src="../imgs/33.PNG"/>

Teste de Shapiro-Wilk
* Teste de Hip�tese.
* HO = Dados est�o normalmente distribu�dos.
* Alfa = 0,05 (Normalmente utilizado).
* Valor de p <= 0,05: rejeita hip�tese nula.
* Valor de p> 0,05: N�o � poss�vel rejeitar a hip�tese nula

* p-value = 0.001722 [p <= 0,05] - "n�o normal"
* p-value = 0.05696 [p > 0,05] - "normal"

<img src="../imgs/34.PNG"/>

Qual rigor?
* Nem sempre os dados precisam ser rigorosamente normais. Dados aproximadamente normais s�o suficientes para a maioria dos casos.

R
```r
#GERA N�MEROS ALEAT�RIOS NORMAIS DISTRIBUIDOS
x = rnorm[100]
#GERA O TESTE DE NORMALIDADE
qqnorm[x]
#GERA A LINHA DE MELHOR AJUSTE
qqline[x]
#EXECUTA O TESTE PARA VERIFICAR SE OS DADOS EST�O NORMAIS E PEGAR O VALOR DE P E COMPARAR COM O ALFA
shapiro.test[x]

```

<h2>Distribui��o Normal no R</h2>

```r
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

```


<h2>Estat�stica Param�trica</h2>
* Requer que os dados estejam em conformidade com alguma distribui��o.
* Ex: Distribui��o Normal.

<h2>Est�tistica N�o-Param�trica</h2>
* Quando os dados n�o est�o com conformidade com alguma distribui��o.
* Quando n�o se conhece a distribui��o dos dados.

* A estat�stica param�trica oferece menos riscos.
	* Por exemplo, se os dados est�o normalmente distribu�dos, um teste de hip�tese param�trico tende a ser mais preciso do que um teste n�o param�trico.


<h2>Intervalos de Confian�a</h2>
* � poss�vel inferir caracter�sticas de uma popula��o a partir de uma amostra.
* Porque?
	* Custo.
	* Viabilidade.
	* Etc.
* Pre�o: erro padr�o / n�vel de confian�a.
* Riscos: Dados ruins, enviesamento.

Por�m...
* Como estamos utilizando amostra...devemos esperar varia��o.
* A primeira amostra pode variar com rela��o a segunda...
* A segunda com a rela��o a terceira etc
* Mas devemos poder "medir" o quanto pode ser esta varia��o.

Intervalos de Confian�a
* � o par�metro mais ou menos a margem de erro estimada.
* Par�metro: valor a ser estimado.
* Margem de erro: Variabilidade, para mais ou para menos.
* N�vel de Confian�a: de 80% a 99%.
* Tamanho da Amostra (n).

<img src="../imgs/35.PNG"/>
Vai existir um percentual de confian�a e seu respectivo valor de Z que ser� utilizado na f�rmula.

Em n�meros...
* Entre 63 e 67% dos entrevistados pretendem votar em Maria, com um n�vel de confian�a de 95%.
* Par�metro: Inten��o de Voto (Propor��o).
* N�vel de Confian�a: 95%.
* Intervalo de Confian�a: Entre 63 e 67%.
* Erro padr�o: 1,96.
* Entrevistados (n): 1000.
* Margem de Erro: +-2%.

Compensa��o:
* N�vel de Confian�a maior, maior Erro Padr�o.
* Maior Tamnho da Amostra, Menor Erro Padr�o.

Tipos de Intervalos de Confian�a:
* Intervalo de Confian�a para a m�dia.
* Intervalo de Confian�a para a propor��o.

<h2>Intervalo de Confian�a para a M�dia</h2>
* Queremos estimar o sal�rio m�dio de um cientista de dados.
* 100 pesquisados (n).
* Intervalo de confian�a: 95%.
* O desvio padr�o � 1100,00.
* A m�dia � de R$ 5.800,00.
* Valor de z* = 1,96.
* Margem de erro: +- 215,60.
* O sal�rio m�dio de um cientista de dados � entre 5.584,40 e 6,015,60 com um n�vel de confian�a de 95%.

<img src="../imgs/36.PNG"/>

Intervalo de Confian�a para a M�dia, Aumentando o intervalo de Confian�a
* Queremos estimar o sal�rio m�dio de um cientista de dados.
* 100 pesquisados (n)
* Intervalo de confian�a: 99% (era 95).
* O desvio padr�o � 1100,00.
* A m�dia � de R$ 5.800,00.
* Valor de z* = 2,58 (era 1,96).
* Margem de erro: +- 283,8.
* O sal�rio m�dio de um cientista de dados � entre 5.516,20 e 6.083,80 com um n�vel de confian�a de 99%.

<img src="../imgs/37.PNG"/>

Troca entre Margem de Erro, Intervalo de Confian�a e Amostra
* Aumentando a margem de erro, � natural que as chances da minha amostra estarem dentro do intervalo, por isso eu tenho um intervalo de confian�a maior.
* Da mesma forma, aumentando n, reduz a chance do efeito acaso, por isso minha margem de erro reduz.

Intervalo de Confian�a para a M�dia:
Aumentando n - 
* Queremos estimar o sal�rio m�dio dos cientistas de dados.
* 1000 pesquisados (n).
* Intervalo de confian�a: 95%.
* O desvio padr�o � 1100,00.
* A m�dia � de R$ 5.800,00.
* Valor de z* = 1,96.
* Margem de erro: +-68,18.
* O sal�rio m�dio de um cientista de dados � entre 5.731,82 e 5.868,18 com um n�vel de confian�a de 95%.

<img src="../imgs/38.PNG"/>

<h2>Intervalo de Confian�a para a Propor��o</h2>
* Queremos estimar a propor��o de eleitores que pretendem votar em Maria para prefeito.
* 1000 pesquisados (n).
* Intervalo de confian�a: 95%.
* 650 Responde Maria. p = 650/1000 = 0,65.
* 330 Responde Jo�o. p = 330/1000 = 0,33.
* 20 N�o sabe /Nenhum. p - 20/1000 = 0,02.
* Valor de z* = 1,96.

Entre 62 e 68% dos entrevistados pretendem votar em Maria, com um n�vel de confian�a de 95%.
<img src="../imgs/39.PNG"/>

<h2>Testes de Hip�tese</h2>
* Confirmar ou negar uma premissa usando uma amostra.
* Esta premissa usa um par�metro, por exemplo:
	* 56% dos brasileiros n�o gostam de estat�stica.
* Encontrar diferen�a n�o � tudo, � preciso saber se esta diferen�a � estatisticamente significante.
* S� � feito por conta das amostras, pois se for feita com a popula��o n�o haver� sentido.

<img src="../imgs/40.PNG"/>

Convens�es:
* Score padr�o: erros padr�o que seus dados est�o abaixo ou acima da m�dia.
* A vers�o padronizada de sua estat�stica � chamada de "estat�stica de teste".
* Olha na vers�o padronizada de Z. se sua estat�stica de teste estiver pr�xima de zero ou num interevalo onde os resultados devem estar, ent�o n�o se pode rejeitar H0.
* Se estiver pr�ximo a cauda, ent�o podemos rejeitar H0.

Alfa e valor-p

<img src="../imgs/41.PNG"/>

Etapas para se fazer um testes de Hip�teses:
1. Definir o tamanho da sua amostra.
2. Coletar dados.
3. Calcular a m�dia e o desvio padr�o.
4. Definir as duas hip�teses: H0 e Ha.
5. Definir seu alfa.
6. Padronizar seus dados gerando a estat�stica de teste.
7. Encontrar o valor-p na tabela Z.
8. Comparar com seu alfa.
9. Emitir seu veredito.

<img src="../imgs/42.PNG"/>
<img src="../imgs/43.PNG"/>
<img src="../imgs/44.PNG"/>

Erros cometidos em Testes de Hip�tese:
* Erro do tipo 1: rejeitar H0 quando n�o deveria.
	* Chance de ocorrer igual a Alfa.
* Erro do tipo 2: N�o rejeitar H0 quando deveria ter rejeitado.
	* Depende do tamanho da amostra.

* Ocorrem devido ao acaso.

Trocas
<img src="../imgs/45.PNG"/>

Ideal:
* Amostra grande.
* Alfa pequeno.

<h2>Distribui��o T de Student</h2>
* Utilizada quando a amostra � pequena (menor que 30).
* E n�o se conhece o desvio padr�o da popula��o.
* Custo: Maior variabilidade (por exemplo, em um teste de hip�tese).

* Tend�ncia maior de encontrar valores nas caudas (caudas maiores).
* Se n >= 30, se assemelha a uma distribui��o normal.

Grau de liberdade: corresponde ao tamanho da amostra (n-1)
Se n=15, t14

* Voc� pode usar T de Student para:
	* Calcular probabilidades.
	* Calcular Intervalos de Confian�a.
	* Executar testes de Hip�teses.
* Calculamos o valor de t.
* Consultamos a tabela de distribui��o t ou
* Usamos o R para calcular a probabilidade.

<img src="../imgs/46.PNG"/>
<img src="../imgs/47.PNG"/>


Alterando o exemplo:
Uma pesquisa mostra que cientistas de dados ganham R$ 75,00 por hora. Uma amostra de 9 cientistas � selecionado � perguntando o sal�rio. O desvio padr�o � 10. Qual a probabilidade do sal�rio ser maior que R$ 80 a hora?

u0 = 75 (M�dia da popula��o).
S = 10 (Desvio Padr�o da amostra).
n = 9 (Tamanho da amostra).
t0 = 8 (Graus de liberdade).

<img src="../imgs/48.PNG"/>

Distribui��o T de Student no R
```r
#P[X<x]
pt()
#P[X>x] = lower.tail=FALSE
```

Distribui��o T de Student no R

```r
#M�dia = 75, AMOSTRA = 9 E DESVIO PADR�O 10
# < 80  t = 1,5
#Segundo par�metro = Graus de Liberdade
#8 pois amostra � 9, ent�o n - 1
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

```

<h2>Question�rio Estat�stica I</h2>

* Pergunta 1:
	* Executando a fun��o sample, como o c�digo abaixo:
	* sample(2, 10, replace=F, prob=c(0.2,0.8))
	* obtemos um erro. Qual alternativa melhor explica o motivo de ter ocorrido o erro?
		* R: Estamos tentando gerar 10 n�meros aleat�rios de 2 n�meros, sem reposi��o.

* Pergunta 2: 
	* Dado o conjunto de dados:
	* 22, 10, 12, 14, 13, 15.
	* Qual alternativa apresentta a reposta correta para a mediana destes dados?
		* R: 13.5
```r
x = c(22, 10, 12, 14, 13, 15)
median(x)
[1] 13.5
```

* Pergunta 3:
	* Em um baralho comum, qual a probabilidade de voc� escolher uma carta aleatoriamente, e ser do naipe Espadas?
		* R: 25%.
		* 13 chances em 52 13/52 = 0,25.

* Pergunta 4:
	* Jogando uma moeda 10 vezes, quais as chances de dar cara 8 vezes?
		* R: 4%.
```r
dbinom(8, 10, 0.5)
```
* Pergunta 5:
	* Os pre�os de diversos modelos de celulares no estoque de uma loja s�o normalmente distribu�dos, com m�dia = 1250 e desvio padr�o igual a 480.
	* Qual a chance de escolher aleatoriamente um aparelho que custe menos que 1500?
		* R: 69%
```r
pnorm(1500, 1250, 480)
[1]0.6987586
```

* Pergunta 6:
	* Uma not�cia informa que entre 34% e 38% dos entrevistados n�o gostam de peixe.
	* Qual a margem de erro desta pesquisa?
		* R: +- 2%.

* Pergunta 7:
	* Qual afirma��o � falsa com rela��o a teste de hip�tese?
		* R: A hip�tese alternativa � por padr�o, verdadeira.

* Pergunta 8:
	* Das condi��es para o uso da distribui��o T de Student, qual � falsa?
		* R: Se conhece o desvio padr�o da popula��o.

* Pergunta 9:
	* Qual op��o abaixo, n�o � um alternativa para analisar se uma distribui��o de dados est� normalmente distribu�da?
		* R: Diagrama de dispers�o.

* Pergunta 10:
	* Qual alternativa abaixo melhor descreve o papel da estat�stica descritiva?
		* R: Demonstra dados atrav�s de resumos e gr�ficos.




