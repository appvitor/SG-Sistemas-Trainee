Clear //limpar tela

nNumero1 := 0 //primeira variavel numerica
nNumero2 := 0 //segunda variavel numerica

@01,01 say '1o. Numero: '
@02,01 say '2o. Numero: '

@01,13 get nNumero1 picture '999.99'
@02,13 get nNumero2 picture '999.99'
read

//O comando get realiza o posicionamento para a leitura dos dados
//O comando read realiza a leitura dos dados inseridos

nResul   := nNumero1*nNumero2//variavel numerica p/ o resultado

@04,01 say 'O produto entre os numeros ' + AllTrim(Str(nNumero1)) + ' e ' + AllTrim(Str(nNumero2)) + ' = ' + AllTrim(Str(nResul))
//apresenta o resultado p/ o usuario
// funá∆o Str() transforma num. em string!
// a virgula limita o num. de casas!
// sem o numero de casas, ele assume 10, que Ç o tamanho padr∆o!
//funá∆o AllTrim() retira tds os espaáos desnecess†rios das variaveis


