Clear                                                                          //limpar tela

cCategoria := Space(30)                                                        //variavel p/ armazenar a categoria resultante

cNome      := Space(30)
nIdade     := 0                                                                //variaveis para armazenar dados do nadador

@ 03,01 to 10,30 Double                                                        //desenhar borda externa

@ 05,05 say 'Nome: '
@ 06,05 say 'Idade: '                                                           //requsitar dados

@ 05,11 get cNome  picture '@!'  valid !Empty(cNome) Color 'w/n'
@ 06,12 get nIdade picture '999' Color 'w/n'
read                                                                           //ler dados inseridos

if        nIdade < 5                                                           // if principal p/ validar idade
   cCategoria := 'Idade invalida!'

else

   if     nIdade >= 5  .and. nIdade <= 7                                       //comparar a idade p/ encontrar a categoria do nadador
      cCategoria := 'Infantil A'

   elseif nIdade >= 8  .and. nIdade <= 10
      cCategoria := 'Infantil B'

   elseif nIdade >= 11 .and. nIdade <= 13
      cCategoria := 'Juvenil A'

   elseif nIdade >= 14 .and. nIdade <= 17
      cCategoria := 'Juvenil B'

   else
      cCategoria := 'Senior'

   endif

endif

@08,05 say 'Categoria: ' + AllTrim(cCategoria)

