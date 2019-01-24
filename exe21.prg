
do while .t.

   Clear

   cNomeGordo  := Space(20)
   cNomeMagro  := Space(20)
   nPesoMaior  := 0
   nPesoMenor  := 0
   nQuantidade := 0

   @ 01, 03 say 'Quantas pessoas serao comparadas ?'

   @ 01, 39 get nQuantidade picture '9999'    valid nQuantidade > 0 color 'w/n'
   read

   for n := 1 to nQuantidade

      cNome       := Space(20)
      nPeso       := 0

      @ 03, 03 say 'Nome da pessoa ' + AllTrim(Str(n)) + ': '
      @ 04, 03 say 'Peso da pessoa ' + AllTrim(Str(n)) + ': '

      @ 03, 21 get cNome    picture '@!'      valid !Empty(cNome)   color 'w/n'
      @ 04, 21 get nPeso    picture '999.999' valid nPeso > 0       color 'w/n'
      read

      if nPeso > nPesoMaior
         nPesoMaior := nPeso
         cNomeGordo := cNome

      endif

      if nPeso < nPesoMenor .or. n == 1
         nPesoMenor := nPeso
         cNomeMagro := cNome

      endif

   next

   @ 06, 03 say 'Pessoa mais gorda: ' + AllTrim(cNomeGordo) + ' com ' + AllTrim(Str(nPesoMaior)) + ' Kg.'
   @ 07, 03 say 'Pessoa mais magra: ' + AllTrim(cNomeMagro) + ' com ' + AllTrim(Str(nPesoMenor)) + ' Kg.'

   inKey(0)

enddo

