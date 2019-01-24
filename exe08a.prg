Set Date British                                                               //setar sistema de datas brasileiro
Set Epoch to 1940                                                              //setar epoca de 1940 a 2039

Clear                                                                          //limpar tela

dDataVenda   := Date()                                                         //variavel p/ a data atual
dDataEntrega := CToD('')                                                       //variavel p/ a data de entrega da compra

nQtdProduto1   := 0
nQtdProduto2   := 0
nQtdProduto3   := 0                                                            // variaveis p/ a quantidade de cada produto

nPrecoProduto1 := 10
nPrecoProduto2 := 5.25
nPrecoProduto3 := 20                                                           //variaves p/ o preco de cada produto

cNomeProduto1  := Space(50)
cNomeProduto2  := Space(50)
cNomeProduto3  := Space(50)                                                    //variaveis p/ o nome de cada produto

@04,01 say 'Nome do produto 1: '
@05,01 say 'Nome do produto 2: '
@06,01 say 'Nome do produto 3: '                                               //requsitando os nomes dos produtos

@04,20 get cNomeProduto1  picture '@!' valid !Empty(cNomeProduto1) color 'w/n'
@05,20 get cNomeProduto2  picture '@!' valid !Empty(cNomeProduto2) color 'w/n'
@06,20 get cNomeProduto3  picture '@!' valid !Empty(cNomeProduto3) color 'w/n'
read                                                                           //lendo os nomes dos produtos inseridos

@08,01 say 'Data Venda: ' + DToC(dDataVenda)                                   //aprensentando a data atual da compra

@08,25 say 'Data Entrega: '                                                    //solicitando a data p/ entrega da compra

@08,39 get dDataEntrega valid !Empty(dDataEntrega) color 'w/n'
read                                                                           //lendo a data de entrega informada

@09,01 say '-----------------------------------------------------'
@10,01 say '       PRODUTO      |   QUANTIDADE   |    PRECO    |'              //desenhar tabela

@11,01 say AllTrim(cNomeProduto1)
@12,01 say AllTrim(cNomeProduto2)
@13,01 say AllTrim(cNomeProduto3)                                              //apresentando nomes dos produtos

@11,28 get nQtdProduto1   picture '999'          valid nQtdProduto1   >= 0 color 'w/n'
@11,40 get nPrecoProduto1 picture '@E 99,999.99' valid nPrecoProduto1 >  0 color 'w/n'
@12,28 get nQtdProduto2   picture '999'          valid nQtdProduto2   >= 0 color 'w/n'
@12,40 get nPrecoProduto2 picture '@E 99,999.99' valid nPrecoProduto2 >  0 color 'w/n'
@13,28 get nQtdProduto3   picture '999'          valid nQtdProduto3   >= 0 color 'w/n'
@13,40 get nPrecoProduto3 picture '@E 99,999.99' valid nPrecoProduto3 >  0 color 'w/n'
read                                                                           //lendo os dados inseridos p/ os produtos

@15,01 say '-----------------------------------------------------'

@16,35 say 'Total = ' + AllTrim(Transform(((nPrecoProduto1*nQtdProduto1) + (nPrecoProduto2*nQtdProduto2) + (nPrecoProduto3*nQtdProduto3)), '@E 99,999.99'))
                                                                               //exibir valor total da compra para o usuario

