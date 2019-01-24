/* Vitor Pires Correa     Prova 5  Num 15

                   Frutaria VITOR
                   LOGIN =
                   SENHA =

                  LOGIN INCORRETO!
                  SENHA INCORRETA!

                   Frutaria VITOR

                   EFETUAR VENDAS

                        SAIR

                   Frutaria VITOR
Num. Pedido : 999   Nome do Cliente: aaaaaaaaaaaaaaaaaaaa  Leve+ Pague- ? S  N
Limite Credito R$ 999,999.99   Data Venda: 99/99/99   Entrega ? S   N
Endereco: aaaaaaaaaaaaaa  Bairro: aaaaaaaa  Referecia: aaaaaaa  Fone: 999999999

Codigo| Descricao Produto |Preco Unit|Quantidade|Desconto|Total Prod|   TOTAL
 9999   AAAAAAAAAAAAAAAA   999,999.99 99.999.999  99.99%  999,999.99 999,999.99
 9999   AAAAAAAAAAAAAAAA   999,999.99 99.999.999  99.99%  999,999.99 999,999.99
 9999   AAAAAAAAAAAAAAAA   999,999.99 99.999.999  99.99%  999,999.99 999,999.99

                                                      A PAGAR   R$   999,999.99
                                                      RECEBENDO R$   999,999.99
                                                      TROCO     R$   999,999.99
*/


Set date British
Set epoch to 1940

nEstoqueBanana := 155
nEstoquePera   := 117.5
nEstoqueBatata := 859
nNumeroVenda   := 1

do while .t.

   cLogin      := Space(30)
   cSenha      := Space(30)
   lLogin      := .f.
   lSenha      := .f.

   Clear

   @ 02, 20 say 'Frutaria VITOR'
   @ 03, 20 say 'LOGIN = '
   @ 04, 20 say 'SENHA = '

   @ 03, 28 get cLogin                     valid !Empty(cLogin)     color 'w/n'
   @ 04, 28 get cSenha                     valid !Empty(cSenha)     color 'n/n'
   read

   if lastKey() != 27

      if cLogin != 'ADMIN'
         @ 06, 19 say 'LOGIN INCORRETO!'

      else
         lLogin := .t.

      endif

      if cSenha != 'teste123'
         @ 07, 19 say 'SENHA INCORRETA!'

      else
         lSenha := .t.

      endif

      if lLogin == .t. .and. lSenha == .t.

         @ 03, 00 Clear to 24, 79

         @ 04, 20 prompt 'EFETUAR VENDAS'
         @ 06, 25 prompt 'SAIR'

         menu to nOpcaoMenu

         if nOpcaoMenu == 1

            do while .t.

               cNomeCliente     := Space(20)
               nLimiteCredito   := 0
               dDataVenda       := CtoD('')
               nTotalVenda      := 0

               @ 03, 00 Clear to 24,79

               @ 03, 01 say 'Num. Pedido: ' + AllTrim(Str(nNumeroVenda))
               @ 03, 21 say 'Nome Cliente: '
               @ 03, 60 say 'Leve+ Pague- ?'
               @ 04, 01 say 'Limite Credito R$ '
               @ 04, 32 say 'Data Venda:  '
               @ 04, 55 say 'Entrega ? '

               @ 03, 38 get cNomeCliente   picture '@!'                       valid !Empty(cNomeCliente)   color 'w/n'
               read

               if lastKey() != 27
                  @ 03, 75 prompt 'S'
                  @ 03, 78 prompt 'N'

                  menu to nOpcaoPromocao

                  if nOpcaoPromocao != 1 .and. nOpcaoPromocao != 2
                     loop

                  endif

               else
                  loop

               endif

               @ 04, 19 get nLimiteCredito picture '@E 999,999.99'            valid nLimiteCredito > 0     color 'w/n'
               @ 04, 44 get dDataVenda                                        valid !Empty(dDataVenda)     color 'w/n'
               read

               if lastKey() != 27

                  @ 04, 65 prompt 'S'
                  @ 04, 69 prompt 'N'

                  menu to nOpcaoEntrega

                  if nOpcaoEntrega == 1
                     cEnderecoEntrega     := Space(14)
                     cBairroEntrega       := Space(8)
                     cReferenciaEntrega   := Space(7)
                     cFoneEntrega         := Space(9)

                     @ 05, 01 say 'Endereco: '
                     @ 05, 27 say 'Bairro: '
                     @ 05, 45 say 'Referencia: '
                     @ 05, 65 say 'Fone: '

                     @ 05, 11 get cEnderecoEntrega      picture '@!'           valid !Empty(cEnderecoEntrega)                          color 'w/n'
                     @ 05, 35 get cBairroEntrega        picture '@!'           valid !Empty(cBairroEntrega)                            color 'w/n'
                     @ 05, 56 get CReferenciaEntrega    picture '@!'           valid !Empty(cReferenciaEntrega)                        color 'w/n'
                     @ 05, 71 get CFoneEntrega          picture '@!'           valid !Empty(cFoneEntrega) .and. (len(cFoneEntrega) == 8 .or. len(cFoneEntrega) == 9) color 'w/n'
                     read

                     if lastKey() == 27
                        loop

                     endif

                     nTotalVenda += 5

                  elseif nOpcaoEntrega != 2
                     loop

                  endif

                  @ 07, 01 say 'Codigo| Descricao Produto |Preco Unit|Quantidade|Desconto|Total Prod|   TOTAL'

                  nLinha := 08

                  do while .t.

                     nCodigoProduto       := 0
                     nQuantidadeProduto   := 0
                     nPrecoProduto        := 0
                     nPorcDescontoProduto := 0
                     nPorcMaximoDesconto  := 0
                     nEstoqueProduto      := 0
                     nPrecoFinalProduto   := 0

                     @ nLinha, 02 get nCodigoProduto     picture '9999'         valid nCodigoProduto == 1500 .or. nCodigoProduto == 2501 .or. nCodigoProduto == 3001  color 'w/n'
                     read

                     if nCodigoProduto == 1500

                        @ nLinha, 09 say 'Banana Prata'

                        nPrecoProduto   := 1.50
                        nPorcMaximoDesconto := 20
                        nEstoqueProduto := nEstoqueBanana

                     elseif nCodigoProduto == 2501
                        @ nLinha, 09 say 'Pera Argentina'

                        nPrecoProduto   := 9.00
                        nPorcMaximoDesconto := 15
                        nEstoqueProduto := nEstoquePera

                     elseif nCodigoProduto == 3001
                        @ nLinha, 09 say 'Batata Peruana'

                        nPrecoProduto := 5.00
                        nPorcMaximoDesconto := 10
                        nEstoqueProduto := nEstoqueBatata

                     elseif lastKey() == 27
                        @ nLinha, 00 Clear to nLinha, 79

                        nTotalPago   := 0
                        nRecebendo     := 0
                        lCartaoUsado := .f.

                        do while nTotalPago < nTotalVenda

                           @ nLinha+2, 00 Clear to nLinha+7, 79

                           @ nLinha+2, 55 say 'A PAGAR   R$' + AllTrim(Transform(nTotalVenda-nTotalPago, '@E 999,999.99'))
                           @ nLinha+3, 55 say 'RECEBENDO R$'

                           nOpcaoPagamento := alert('Qual a forma de Pagamento ?', {'DINHEIRO', 'CARTAO DE CREDITO', 'CHEQUE'})

                           if nOpcaoPagamento == 1 .or. (nOpcaoPagamento == 2 .and. lCartaoUsado == .f.) .or. nOpcaoPagamento == 3

                              if nOpcaoPagamento == 2
                                 lCartaoUsado := .t.

                              endif

                              @ nLinha+3, 70 get nRecebendo picture '@E 999,999.99'        valid nRecebendo > 0                                                       color 'w/n'
                              read

                              if lastKey() == 27
                                 loop

                              elseif nPagando > nTotalVenda
                                 @ nLinha+4, 55 say 'TROCO     R$' + AllTrim(Transform(nPagando - nTotalVenda, '@E 999,999.99'))

                                 nTotalPago := nTotalVenda

                              else
                                 nTotalPago += nPagando

                              endif

                           elseif nOpcaoPagamento == 2 .and. lCartaoUsado == .t.
                                 @ nLinha+7, 01 say 'ê permitido utilizar a forma de CARTAO DE CREDITO apenas uma vez! VERIFIQUE!'

                                 inKey(0)
                                 loop

                           endif

                        enddo

                     else
                        loop

                     endif

                     @ nLinha, 28 say AllTrim(Transform(nPrecoProduto, '@E 999,999.99'))
                     @ nLinha, 56 say '%'

                     @ nLinha, 39 get nQuantidadeProduto   picture '@E 99,999.999' valid !Empty(nQuantidadeProduto)                                                   color'w/n'
                     @ nLinha, 51 get nPorcDescontoProduto picture '99.99'         valid !Empty(nPorcDescontoProduto)                                                 color 'w/n'
                     read

                     if lastKey() == 27

                        @ nLinha, 00 Clear to nLinha, 79
                        loop

                     elseif nQuantidadeProduto <= 0 .or. nQuantidadeProduto > nEstoqueProduto

                        @ nLinha+1, 39 say 'Quantidade invalida!'

                        inKey(0)

                        @nLinha, 00 Clear to nLinha+1, 79

                        loop

                     elseif nPorcDescontoProduto < 0 .or. nPorcDescontoProduto > nPorcMaximoDesconto

                        @ nLinha+1, 50 say 'Desconto invalido!'

                        inKey(0)

                        @nLinha, 00 Clear to nLinha+1, 79

                        loop

                     else

                        nPrecoFinalProduto := (nPrecoProduto-((nPrecoProduto/100)*nPorcDescontoProduto))*nQuantidadeProduto
                        nTotalVenda += nPrecoFinalProduto

                        @ nLinha, 59 say AllTrim(Transform(nPrecoFinalProduto, '@E 999,999.99'))
                        @ nLinha, 70 say AllTrim(Transform(nTotalVenda, '@E 999,999.99'))

                        if nCodigoProduto == 1500
                           nEstoqueBanana -= nEstoqueProduto

                        elseif nCodigoProduto == 2501
                           nEstoquePera -= nEstoqueProduto

                        else
                           nEstoqueBatata -= nEstoqueProduto

                        endif

                     endif

                     if nLinha == 10

                       inKey(2)

                       @ 08, 01 Clear to 10, 79

                       nLinha := 08

                     else
                        nLinha++

                     endif

                  enddo

               else
                  nOpcaoSair := alert('Deseja Encerrar o Programa ?', {'Sim', 'Nao'})

                  if nOpcaoSair == 1
                     exit

                  else
                    loop

                  endif

               endif

            enddo

         else
            exit

         endif

         inKey(0)

      else
         inKey(0)
         loop

      endif

   else
      exit

   endif

enddo

