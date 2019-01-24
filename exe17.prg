
do while .t.

Clear

   cPalavra          := Space(40)

   @ 05, 30 say 'Inversor de Letras'
   @ 06, 03 to 09, 70 double
   @ 07, 05 say 'Letras: '

   @ 07, 13 get cPalavra picture '@!' valid !Empty(cPalavra) color 'w/n'
   read

   nTamanhoPalavra   := len(AllTrim(cPalavra))
   cPalavraInvertida := ''

   do while nTamanhoPalavra > 0

      cPalavraInvertida += subStr(cPalavra, nTamanhoPalavra, 1)

      nTamanhoPalavra--

   enddo

   @ 08, 05 say 'Invertido: ' + AllTrim(cPalavraInvertida)

   inKey(0)

enddo

