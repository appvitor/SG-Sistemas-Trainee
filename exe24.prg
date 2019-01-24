
do while .t.

   lAcertou := .f.

   do while lAcertou == .f.

      Clear

      cFruta := Space(20)

      @ 05, 05 say 'Digite o nome de uma fruta: '

      @ 05, 34 get cFruta picture '@!' valid !Empty(cFruta) color 'w/n'
      read

      if cFruta != 'BANANA'
         @ 07, 05 say 'EEEEEEEEEEERRROOOOOOOOOUUUUUUUUUUUHHHHHHHHH!!!!'

      else
         @ 07, 05 say 'HHAAAA HAAAAAAAIIIII!!! ACERTOOOUUUUU'
         lAcertou := .t.

      endif

      inKey(0)

   enddo

enddo

