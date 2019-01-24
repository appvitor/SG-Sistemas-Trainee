Set date British                                                               //setar formato de data
Set epoch to 1940                                                              //setar epoca
Clear                                                                          //limpar tela

nNumInteiro := 0
nNumDecimal := 0
cLetra      := Space(1)
cString     := Space(50)
dDataAtual  := Date()
dDataUser   := CToD('')                                                        //variaveis para armazenar dados inseridos

@05,05 say 'Digite um numero inteiro: '
@06,05 say 'Digite um numero com casas decimais: '
@07,05 say 'Digite uma letra: '
@08,05 say 'Digite uma frase: '
@09,05 say 'Digite uma data: '                                                 //requisitando dados ao usuario

@05,31 get nNumInteiro
@06,42 get nNumDecimal
@07,23 get cLetra
@08,23 get cString
@09,22 get dDataUser
read                                                                           //lendo os dados inseridos



@10,05 say 'Data atual : ' + DToC(dDataAtual)


