Clear                                                                          // limpar tela

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0                                                                  // variaveis p/ armazenar os 3 numeros

@ 05, 05 say '1o. numero: '
@ 06, 05 say '2o. numero: '
@ 07, 05 say '3o. numero: '                                                    // pedir 1, 2 e 3 numero ao usuario

@ 05, 17 get nNumero1 picture '@E 99,999.99' Color 'w/n'
@ 06, 17 get nNumero2 picture '@E 99,999.99' Color 'w/n'
@ 07, 17 get nNumero3 picture '@E 99,999.99' Color 'w/n'
read                                                                           // ler 1, 2 e 3 numero

if nNumero1 == nNumero2 .and. nNumero1 == nNumero3                             // verifica se os tres nao sao iguais
   @ 09, 05 say 'Os tres numeros sao iguais!'

else                                                                           // caso os 3 nao sejam iguais, ele encontra o maior e o menor

   nMaior := nNumero1
   nMenor := nNumero1                                                          // setando o 1 numero como o maior e o menor

   if nNumero2 > nMaior                                                        // verifica se o 2 ‚ maior
      nMaior := nNumero2

   endif

   if nNumero2 < nMenor                                                        // verifica se o 2 ‚ o menor
      nMenor := nNumero2

   endif

   if nNumero3 > nMaior                                                        // verifica se o 3 ‚ o maior
      nMaior := nNumero3

   endif

   if nNumero3 < nMenor                                                        // verifica se o 3 ‚ o menor
      nMenor := nNumero3

   endif

   @ 09, 05 say 'Maior numero digitado: ' + AllTrim(Str(nMaior))
   @ 10, 05 say 'Menor numero digitado: ' + AllTrim(Str(nMenor))               // apresenta os numeros maior e menor ao usuario

endif

