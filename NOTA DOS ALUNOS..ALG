algoritmo "Nota dos alunos."

var
   repeat_program         : inteiro
   nome_aluno             : caractere
   nota_aluno             : real
   
   quant_alunos           : inteiro
   quant_notas            : inteiro
   
   soma_notas             : real
   media_arit_notas       : real
   
   quant_alun_acim_cinco: inteiro
   quant_alun_abai_cinco: inteiro
inicio
   repeat_program          <- 1
   quant_alunos            <- 0
   quant_notas             <- 0
   soma_notas              <- 0
   quant_alun_acim_cinco <- 0
   quant_alun_abai_cinco <- 0
   
escreval("-> Informe o seu nome como aluno e sua nota:")
escreval("---------------------------------------------------")

enquanto (repeat_program <> 0) faca
         escreva("Digite o seu nome como aluno do curso/instituição:")
         leia(nome_aluno)
         escreva("Digite a sua nota:")
         leia(nota_aluno)
         
         se nota_aluno > -1 entao
            quant_alunos <- quant_alunos + 1
            quant_notas <- quant_notas + 1
         senao
            repeat_program <- 0
         fimse
         
         // Soma das notas dos alunos para calculo das médias
         soma_notas <- soma_notas + nota_aluno
         // Média Aritmética: Soma das Notas / Quantidade de notas
         media_arit_notas <- soma_notas / quant_notas
         
         se nota_aluno >= 5 entao
               quant_alun_acim_cinco <- quant_alun_acim_cinco + 1
         senao
              escreval("-> Nota menor que 5")
              quant_alun_abai_cinco <- quant_alun_abai_cinco + 1
         fimse
         
         escreva("-> Deseja continuar? 1 para Continuar 0 para Parar: ")
         leia(repeat_program)
         
         escreval("----------------------------------------------------------------------------------------------")
fimenquanto

se media_arit_notas <> 0 entao

   escreval("- A media aritmética das notas é: ",media_arit_notas:1:2)

    se quant_alun_acim_cinco = 0 entao
         escreval("Não há nenhum aluno com nota acima de 5")
         escreval("E a quantidade de alunos com nota abaixo de 5 é: ",quant_alun_abai_cinco)
    senao
         escreva("- A quantidade de alunos que estão com nota acima de 5 é: ",quant_alun_acim_cinco)
    fimse
    
fimse

fimalgoritmo