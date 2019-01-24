/*Vitor Pires Correa     Prova 02 Num: 16

  Quantos empregados serao analisados? 99999

  Nome 9: aaaaaaaaaaaaaaaaaaaaaaaaa
  Sexo (M/F): a
  Data de Nascimento: 99/99/99
  Data de Admissao:   99/99/99
  Data de Demissao:   99/99/99
  Valor do Salario Base: 999.999,99
  Adicional Noturno:        999,99%
  Adicional Insalubridade:  999.99%

*/

Set Epoch to 1940
Set Date British

do while .t.

   Clear

   nQuantidadeAnalises          := 0
   nHomensAposentados           := 0
   nMulheresAposentadas         := 0
   nQuantidadeHomensMais80      := 0
   nQuantidadeMulheresAntes2003 := 0
   nValorTotalRemuneracao       := 0

   @ 01, 03 say 'Quantos empregados serao analisados? '

   @ 01, 41 get nQuantidadeAnalises          picture '99999'         valid nQuantidadeAnalises > 0                                         color 'w/n'
   read

   if lastKey() != 27

      for n := 1 to nQuantidadeAnalises

         @ 03, 01 Clear to 10, 79

         cNome                  := Space(25)
         cSexo                  := Space(1)
         dDataNascimento        := CToD ('')
         dDataAdmissao          := CToD ('')
         dDataDemissao          := CToD ('')
         nSalarioBase           := 0
         nPorcAdicionaNoturno   := 0
         nPorcAdicionaInsalubre := 0

         @ 03, 03 say 'Nome ' + AllTrim(Str(n)) + ': '
         @ 04, 03 say 'Sexo (M/F): '
         @ 05, 03 say 'Data de Nascimento: '
         @ 06, 03 say 'Data de Admissao: '
         @ 07, 03 say 'Data de Demissao: '
         @ 08, 03 say 'Valor do Salario Base: '
         @ 09, 03 say 'Adicional Noturno:              %'
         @ 10, 03 say 'Adicional Insalubridade:        %'

         @ 03, 11 get cNome                  picture '@!'            valid !Empty(cNome)                                                   color 'w/n'
         @ 04, 15 get cSexo                  picture '@!'            valid cSexo == 'M' .or. cSexo == 'F'                                  color 'w/n'
         @ 05, 23 get dDataNascimento                                valid !Empty(dDataNascimento)                                         color 'w/n'
         @ 06, 23 get dDataAdmissao                                  valid !Empty(dDataAdmissao) .and. dDataAdmissao > dDataNascimento     color 'w/n'
         @ 07, 23 get dDataDemissao                                  valid !Empty(dDataDemissao) .and. dDataDemissao >= dDataAdmissao      color 'w/n'
         @ 08, 26 get nSalarioBase           picture '@E 999,999.99' valid nSalarioBase > 0                                                color 'w/n'
         @ 09, 29 get nPorcAdicionaNoturno   picture '@E 999.99'     valid nPorcAdicionaNoturno   >= 0 .and. nPorcAdicionaNoturno   <= 100 color 'w/n'
         @ 10, 29 get nPorcAdicionaInsalubre picture '@E 999.99'     valid nPorcAdicionaInsalubre >= 0 .and. nPorcAdicionaInsalubre <= 100 color 'w/n'
         read

         if lastKey() == 27

            nOpcao              := alert('Menu de Opcoes', {'Processar', 'Retornar', 'Cancelar'})

            if nOpcao == 1

               @ 12, 03 say 'Funcionarios analisados ate o momento: ' + AllTrim(Str(n))
               @ 13, 03 say 'Percentual de Homens Aposentados: '      + Transform(nPorcHomensAposentados,   '999.99') + '%'
               @ 14, 03 say 'Percentual de Mulheres Aposentadas: '    + Transform(nPorcMulheresAposentadas, '999.99') + '%'
               @ 15, 03 say 'Valor Total da Remuneracao R$ '          + Transform(nValorTotalRemuneracao, '@E 999,999.99')

            elseif nOpcao == 3
              exit

            else
              n--

            endif

         else

            lAposentado         := .f.
            nlIdade             := Year(dDataDemissao) - Year(dDataNascimento)
            nAnosTrabalhados    := Year(dDataDemissao) - Year(dDataAdmissao)

            if Month(dDataDemissao) < Month(dDataNascimento)
               nIdade--

            elseif Month(dDataDemissao) == Month(dDataNascimento)

               if Day(dDataDemissao) < Day(dDataNascimento)
                  nIdade--

               endif

            endif

            if Month(dDataDemissao) < Month(dDataAdmissao)
               nAnosTrabalhados--

            elseif Month(dDataDemissao) == Month(dDataAdmissao)

               if Day(dDataDemissao) < Day(dDataAdmissao)
                  nAnosTrabalhados--

               endif

            endif

            if cSexo == 'M' .and. nAnosTrabalhados >= 30 .and. nIdade >= 65
               nHomensAposentados++
               lAposentado      := .t.

            elseif cSexo == 'F' .and. nAnosTrabalhados >= 25 .and. nIdade >= 60
               nMulheresAposentadas++
               lAposentado      := .t.

            endif

            if lAposentado == .t.

               nValorAposentadoria := 0
               nValorParaCalculo := nSalarioBase

               if Year(dDataAdmissao) <= 2005 .and. Year(dDataDemissao) >= 2006
                  nValorParaCalculo += (nValorParaCalculo/100)*8

               endif

               if Year(dDataAdmissao) <= 2009 .and. Year(dDataDemissao) >= 2010
                  nValorParaCalculo -= (nValorParaCalculo/100)*3

               endif

               nValorAposentadoria := (nValorParaCalculo * nAnosTrabalhados)
               nValorTotalRemuneracao += nValorAposentadoria

            endif

            if cSexo == 'M' .and. nIdade >= 80
               nQuantidadeHomensMais80++

            elseif cSexo == 'F' .and. Year(dDataAdmissao) < 2003
               nQuantidadeMulheresAntes2003++

            endif

         endif

         nPorcHomensAposentados   := ((nHomensAposentados + nMulheresAposentadas)/100)*nHomensAposentados
         nPorcMulheresAposentadas := ((nHomensAposentados + nMulheresAposentadas)/100)*nMulheresAposentadas

         inKey(0)

      next

   endif

enddo

