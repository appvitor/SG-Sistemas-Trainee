Clear //limpar tela

nNum1 := 0
nNum2 := 0 //variaveis p/ armazenar valores

@01,01 to 12,25 Double Color 'gr/n'

@02,05 say 'SUPER CALCULATOR' Color 'bg,n'
@04,03 say 'Numero 1: '
@05,03 say 'Numero 2: ' //requisitando os numeros p/ o usuario

@04,14 get nNum1 picture '999.99'
@05,14 get nNum2 picture '999.99' valid nNum2 != 0 //o VALID ‚ o condicional p/ limitar os valores inseridos
read                                               //lendo os dados

@07,03 say AllTrim(Str(nNum1)) + ' + ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Str(nNum1 + nNum2))
@08,03 say AllTrim(Str(nNum1)) + ' - ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Str(nNum1 - nNum2))
@09,03 say AllTrim(Str(nNum1)) + ' x ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Str(nNum1 * nNum2))
@10,03 say AllTrim(Str(nNum1)) + ' / ' +  AllTrim(Str(nNum2)) + ' = ' + AllTrim(Str(nNum1 / nNum2)) //apresentando o resultado final

