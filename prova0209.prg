//V¡tor Pires Corrˆa Prova 02 N£mero 09
/*
      Supermercados KOCH          Filial: 99        Data de Venda: 99/99/99
Nome Cliente: aaaaaaaaaaaaaaa   Vendedor: aaaaaaaaaaaaaaa   Porct.Vend: 999.99%

|COD.|    PRODUTO    |  QTD/KG |  VALOR  | VALOR DESC|TOTAL COM DESC|  TOTAL  |
|9999|AAAAAAAAAAAAAAA|99999.999|99,999.99| 99,999.99 |  99,999.99   |99,999.99|
|9999|AAAAAAAAAAAAAAA|99999.999|99,999.99| 99,999.99 |  99,999.99   |99,999.99|
|9999|AAAAAAAAAAAAAAA|99999.999|99,999.99| 99,999.99 |  99,999.99   |99,999.99|
|9999|AAAAAAAAAAAAAAA|99999.999|99,999.99| 99,999.99 |  99,999.99   |99,999.99|
|9999|AAAAAAAAAAAAAAA|99999.999|99,999.99| 99,999.99 |  99,999.99   |99,999.99|
                                                        99,999.99    99,999.99

     NUMERO DE PARCELAS: 99                            VALOR PAGO R$ 99,999.99
  |NUM.P.|   VALOR   | VENCTO |                             TROCO R$ 99,999.99
  |  11  | 99.999,99 |99/99/99|
  |  11  | 99.999,99 |99/99/99| NOME: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  |  11  | 99.999,99 |99/99/99|                 NUMERO CARTAO: 999999999999999
  |  11  | 99.999,99 |99/99/99|
  |  11  | 99.999,99 |99/99/99|               COD.BANCO: 999 COD.AGENCIA: 9999
  |  11  | 99.999,99 |99/99/99|                          COD.CONTA: 9999999999
  |  11  | 99.999,99 |99/99/99|
  |  11  | 99.999,99 |99/99/99|                      VENDEDOR: aaaaaaaaaaaaaaa
  |  11  | 99.999,99 |99/99/99|                          COMISSAO R$ 99,999.99
  |  11  | 99.999,99 |99/99/99|

*/

Set Date British
Set epoch to 1940

do while .t.                                                                                     // repeticao do programa

   Clear

   cNomeCliente                   := Space(15)
   cNomeVendedor                  := Space(15)
   dDataVenda                     := CToD('')
   nNumeroFilial                  := 0
   nValorTotalCompra              := 0
   nValorTotalCompraDesconto      := 0
   nPercentualComissaoVendedor    := 0

   @ 01, 07 say 'Supermercados KOCH'
   @ 01, 35 say 'Filial: '
   @ 01, 53 say 'Data de Venda: '
   @ 02, 01 say 'Nome Cliente:'
   @ 02, 33 say 'Vendedor: '
   @ 02, 61 say 'Porct.Vend:       %'

   @ 01, 43 get nNumeroFilial                      picture '99'           valid !Empty(nNumeroFilial)                                                     color 'w/n'
   @ 01, 68 get dDataVenda                                                valid !Empty(dDataVenda)                                                        color 'w/n'
   @ 02, 15 get cNomeCliente                       picture '@!'           valid !Empty(cNomeCliente)                                                      color 'w/n'
   @ 02, 43 get cNomeVendedor                      picture '@!'           valid !Empty(cNomeVendedor)                                                     color 'w/n'
   @ 02, 73 get nPercentualComissaoVendedor        picture '999.99'       valid nPercentualComissaoVendedor >= 0 .and. nPercentualComissaoVendedor <= 100 color 'w/n'
   read

   @ 04, 01 say '|COD.|    PRODUTO    |  QTD/KG |  VALOR  | VALOR DESC|TOTAL COM DESC|  TOTAL  |'

   nLinha                         := 5
   nContador                      := 0

   do while nContador < 5

      nCodigoProduto              := 0
      cNomeProduto                := Space(15)
      nQuantidadeProduto          := 0
      nValorProduto               := 0
      nValorDescontoProduto       := 0

      @ nLinha, 01 say '|'
      @ nLinha, 06 say '|'
      @ nLinha, 22 say '|'
      @ nLinha, 32 say '|'
      @ nLinha, 42 say '|'
      @ nLinha, 54 say '|'
      @ nLinha, 69 say '|'
      @ nLinha, 79 say '|'

      @ nLinha, 02 get nCodigoProduto              picture '9999'         valid !Empty(nCodigoProduto)                                                    color 'w/n'
      @ nLinha, 07 get cNomeProduto                picture '@!'           valid !Empty(cNomeProduto)                                                      color 'w/n'
      @ nLinha, 23 get nQuantidadeProduto          picture '99999.999'    valid !Empty(nQuantidadeProduto)                                                color 'w/n'
      @ nLinha, 33 get nValorProduto               picture '@E 99,999.99' valid !Empty(nValorProduto)                                                     color 'w/n'
      @ nLinha, 44 get nValorDescontoProduto       picture '@E 99,999.99' valid nValorDescontoProduto >= 0                                                color 'w/n'
      read

      if lastKey() != 27

         nValorTotalCompraDesconto += ((nValorProduto-nValorDescontoProduto)*nQuantidadeProduto)
         nValorTotalCompra += (nValorProduto*nQuantidadeProduto)

         @ nLinha, 57 say AllTrim(Transform(nValorTotalCompraDesconto, '@E 99,999.99'))
         @ nLinha, 70 say AllTrim(Transform(nValorTotalCompra, '@E 99,999.99'))

         nLinha++
         nContador++

      else

         @ nLinha, 01 Clear to nLinha, 79

         nOpcaoSelecionada        := alert('O que deseja ? ', {'Finalizar Venda', 'Continuar Venda', 'Cancelar Venda'})

         if nOpcaoSelecionada == 1 .or. nOpcaoSelecionada == 3

            exit

         else

            nContador--

            if nContador == -1

               nContador          := 0

            endif

         endif

      endif

      if nContador == 5

        @ 05, 01 Clear to 09, 79

        nLinha                    := 5
        nContador                 := 0

      endif

   enddo

   @ nLinha, 57 say AllTrim(Transform(nValorTotalCompraDesconto, '@E 99,999.99'))
   @ nLinha, 70 say AllTrim(Transform (nValorTotalCompra, '@E 99,999.99'))

   if nOpcaoSelecionada == 1

      nOpcaoConsumidorFinal       := alert('Consumidor Final ?', {'Sim', 'Nao'})

      if nOpcaoConsumidorFinal == 1

         nValorTotalCompra        := (nValorTotalCompra - ((nValorTotalCompra/100)*3))

         @ nLinha, 70 say AllTrim(Transform(nValorTotalCompra, '@E 99,999.99'))

      endif

      nValorTotalPago             := 0
      lPrazoJaUtilizado           := .f.

      do while nValorTotalPago < nValorTotalCompraDesconto

         nOpcaoPagamento          := alert('Qual a forma de Pagamento? ', {'Dinheiro', 'Cartao de Credito', 'Cheque', 'A Prazo'})

         if nOpcaoPagamento < 4

            nValorPago            := 0

            @ nLinha+2, 56 say 'VALOR PAGO R$ '

            @ nLinha+2, 70 get nValorPago          picture '@E 99,999.99' valid nValorPago >= nValorTotalCompraDesconto                                   color 'w/n'
            read

         elseif nOpcaoPagamento == 4 .and. lPrazoJaUtilizado == .f.

            nQuantidadeParcelas   := 0

            @ nLinha+2, 06 say 'NUMERO DE PARCELAS: '

            @ nLinha+2, 26 get nQuantidadeParcelas picture '99'           valid nQuantidadeParcelas >= 2 .and. nQuantidadeParcelas <= 10                  color 'w/n'
            read

            @ nLinha+3, 03 say '|NUM.P.|   VALOR   | VENCTO |'

            nLinhaLacoPrazo       := nLinha+4
            nContador             := 1

            do while nContador <= nQuantidadeParcelas

               @ nLinhaLacoPrazo, 03 say '|'
               @ nLinhaLacoPrazo, 10 say '|'
               @ nLinhaLacoPrazo, 22 say '|'
               @ nLinhaLacoPrazo, 31 say '|'

               @ nLinhaLacoPrazo, 07 say AllTrim(StrZero((nContador),2))
               @ nLinhaLacoPrazo, 13 say AllTrim(Transform((nValorTotalCompraDesconto/nQuantidadeParcelas), '@E 99,999.99'))
               @ nLinhaLacoPrazo, 24 say dDataVenda+(30*nContador)

               nLinhaLacoPrazo++
               nContador++

            enddo

            lPrazoJaUtilizado := .t.

         endif

      enddo

   elseif nOpcaoSelecionada == 3

      loop

   endif

   @ nLinha+3, 61 say 'TROCO R$ ' + AllTrim(Transform((nTotalValorPago - nValorTotalCompraDesconto), '@E 99,999.99'))

   if nOpcaoPagamento == 1 .and. nOpcaoConsumidorFinal == 2

      @ nLinha+5, 54 say 'VENDEDOR: '   + AllTrim(cNomeVendedor)
      @ nLinha+6, 58 say 'COMISSAO R$ ' + AllTrim(Transform((nValorTotalCompra/100)*nPercentualComissaoVendedor, '@E 99,999.99'))

   endif

   inKey(0)

enddo

