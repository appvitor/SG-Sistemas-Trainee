/*

     MENU PRINCIPAL

    1 - Ola Mundo!
    2 - Quem sou eu?
    3 - Multiplicar

*/


do while .t.

   nOpcao := 0

   Clear

   @ 02, 06 say 'MENU PRINCIPAL'
   @ 04, 05 prompt '1 - Ola Mundo!'
   @ 05, 05 prompt '2 - Quem sou eu?'
   @ 06, 05 prompt '3 - Multiplicar'

   menu to nOpcao

   if nOpcao == 1
      @ 10, 05 say 'hello world'

   elseif nOpcao == 2
      @ 10, 05 say 'Vitor Pires Correa'
      @ 11, 05 say '22 anos'
      @ 12, 05 say '58 kg'

   elseif nOpcao == 3
      @ 10, 05 say '1o. Numero: '
      @ 11, 05 say '2o. Numero: '

      @ 10, 17 get nNumero1 picture '999.99'
      @ 11, 17 get nNumero2 picture '999.99'
      read

      nResul   := nNumero1*nNumero2//variavel numerica p/ o resultado

      @ 13, 05 say 'O produto entre os numeros ' + AllTrim(Str(nNumero1)) + ' e ' + AllTrim(Str(nNumero2)) + ' = ' + AllTrim(Str(nResul))

   endif

   inKey(0)

enddo

