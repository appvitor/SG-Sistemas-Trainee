Clear                                                                          // limpar tela

nCodigo := 0
cClassificacao := Space(50)                                                    // variaveis p/ armazenar o codigo e a classificacao do produto


@ 02, 02 to 10, 55 Double                                                      // desenhar borda externa

@ 03, 05 say 'TABELA DE CODIGOS'
@ 05, 05 say '1 - Alimento Nao Perecivel'
@ 06, 05 say '2 a 4 - Alimento Perecivel'
@ 07, 05 say '5 a 6 - Vestuario'
@ 08, 05 say '7 - Higiene Pessoal'
@ 09, 05 say '8 a 15 - Limpeza e Utensilios Domesticos'

@ 05, 05 say 'Codigo do produto: '

@ 05, 24 get nCodigo picture '99' Color 'w/n'
read                                                                           // lendo o codigo inserido

if nCodigo < 1 .or. nCodigo > 15                                               // if principal p/ validar se o codigo inserido esta na faixa permitida
   cClassificacao := 'Codigo Invalido!'

else

   if     nCodigo == 1                                                         // if secundario p/ encontrar a classificacao do produto
      cClassificacao := 'Alimento nao perecivel'

   elseif nCodigo >= 2 .and. nCodigo <= 4
      cClassificacao := 'Alimento perecivel'

   elseif nCodigo == 5 .or.  nCodigo == 6
      cClassificacao := 'Vestuario'

   elseif nCodigo == 7
      cClassificacao := 'Higiene pessoal'

   else
      cClassificacao := 'Limpeza e utensilios domesticos'

   endif

endif

@ 07, 05 say 'Classificacao: ' + Alltrim(cClassificacao)                       // apresentar resultado final ao usuario

