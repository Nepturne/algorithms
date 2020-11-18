algoritmo "Altura em andamento"

var
   ano                  : inteiro
   meses_por_ano        : inteiro
   calculo_ano          : inteiro
   quant_anos           : inteiro
   
   altura_juca          : real
   cm_por_ano_juca      : real
   
   altura_chico         : real
   cm_por_ano_chico     : real
   
inicio

meses_por_ano         <- 12
quant_anos            <- 0

altura_juca           <- 1.10
cm_por_ano_juca       <- 0.03

altura_chico          <- 1.50
cm_por_ano_chico      <- 0.02

escreval("-> Observe a diagramação de ultrapassagem da altura dos integrantes Juca em relação ao Chico no programa:")
escreval("-> Para iniciar o programa informe um ano com 4 dígitos: ")
leia(ano)

enquanto ( altura_juca <= altura_chico ) faca

         se  (ano > 0) entao
             escreval("---------------------------------------------------")
             ano <- ano + 1
             escreval("Ano :",ano)
             altura_juca  <- altura_juca + cm_por_ano_juca
             altura_chico <- altura_chico + cm_por_ano_chico
             quant_anos   <- quant_anos + 1
             escreval("---------------------------------------------------")
         fimse
         
fimenquanto
           escreval("---------------------------------------------------")
           escreval("-> A quantidade de anos que juca levou para ultrapassar a altura de chico foi :",quant_anos)
fimalgoritmo
