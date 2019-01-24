/* V¡tor Pires Correa      Prova 4 Num 16

   Nome Cliente: aaaaaaaaaaaaaaaaaaaaaaaaa  Data Ordem Servico: 99/99/99
   Nome do Tecnico: aaaaaaaaaaaaaaaaaaaaaa  Descricao Equipamento: aaaaaaaaaaa
   Data da Compra: 99/99/99                 Num. Ordem Servico: 99999

   PROD/SERV: A       DESCRICAO PRODUTO/SERVICO: AAAAAAAAAAAAAAAAAAAAAAAAA

   QTD: 999.999,99    PRECO UNIT: 999,999.99     PRECO TOTAL R$ 999.999,99
   PRECO: 999.999,99  COMISSAO TECNICO: 999.99%

                      (VALOR ABATIDO DEVIDO A GARANTIA!)   TOTAL R$ 999,999.99

   A ORDEM DE SERVICO SERA TOTALMENTE COBERTA PELA GARANTIA!

   CNPJ DA EMPRESA: 99999999999999   NUM DA NOTA: 999999999
*/


Set Date British
Set Epoch to 1940

nNumeroOS                := 1

do while .t.

   Clear

   cNomeCliente          := Space(25)
   cNomeTecnico          := Space(22)
   cDescricaoEquipamento := Space(11)
   dDataOrdemServico     := CToD('')
   dDataCompra           := CToD('')
   nValorTotalOS         := 0
   nTotalComissaoTecnico := 0

   @ 01, 03 say 'Nome Cliente: '
   @ 01, 45 say 'Data Ordem Servico: '
   @ 02, 03 say 'Nome Tecnico: '
   @ 02, 45 say 'Descricao Equipamento: '
   @ 03, 03 say 'Data da Compra: '
   @ 03, 45 say 'Num. Ordem Servico: ' + AllTrim(Str(nNumeroOS))

   @ 01, 18 get cNomeCliente                picture '@!'               valid !Empty(cNomeCliente)                       color 'w/n'
   @ 01, 65 get dDataOrdemServico                                      valid !Empty(dDataOrdemServico)                  color 'w/n'
   @ 02, 21 get cNomeTecnico                picture '@!'               valid !Empty(cNomeTecnico)                       color 'w/n'
   @ 02, 68 get cDescricaoEquipamento       picture '@!'               valid !Empty(cDescricaoEquipamento)              color 'w/n'
   @ 03, 20 get dDataCompra                                            valid !Empty(dDataCompra)                        color 'w/n'
   read

   do while lastKey() != 27

      cOpcaoVenda        := Space(1)
      cDescricaoVenda    := Space(25)

      @ 05, 00 Clear to 07, 58

      @ 05, 03 say 'PROD/SERV: '
      @ 05, 23 say 'DESCRICAO PRODUTO/SERVICO: '

      @ 05, 15 get cOpcaoVenda              picture '@!'               valid cOpcaoVenda == 'P' .or. cOpcaoVenda == 'S' color 'w/n'
      @ 05, 50 get cDescricaoVenda          picture '@!'               valid !Empty(cDescricaoVenda)                    color 'w/n'
      read

      if lastKey() == 27

         nOpcaoFinalizar := alert('Finalizar Ordem de Servi‡o ?', {'Sim', 'Nao'})

         if nOpcaoFinalizar == 1

            exit

         else

            loop

         endif

      elseif cOpcaoVenda == 'P'

         nQuantidadeProduto := 0
         nPrecoProdutoUnit  := 0
         nValorTotalProduto := 0

         @ 07, 03 say 'QTD: '
         @ 07, 23 say 'PRECO UNIT: '
         @ 07, 50 say 'PRECO TOTAL R$ '

         @ 07, 09 get nQuantidadeProduto    picture '@E 999,999.99'    valid nQuantidadeProduto > 0                     color 'w/n'
         @ 07, 35 get nPrecoProdutoUnit     picture '@E 999,999.99'    valid nPrecoProdutoUnit  > 0                     color 'w/n'
         read

         nValorTotalProduto := nQuantidadeProduto * nPrecoProdutoUnit

         @ 07, 65 say AllTrim(Transform(nValorTotalProduto, '@E 999,999.99'))

         if dDataOrdemServico < (dDataCompra+365)

            @ 10, 23 say '(VALOR ABATIDO DEVIDO A GARANTA!)'

         else

            nValorTotalOS += nValorTotalProduto

         endif


      elseif cOpcaoVenda == 'S'

         nValorTotalServico := 0
         nPorcComissaoTecn  := 0

         @ 07, 03 say 'PRECO: '
         @ 07, 23 say 'COMISSAO TECNICO:       %'

         @ 07, 11 get nValorTotalServico    picture '@E 999,999.99'    valid nQuantidadeProduto > 0                                 color 'w/n'
         @ 07, 49 get nPorcComissaoTecn     picture '999.99'           valid nPorcComissaoTecn  >= 0 .and. nPorcComissaoTecn <= 100 color 'w/n'
         read

         nTotalComissaoTecnico += ((nValorTotalServico/100)*nPorcComissaoTecn)

         if dDataOrdemServico < (dDataCompra+180)

            @ 10, 23 say '(VALOR ABATIDO DEVIDO A GARANTA!)'

         else

            nValorTotalOS += nValorTotalServico

         endif


      endif

      @ 10, 60 say 'TOTAL R$ ' + AllTrim(Transform(nValorTotalOS, '@E 999,999.99'))

      inKey(0)

   enddo

   if nValorTotalOS == 0

      nCnpjEmpresa          := 0
      nNumeroNota           := 0

      @ 12, 03 say 'A ORDEM DE SERVICO SERA TOTALMENTE COBERTA PELA GARANTIA!'
      @ 14, 03 say 'CNPJ DA EMPRESA: '
      @ 14, 38 say 'NUM DA NOTA: '

      @ 14, 21 get nCnpjEmpresa             picture '99999999999999'   valid !Empty(nCnpjEmpresa)                                   color 'w/n'
      @ 14, 21 get nNumeroNota              picture '999999999'        valid !Empty(nNumeroNota)                                    color 'w/n'

   endif

   if nTotalComissaoTecnico > 0

      @ 16, 03 say 'Valor total da comissao do Tecnico R$ ' + AllTrim(Transform('@E 999,999.99', nTotalComissaoTecnico))

   endif

   nNumeroOS++

enddo

