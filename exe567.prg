/*
Uni∆o dos Exercicios 1, 2 e 3

         MENU PRINCIPAL

    1 - Inversor de Numeros
    2 -  Media dos Valores
    3 -  Super Calculator
    4 -     Encerrar

*/

nOpcao := 0

do while nOpcao != 4

   Clear

   @ 02, 10 say 'MENU PRINCIPAL'
   @ 04, 05 prompt '1 - Inversor de Numeros'
   @ 05, 05 prompt '2 -  Media dos Valores'
   @ 06, 05 prompt '3 -  Super Calculator'
   @ 07, 05 prompt '4 -     Encerrar'

   menu to nOpcao

   nNum1 := 0
   nNum2 := 0

   if nOpcao == 1

      nAux  := 0                                                               //para permitir a troca dos valores

      @ 10, 01 to 20,47 Double Color 'b/n'                                     //Desenhar borda externa maxima
      InKey(1)
      @ 11, 02 to 19,46 Double Color 'g/n'                                     //Desenhar borda externa media
      InKey(1)
      @ 12, 03 to 18,45 Double Color 'rb/n'                                    //Desenhar borda externa minima
      InKey(1)

      @ 13, 12 say 'INVERSOR DE NUMEROS  :D'
      @ 14, 10 say 'Numero 1 = '
      @ 15, 10 say 'Numero 2 = '

      @ 14, 21 get nNum1 picture '999.99'
      @ 15, 21 get nNum2 picture '999.99'
      read

      @ 16, 10 say 'Invertendo...'

      nAux  := nNum1
      nNum1 := nNum2                                                           //INVERTENDO NUMEROS
      nNum2 := nAux

      InKey(2)
      @ 16, 10 say 'Invertidoooo!'
      @ 17, 05 say 'Numero 1 = ' + AllTrim(Str(nNum1)) + ' e ' + 'Numero 2 = ' + AllTrim(Str(nNum2)) Color 'r/n'

   elseif nOpcao == 2

      nNum3  := 0                                                              //variaveis p/ armazenar os valores

      @ 10, 05 say 'Numero 1: '
      @ 11, 05 say 'Numero 2: '
      @ 12, 05 say 'Numero 3: '                                                //pedindo numeros ao usuario

      @ 10, 15 get nNum1 picture '999.99'
      @ 11, 15 get nNum2 picture '999.99'
      @ 12, 15 get nNum3 picture '999.99'
      read                                                                     // lendo os dados inseridos

      nMedia := (nNum1+nNum2+nNum3)/3                                          // realiza a media dos 3 valores numericos

      @ 14, 05 say 'A media de ' + AllTrim(Str(nNum1)) + ' + ' + AllTrim(Str(nNum2)) + ' + ' + AllTrim(Str(nNum3)) + ' = ' + AllTrim(Str(nMedia))

   elseif nOpcao == 3

      @ 10, 01 to 22,30 Double Color 'gr/n'

      @ 12, 07 say 'SUPER CALCULATOR' Color 'bg,n'
      @ 14, 03 say 'Numero 1: '
      @ 15, 03 say 'Numero 2: ' //requisitando os numeros p/ o usuario

      @ 14, 14 get nNum1 picture '999.99'
      @ 15, 14 get nNum2 picture '999.99' valid nNum2 != 0                     // o VALID Ç o condicional p/ limitar os valores inseridos
      read                                                                     // lendo os dados

      @ 17, 03 say AllTrim(Str(nNum1)) + ' + ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Transform(nNum1 + nNum2, '@E 999,999.99'))
      @ 18, 03 say AllTrim(Str(nNum1)) + ' - ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Transform(nNum1 - nNum2, '@E 999,999.99'))
      @ 19, 03 say AllTrim(Str(nNum1)) + ' x ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Transform(nNum1 * nNum2, '@E 999,999.99'))
      @ 20, 03 say AllTrim(Str(nNum1)) + ' / ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Transform(nNum1 / nNum2, '@E 999,999.99')) //apresentando o resultado final

   elseif nOpcao == 4
      exit

   endif

   inKey(0)

enddo

