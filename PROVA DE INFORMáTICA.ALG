algoritmo "Prova de Informática"
// 30. Os alunos de informática tiveram cinco provas (uma de cada matéria/disciplina): 1, 2, 3, 4 e 5. Considere aprovado o aluno com nota igual ou superior a 7.0.
// Criar um algoritmo que leia o Nome dos alunos e as suas respectivas cinco notas. Inicialmente o algoritmo deve perguntar quantos alunos existem na turma e deve também imprimir:
// - Nome dos que foram aprovados em todas as matérias;
// - Nome dos alunos aprovados nas matérias 1 e 4;
// - A porcentagem dos aprovados na matéria 3.

var

   i           : inteiro
   quant_alunos: inteiro
   
   nome_aluno  : caractere
   
   names_aprov_todas:vetor [0 .. 200] de caractere
   names_aprov_algum:vetor [0 .. 200] de caractere
   
   nota_one    : real
   nota_two    : real
   nota_three  : real
   nota_four   : real
   nota_five   : real
   
   calculo_perc: real
   quant_alun_three: inteiro
   calculo_porc:real
   
   indice: inteiro
inicio

i <- 0
quant_alun_three <- 0

escreval("-> Bem vindo ao programa para gerenciar as notas responda as perguntas:")
escreval("-> Observação: Aluno Aprovado = Nota >= 7.0 ")

escreval("- Quantos alunos existem na turma? ")
leia(quant_alunos)

enquanto ( i <= quant_alunos - 1 ) faca
     escreval("---------------------------------------------------")
     escreval("* Aluno ",i+1," *")
     escreva("- Informe o seu nome: ")
     leia(nome_aluno)
     escreva("- Digite a nota da matéria/disciplina 1: ")
     leia(nota_one)
     escreva("- Digite a nota da matéria/disciplina 2: ")
     leia(nota_two)
     escreva("- Digite a nota da matéria/disciplina 3: ")
     leia(nota_three)
     escreva("- Digite a nota da matéria/disciplina 4: ")
     leia(nota_four)
     escreva("- Digite a nota da matéria/disciplina 5: ")
     leia(nota_five)

     // Aprovados em todas as matérias
     se ((nota_one >= 7.0) e (nota_two >= 7.0) e (nota_three >= 7.0) e (nota_four >= 7.0) e (nota_five >= 7.0)) entao
       names_aprov_todas[i] <-  nome_aluno
     fimse
     
     // Aprovados nas matéras 1 e 4
     se ((nota_one >= 7.0) e (nota_four >= 7.0)) entao
        names_aprov_algum[i]  <-  nome_aluno
     fimse
     
     // Porcentagem dos aprovados na matéria 3
     se nota_three >= 7.0 entao
        quant_alun_three <- quant_alun_three + 1
        calculo_perc <- 100 * quant_alun_three
        calculo_porc <- calculo_perc / quant_alunos // Cálculo Final
     fimse
     
     i <- i + 1
fimenquanto
     escreval("---------------------------------------------------")
     escreval("- Resultado final: ")
     // Resultado final:
     escreval("-> Nome dos alunos aprovados em todas as matérias: ")
     para indice de 0 ate quant_alunos faca
           escreval(names_aprov_todas[indice])
     fimpara

     escreval("-> Nome dos alunos aprovados nas matérias 1 e 4: ")
     para indice de 0 ate quant_alunos faca
           escreval(names_aprov_algum[indice])
     fimpara
     escreval("-> A porcentagem dos aprovados na matéria 3: ",calculo_porc,"%")
     escreval("---------------------------------------------------")
     // fim
fimalgoritmo
