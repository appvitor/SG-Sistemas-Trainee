//V¡tor Pires Corrˆa

do while .t.

   Clear                                                                                                       //limpar tela

   cNome                        := Space(40)
   nQuantidadeVezesParaImprimir := 0
   nContador                    := 0
   nLinha                       := 5

   @ 01, 01 say 'Qual seu Nome: '                                                                              // requisitar nome
   @ 02, 01 say 'Quantas vezes seu nome deve ser impresso ?'                                                   // requisitar vezes p/ repeticao

   @ 01, 16 get cNome                                      valid !Empty(cNome)                                                               color 'w/n'
   @ 02, 44 get nQuantidadeVezesParaImprimir picture '999' valid nQuantidadeVezesParaImprimir >= 1 .and. nQuantidadeVezesParaImprimir <= 999 color 'w/n'

   read                                                                                                        // ler o nome e o numero de vezes a ser repetido

   @ 04, 01 to 24, 50 Double                                                                                   // desenhar borda da area de impressao

   do while nContador < nQuantidadeVezesParaImprimir

      if nLinha < 23                                                                                           // verifica se a linha ‚ menor que 23 e imprime o nome
         @ nLinha, 02 say AllTrim(StrZero(nContador+1, 3)) + ' - ' + AllTrim(cNome)
         nContador++
         nLinha++

      else
         @ 23, 02 say 'Pressione qualquer tecla para continuar...'                                             // se for 23, pede qualquer tecla e apaga os j  impressos

         inKey(0)

         if lastKey() == 27                                                                                    // verifica se a tecla foi ESC p/ interromper
            exit
         endif

         nLinha := 5
         @ 05, 02 Clear to 23,49

      endif

   enddo

   inKey(0)

   nRetornoSair                 := alert('Deseja Encerrar ?', {'Sim', 'Nao'})                                  // questiona se deseja encerrar o programa

   if nRetornoSair == 1                                                                                        // verifica se a opcao de sair foi selecionada
      exit                                                                                                     // encerra o programa
   endif

enddo                                                                                                          // repeti‡ao do programa

