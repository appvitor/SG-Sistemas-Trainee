
set date British
set epoch to 1940

Clear

nHomens              := 0
nMulheres            := 0
nPositivo            := 0
nNegativo            := 0
nMulheresNaoGostaram := 0

do while .t.

   @ 02, 05 say 'Sistema de Entrevistas'

   for n := 1 to 5

      @ 03, 00 Clear to 11, 79

      @ 04, 05 say 'Entrevistado Numero: ' + AllTrim(Str(n))

      nGenero := 0
      do while nGenero != 1 .and. nGenero != 2

         @ 06, 05 say 'Qual o seu Genero?'
         @ 07, 09 prompt 'M'
         @ 07, 15 prompt 'F'

         menu to nGenero

         if nGenero == 1
           nHomens++

         elseif nGenero == 2
            nMulheres++

         endif

      enddo

      nFeedback := 0
      do while nFeedback != 1 .and. nFeedback != 2

         @ 09, 05 say 'Voce gostou do Produto?'
         @ 10, 09 prompt 'S'
         @ 10, 19 prompt 'N'

         menu to nFeedback

         if nFeedback == 1
           nPositivo++

         elseif nFeedback == 2
            nNegativo++

            if nGenero == 2
               nMulheresNaoGostaram++

            endif

         endif

      enddo

   next

   @ 12, 05 say 'Homens:   ' + ((nHomens+nMulheres)/100)*nHomens + '%'
   @ 13, 05 say 'Mulheres: ' + ((nHomens+nMulheres)/100)*nMulheres + '%'
   @ 14, 05 say 'Pessoas que gostaram do produto: '  + AllTrim(Str(nPositivo))
   @ 15, 05 say 'Mulheres que gostaram do produto: ' + AllTrim(Str(nMulheresNaoGostaram))

enddo

