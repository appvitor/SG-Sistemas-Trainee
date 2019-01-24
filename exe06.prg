Clear //limpar tela

nNum1  := 0
nNum2  := 0
nNum3  := 0 //variaveis p/ armazenar os valores

@01,01 say 'Numero 1: '
@02,01 say 'Numero 2: '
@03,01 say 'Numero 3: ' //pedindo numeros ao usuario

@01,11 get nNum1 picture '999.99'
@02,11 get nNum2 picture '999.99'
@03,11 get nNum3 picture '999.99'
read                             //lendo os dados inseridos

nMedia := (nNum1+nNum2+nNum3)/3 //realiza a media dos 3 valores numericos

@05,01 say 'A media de ' + AllTrim(Str(nNum1)) + ' + ' + AllTrim(Str(nNum2)) + ' + ' + AllTrim(Str(nNum3)) + ' = ' + AllTrim(Str(nMedia))
//apresenta a media para o usuario

