Clear

nNum1 := 0
nNum2 := 0
nAux  := 0 //para permitir a troca dos valores

@04,01 to 18,47 Double Color 'b/n' //Desenhar borda externa maxima
InKey(1)
@05,02 to 17,46 Double Color 'g/n' //Desenhar borda externa media
InKey(1)
@06,03 to 16,45 Double Color 'rb/n' //Desenhar borda externa minima
InKey(1)

@08,12 say 'INVERSOR DE NUMEROS  :D'
@09,10 say 'Numero 1 = '
@10,10 say 'Numero 2 = '

@09,21 get nNum1 picture '999.99'
@10,21 get nNum2 picture '999.99'
read

@11,10 say 'Invertendo...'

nAux  := nNum1
nNum1 := nNum2 //INVERTENDO NUMEROS
nNum2 := nAux

InKey(2)
@13,10 say 'Invertido!'
@14,10 say 'Numero 1 = ' + AllTrim(Str(nNum1)) + ' e ' + 'Numero 2 = ' + AllTrim(Str(nNum2)) Color 'r/n'
//apresentando os num. de forma invertida
