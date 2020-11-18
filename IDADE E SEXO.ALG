algoritmo "Idade e Sexo"

var
   idade                : inteiro
   sexo_num             : inteiro
   stop_continue_program: inteiro
   
   idade_media_total    : real
   
   soma_idades          : inteiro
   media_idades         : real
   
   total_sex_femin      : inteiro
   total_sex_mascu      : inteiro
   total_de_pessoa      : inteiro
   
   total_femin_limit_id : inteiro
inicio

stop_continue_program <- 1
soma_idades           <- 0
total_sex_mascu       <- 0
total_sex_femin       <- 0
total_femin_limit_id  <- 0


escreval("-> Informe a sua idade e o seu sexo com 0-masculino e 1-feminino:")
escreval("-> Observação: Para que o programa termine digite a idade como algum número negativo!")
enquanto ( stop_continue_program <> 0 ) faca
         escreval("---------------------------------------------------")
         escreva("Digite a sua idade: ")
         leia(idade)
         se idade >= 0 entao
            escreva("Digite o seu sexo -> 0-masculino e 1-feminino :")
            leia(sexo_num)
            // Verificação para contagem de um sexo ou outro:
            se sexo_num = 0 entao
                 total_sex_mascu <- total_sex_mascu + 1
                 soma_idades     <- soma_idades + idade
            senao se sexo_num = 1 entao
                  // Calcular a quantity de mulheres com idade entre 30-45:
                 se ((idade >= 30) e (idade <= 45)) entao
                    total_femin_limit_id <-  total_femin_limit_id + 1
                 fimse
                 
                 total_sex_femin <- total_sex_femin + 1
                 soma_idades     <- soma_idades + idade
            fimse

            // Cálculo de idade média:
            total_de_pessoa <- total_sex_mascu + total_sex_femin
            media_idades    <- soma_idades / total_de_pessoa

            escreval("---------------------------------------------------")
            escreva("-> Deseja continuar? 1 para Continuar 0 para Parar: ")
            leia(stop_continue_program)
         senao se idade < 0 entao
               stop_continue_program <- 0
         fimse
         
fimenquanto
           escreval("---------------------------------------------------")
           escreval("- A média das idades é: ",media_idades:1:2)
           escreval("- O total do sexo feminino entre 30 e 45 anos é: ",total_femin_limit_id)
           escreval("- O total do sexo masculino é: ",total_sex_mascu)
fimalgoritmo
