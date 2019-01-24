/*
Nome do Cliente:
Data da Venda: 99/99/99             Prazo para Entrega: 999 dias
-------------------------------------------------------------------
|       PRODUTO      |   QUANTIDADE   |    PRECO    |    TOTAL    |
|aaaaaaaaaaaaaaaaaaaa|   999999.999   |  99,999.99  |             |
-------------------------------------------------------------------
Data de Entrega: 99/99/99           Total da Compra R$ 99,999.99
*/

Set Date British                                                                  // setar sistema de datas brasileiro
Set Epoch to 1940                                                                 // setar epoca de 1940 a 2039

do while .t.                                                                      // la‡o de repeticao do programa

   Clear                                                                          // limpar tela

   dDataVenda    := Date()                                                        // variavel p/ a data atual
   cNomeCliente  := Space (50)
   nTotalCompra  := 0                                                             // variavel p/ armazenar o valor total da compra
   nDiasPrazo    := 0
   nLinha        := 5                                                             // variavel p/ controle da linha

   @ 01, 01 say 'Nome do Cliente: '
   @ 02, 01 say 'Data da Venda: ' + DToC(dDataVenda)
   @ 02, 37 say 'Prazo para Entrega:     dias'

   @ 01, 18 get cNomeCliente            picture '@!'           valid !Empty(cNomeCliente) color 'w/n'
   @ 02, 57 get nDiasPrazo              picture '999'          valid nDiasPrazo    >= 0   color 'w/n'

   read                                                                           // lendo dias do prazo de entrega

   @ 03, 01 say '-------------------------------------------------------------------'
   @ 04, 01 say '|       PRODUTO      |   QUANTIDADE   |    PRECO    |    TOTAL    |' //desenhar tabela

   nContador     := 0                                                             // variavel que controla o loop

   do while nContador < 4

      if lastKey() != 27

         nQtdProduto   := 0                                                       // variavel p/ a quantidade do produto
         nPrecoProduto := 0                                                       // variavel p/ o preco do produto
         cNomeProduto  := Space (20)                                              // variavel p/ o nome do produto

         @ nLinha, 01 say '|                    |                |             |             |' // desenhando barras

         @ nLinha, 02 get cNomeProduto  picture '@!'           valid !Empty(cNomeProduto) color 'w/n'
         @ nLinha, 26 get nQtdProduto   picture '999999.999'   valid nQtdProduto   > 0    color 'w/n'
         @ nLinha, 40 get nPrecoProduto picture '@E 99,999.99' valid nPrecoProduto > 0    color 'w/n'

         read                                                                     //lendo os dados inseridos p/ o produto

         @ nLinha, 58 say AllTrim(Transform((nQtdProduto*nPrecoProduto), '@E 99,999.99'))

         nTotalCompra += (nQtdProduto*nPrecoProduto)
         nLinha++
         nContador++

      else

         nOpcaoEscolhida := alert('Encerrar Compra ?', {'Sim', 'Nao', 'Cancelar Venda'})

         if nOpcaoEscolhida == 1 .or. nOpcaoEscolhida == 3
            exit

         endif

      endif

   enddo

   if nOpcaoEscolhida == 3
      loop

   endif

   @ nLinha+1, 01 say '-------------------------------------------------------------------' // desenhar final da tabela
   @ nLinha+2, 01 say 'Data de Entrega: ' + DToC(dDataVenda + nDiasPrazo)        //aprensentando a data p/ entrega da compra
   @ nLinha+2, 37 say 'Total da Compra R$ ' + AllTrim(Transform((nTotalCompra), '@E 99,999.99'))                     //exibir valor total da compra

   inKey(0)

   nOpcaoEscolhida := alert('Nova Venda ou Encerrar ?', {'Nova Venda', 'Encerrar'})

   if nOpcaoEscolhida == 2
      exit

   endif

enddo
