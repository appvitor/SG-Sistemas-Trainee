/*

 Soma: 9999 Soma: 9999 Soma: 9999 Soma: 9999 Soma: 9999 Soma: 9999 Soma: 9999

*/
do while .t.

   Clear

   nSoma   := 0
   nLinha  := 3
   nColuna := 2

   for n := 10 to 50

      if nLinha == 23

         nLinha := 3
         nColuna += 11

      endif

      nSoma += n
      @ nLinha, nColuna say 'Soma: ' + AllTrim(StrZero(nSoma, 4))

      nLinha++

   next

   inKey(0)

enddo

