

do while .t.

   Clear

   @ 01, 05 say 'Contador de 1 a 10'

   nLinha := 3

   for n:= 1 to 10

      @ nLinha, 05 say AllTrim(Str(n))
      nLinha++

   next

   for n:= 10 to 1 step -1

      @ nLinha, 05 say AllTrim(Str(n))
      nLinha++

   next

   inKey(0)

enddo

