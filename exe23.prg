
do while .t.

   nOpcao := 0

   do while nOpcao != 5

      Clear

      nOpcao := 0

      @ 03, 05 say 'Digite um numero de 1 a 10: '

      @ 03, 34 get nOpcao picture '99' valid nOpcao >= 1 .and. nOpcao <=10
      read

      if nOpcao != 5
         @ 05, 05 say 'EEEERRRROOOOOOOUUUUUUUUUUUUUUUUUUUUUHHHHHHHHHH!!!'

      else
         @ 05, 05 say 'HAAA HAAAAAAAIIII! ACEEEERTOOOUUU!'

      endif

      inKey(0)

   enddo

enddo

