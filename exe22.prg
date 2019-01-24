
do while

   cNome := Space(40)
   nValorMesada := 0

   @ 03, 03 say 'Nome: '
   @ 04, 03 say 'Valor da Mesada R$ '

   @ 03, 09 get cNome        picture '@!'            valid !EMpty(cNome)    color 'w/n'
   @ 04, 22 get nValorMesada picture '@E 999,999.99' valid nValorMesada > 0 color 'w/n'
   read

   do while nValorRestante > 0





   enddo

enddo

