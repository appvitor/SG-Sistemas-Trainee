//Prova 01 - V¡tor Pires Corrˆa - Numero: 15

Set Date British                                                                  // setar formato data
Set Epoch to 1940                                                                 // setar epoca de 1940 a 2039

do while .t.

   Clear                                                                          // limpar tela

   nQuantidadeFaltas1Bimestre1Disciplina := 0
   nQuantidadeFaltas2Bimestre1Disciplina := 0
   nQuantidadeFaltas3Bimestre1Disciplina := 0
   nQuantidadeFaltas4Bimestre1Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 1 disciplina

   nQuantidadeFaltas1Bimestre2Disciplina := 0
   nQuantidadeFaltas2Bimestre2Disciplina := 0
   nQuantidadeFaltas3Bimestre2Disciplina := 0
   nQuantidadeFaltas4Bimestre2Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 2 disciplina

   nQuantidadeFaltas1Bimestre3Disciplina := 0
   nQuantidadeFaltas2Bimestre3Disciplina := 0
   nQuantidadeFaltas3Bimestre3Disciplina := 0
   nQuantidadeFaltas4Bimestre3Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 3 disciplina

   nQuantidadeFaltas1Bimestre4Disciplina := 0
   nQuantidadeFaltas2Bimestre4Disciplina := 0
   nQuantidadeFaltas3Bimestre4Disciplina := 0
   nQuantidadeFaltas4Bimestre4Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 4 disciplina

   nQuantidadeFaltas1Bimestre5Disciplina := 0
   nQuantidadeFaltas2Bimestre5Disciplina := 0
   nQuantidadeFaltas3Bimestre5Disciplina := 0
   nQuantidadeFaltas4Bimestre5Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 5 disciplina

   nQuantidadeFaltas1Bimestre6Disciplina := 0
   nQuantidadeFaltas2Bimestre6Disciplina := 0
   nQuantidadeFaltas3Bimestre6Disciplina := 0
   nQuantidadeFaltas4Bimestre6Disciplina := 0                                     // variaveis p/ armazenar a quantidade de faltas 6 disciplina

   cNomeDisciplina1                      := Space (19)
   cNomeDisciplina2                      := Space (19)
   cNomeDisciplina3                      := Space (19)
   cNomeDisciplina4                      := Space (19)
   cNomeDisciplina5                      := Space (19)
   cNomeDisciplina6                      := Space (19)                            // variaveis p/ armazenar os nomes das disciplinas

   nNota1Disciplina1                     := 0
   nNota2Disciplina1                     := 0
   nNota3Disciplina1                     := 0
   nNota4Disciplina1                     := 0                                     // variaveis p/ armazenar as notas da disciplina 1

   nNota1Disciplina2                     := 0
   nNota2Disciplina2                     := 0
   nNota3Disciplina2                     := 0
   nNota4Disciplina2                     := 0                                     // variaveis p/ armazenar as notas da disciplina 2

   nNota1Disciplina3                     := 0
   nNota2Disciplina3                     := 0
   nNota3Disciplina3                     := 0
   nNota4Disciplina3                     := 0                                     // variaveis p/ armazenar as notas da disciplina 3

   nNota1Disciplina4                     := 0
   nNota2Disciplina4                     := 0
   nNota3Disciplina4                     := 0
   nNota4Disciplina4                     := 0                                     // variaveis p/ armazenar as notas da disciplina 4

   nNota1Disciplina5                     := 0
   nNota2Disciplina5                     := 0
   nNota3Disciplina5                     := 0
   nNota4Disciplina5                     := 0                                     // variaveis p/ armazenar as notas da disciplina 5

   nNota1Disciplina6                     := 0
   nNota2Disciplina6                     := 0
   nNota3Disciplina6                     := 0
   nNota4Disciplina6                     := 0                                     // variaveis p/ armazenar as notas da disciplina 6

   dDataDoSistema                        := date()
   cMesAtual                             := Space(20)
   cDiaDaSemanaAtual                     := Space(20)                             // variaveis p/ armazenar as informa‡oes da data

   nNumeroMatricula                      := 0
   cNomeAluno                            := Space (50)
   dDataNascimentoAluno                  := CToD  ('')
   cNomeDoCursoDoAluno                   := Space (50)
   nSerieAluno                           := 0
   dAnoLetivoAluno                       := CToD ('')
   nValorMensalidadeAluno                := 0                                     // variaveis p/ armazenar as informacoes do aluno


   if dow(dDataDoSistema) == 1                                                    // identifica dia da semana por extenso
      cDiaDaSemanaAtual := 'Domingo'

   elseif dow(dDataDoSistema) == 2
      cDiaDaSemanaAtual := 'Segunda-Feira'

   elseif dow(dDataDoSistema) == 3
      cDiaDaSemanaAtual := 'Ter‡a-Feira'

   elseif dow(dDataDoSistema) == 4
      cDiaDaSemanaAtual := 'Quarta-Feira'

   elseif dow(dDataDoSistema) == 5
      cDiaDaSemanaAtual := 'Quinta-Feira'

   elseif dow(dDataDoSistema) == 6
      cDiaDaSemanaAtual := 'Sexta-Feira'

   elseif dow(dDataDoSistema) == 7
      cDiaDaSemanaAtual := 'S bado'

   endif

   if month(dDataDoSistema) == 1                                                  // identifica mes por extenso
      cMesAtual := 'Janeiro'

   elseif month(dDataDoSistema) == 2
      cMesAtual := 'Fevereiro'

   elseif month(dDataDoSistema) == 3
      cMesAtual := 'Mar‡o'

   elseif month(dDataDoSistema) == 4
      cMesAtual := 'Abril'

   elseif month(dDataDoSistema) == 5
      cMesAtual := 'Maio'

   elseif month(dDataDoSistema) == 6
      cMesAtual := 'Junho'

   elseif month(dDataDoSistema) == 7
      cMesAtual := 'Julho'

   elseif month(dDataDoSistema) == 8
      cMesAtual := 'Agosto'

   elseif month(dDataDoSistema) == 9
      cMesAtual := 'Setembro'

   elseif month(dDataDoSistema) == 10
      cMesAtual := 'Outubro'

   elseif month(dDataDoSistema) == 11
      cMesAtual := 'Novembro'

   elseif month(dDataDoSistema) == 12
      cMesAtual := 'Dezembro'

   endif

   @ 01, 01 say 'Data: '

   @ 01, 07 get dDataDoSistema                                                                                                                       Color 'w/n'

   read                                                                           // le como a data atual, ou personalizada

   Clear                                                                          // limpa a tela p/ inicializa‡aok

   @ 01, 01 say '      FACULDADES MARSON'
   @ 02, 01 say 'Endereco: Rua Fantasiosa, 69'
   @ 03, 01 say 'Telefone: (44)3054-6969 E-mail: faculdadesMarson@mail.com'
   @ 04, 01 say 'Maring , ' + StrZero(day(dDataDoSistema),2) + ' de ' + AllTrim(cMesAtual) + ' ( ' + AllTrim(cDiaDaSemanaAtual) + ' ) ' + ' de ' + Str(year(dDataDoSistema))
                                                                                  // informar dados da instituicao

   @ 06, 01 say 'Numero da Matricula: '
   @ 07, 01 say 'Nome do Aluno: '
   @ 08, 01 say 'Data de Nascimento: '
   @ 09, 01 say 'Nome do Curso: '
   @ 10, 01 say 'Serie do Aluno: '
   @ 11, 01 say 'Ano Letivo: '
   @ 12, 01 say 'Valor da Mensalidade: '                                          // pedindo informacoes do aluno

   @ 06, 22 get nNumeroMatricula                      picture '999'                 valid nNumeroMatricula > 0                                       Color 'w/n'
   @ 07, 16 get cNomeAluno                            picture '@!'                  valid !Empty(cNomeAluno)                                         Color 'w/n'
   @ 08, 21 get dDataNascimentoAluno                                                valid !Empty(dDataNascimentoAluno)                               Color 'w/n'
   @ 09, 16 get cNomeDoCursoDoAluno                   picture '@!'                  valid !Empty(cNomeDoCursoDoAluno)                                Color 'w/n'
   @ 10, 17 get nSerieAluno                           picture '9'                   valid nSerieAluno >= 1 .and. nSerieAluno <= 9                    Color 'w/n'
   @ 11, 13 get dAnoLetivoAluno                                                     valid !Empty(dAnoLetivoAluno)                                    Color 'w/n'
   @ 12, 22 get nValorMensalidadeAluno                picture '@E 99,999.99'        valid nValorMensalidadeAluno >= 0                                Color 'w/n'

   read                                                                           // lendo informacoes do aluno

   if lastKey() == 27                                                             // caso pressione ESC, questiona se deseja encerrar o aluno atual
      nOpcaoEncerrarAluno                := alert('Encerrar Cadastro ?', {'Sim', 'Nao'})

      if nOpcaoEncerrarAluno == 1
         exit

      endif

   endif

   @ 14, 30 say 'BOLETIM ANUAL'
   @ 15, 01 say '___________________________________________________________________________'
   @ 16, 01 say '|DISCIPLINA         | 1B.    F | 2B.    F | 3B.    F | 4B.    F |RESULTADO|'                                 // desenhar boletim

   @ 17, 02 get cNomeDisciplina1                      picture '@!'                  valid !Empty(cNomeDisciplina1)                                   Color 'w/n'
   @ 17, 22 get nNota1Disciplina1                     picture '@E 99.9'             valid nNota1Disciplina1 >= 0 .and. nNota1Disciplina1 <= 10       Color 'w/n'
   @ 17, 28 get nQuantidadeFaltas1Bimestre1Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 18, 02 get cNomeDisciplina2                      picture '@!'                  valid !Empty(cNomeDisciplina2)                                   Color 'w/n'
   @ 18, 22 get nNota1Disciplina2                     picture '@E 99.9'             valid nNota1Disciplina2 >= 0 .and. nNota1Disciplina2 <= 10       Color 'w/n'
   @ 18, 28 get nQuantidadeFaltas1Bimestre2Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre2Disciplina >= 0                 Color 'w/n'
   @ 19, 02 get cNomeDisciplina3                      picture '@!'                  valid !Empty(cNomeDisciplina3)                                   Color 'w/n'
   @ 19, 22 get nNota1Disciplina3                     picture '@E 99.9'             valid nNota1Disciplina3 >= 0 .and. nNota1Disciplina3 <= 10       Color 'w/n'
   @ 19, 28 get nQuantidadeFaltas1Bimestre3Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre3Disciplina >= 0                 Color 'w/n'
   @ 20, 02 get cNomeDisciplina4                      picture '@!'                  valid !Empty(cNomeDisciplina4)                                   Color 'w/n'
   @ 20, 22 get nNota1Disciplina4                     picture '@E 99.9'             valid nNota1Disciplina4 >= 0 .and. nNota1Disciplina4 <= 10       Color 'w/n'
   @ 20, 28 get nQuantidadeFaltas1Bimestre4Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 21, 02 get cNomeDisciplina5                      picture '@!'                  valid !Empty(cNomeDisciplina5)                                   Color 'w/n'
   @ 21, 22 get nNota1Disciplina5                     picture '@E 99.9'             valid nNota1Disciplina5 >= 0 .and. nNota1Disciplina5 <= 10       Color 'w/n'
   @ 21, 28 get nQuantidadeFaltas1Bimestre5Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre5Disciplina >= 0                 Color 'w/n'
   @ 22, 02 get cNomeDisciplina6                      picture '@!'                  valid !Empty(cNomeDisciplina6)                                   Color 'w/n'
   @ 22, 22 get nNota1Disciplina6                     picture '@E 99.9'             valid nNota1Disciplina6 >= 0 .and. nNota1Disciplina6 <= 10       Color 'w/n'
   @ 22, 28 get nQuantidadeFaltas1Bimestre6Disciplina picture '@E 999'              valid nQuantidadeFaltas1Bimestre6Disciplina >= 0                 Color 'w/n'

   @ 17, 33 get nNota2Disciplina1                     picture '@E 99.9'             valid nNota2Disciplina1 >= 0 .and. nNota2Disciplina1 <= 10       Color 'w/n'
   @ 17, 39 get nQuantidadeFaltas2Bimestre1Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 18, 33 get nNota2Disciplina2                     picture '@E 99.9'             valid nNota2Disciplina2 >= 0 .and. nNota2Disciplina2 <= 10       Color 'w/n'
   @ 18, 39 get nQuantidadeFaltas2Bimestre2Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre2Disciplina >= 0                 Color 'w/n'
   @ 19, 33 get nNota2Disciplina3                     picture '@E 99.9'             valid nNota2Disciplina3 >= 0 .and. nNota2Disciplina3 <= 10       Color 'w/n'
   @ 19, 39 get nQuantidadeFaltas2Bimestre3Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre3Disciplina >= 0                 Color 'w/n'
   @ 20, 33 get nNota2Disciplina4                     picture '@E 99.9'             valid nNota2Disciplina4 >= 0 .and. nNota2Disciplina4 <= 10       Color 'w/n'
   @ 20, 39 get nQuantidadeFaltas2Bimestre4Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 21, 33 get nNota2Disciplina5                     picture '@E 99.9'             valid nNota2Disciplina5 >= 0 .and. nNota2Disciplina5 <= 10       Color 'w/n'
   @ 21, 39 get nQuantidadeFaltas2Bimestre5Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre5Disciplina >= 0                 Color 'w/n'
   @ 22, 33 get nNota2Disciplina6                     picture '@E 99.9'             valid nNota2Disciplina6 >= 0 .and. nNota2Disciplina6 <= 10       Color 'w/n'
   @ 22, 39 get nQuantidadeFaltas2Bimestre6Disciplina picture '@E 999'              valid nQuantidadeFaltas2Bimestre6Disciplina >= 0                 Color 'w/n'

   @ 17, 44 get nNota3Disciplina1                     picture '@E 99.9'             valid nNota3Disciplina1 >= 0 .and. nNota3Disciplina1 <= 10       Color 'w/n'
   @ 17, 50 get nQuantidadeFaltas3Bimestre1Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 18, 44 get nNota3Disciplina2                     picture '@E 99.9'             valid nNota3Disciplina2 >= 0 .and. nNota3Disciplina2 <= 10       Color 'w/n'
   @ 18, 50 get nQuantidadeFaltas3Bimestre2Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre2Disciplina >= 0                 Color 'w/n'
   @ 19, 44 get nNota3Disciplina3                     picture '@E 99.9'             valid nNota3Disciplina3 >= 0 .and. nNota3Disciplina3 <= 10       Color 'w/n'
   @ 19, 50 get nQuantidadeFaltas3Bimestre3Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre3Disciplina >= 0                 Color 'w/n'
   @ 20, 44 get nNota3Disciplina4                     picture '@E 99.9'             valid nNota3Disciplina4 >= 0 .and. nNota3Disciplina4 <= 10       Color 'w/n'
   @ 20, 50 get nQuantidadeFaltas3Bimestre4Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 21, 44 get nNota3Disciplina5                     picture '@E 99.9'             valid nNota3Disciplina5 >= 0 .and. nNota3Disciplina5 <= 10       Color 'w/n'
   @ 21, 50 get nQuantidadeFaltas3Bimestre5Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre5Disciplina >= 0                 Color 'w/n'
   @ 22, 44 get nNota3Disciplina6                     picture '@E 99.9'             valid nNota3Disciplina6 >= 0 .and. nNota3Disciplina6 <= 10       Color 'w/n'
   @ 22, 50 get nQuantidadeFaltas3Bimestre6Disciplina picture '@E 999'              valid nQuantidadeFaltas3Bimestre6Disciplina >= 0                 Color 'w/n'

   @ 17, 55 get nNota4Disciplina1                     picture '@E 99.9'             valid nNota4Disciplina1 >= 0 .and. nNota4Disciplina1 <= 10       Color 'w/n'
   @ 17, 61 get nQuantidadeFaltas4Bimestre1Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 18, 55 get nNota4Disciplina2                     picture '@E 99.9'             valid nNota4Disciplina2 >= 0 .and. nNota4Disciplina2 <= 10       Color 'w/n'
   @ 18, 61 get nQuantidadeFaltas4Bimestre2Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre2Disciplina >= 0                 Color 'w/n'
   @ 19, 55 get nNota4Disciplina3                     picture '@E 99.9'             valid nNota4Disciplina3 >= 0 .and. nNota4Disciplina3 <= 10       Color 'w/n'
   @ 19, 61 get nQuantidadeFaltas4Bimestre3Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre3Disciplina >= 0                 Color 'w/n'
   @ 20, 55 get nNota4Disciplina4                     picture '@E 99.9'             valid nNota4Disciplina4 >= 0 .and. nNota4Disciplina4 <= 10       Color 'w/n'
   @ 20, 61 get nQuantidadeFaltas4Bimestre4Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre1Disciplina >= 0                 Color 'w/n'
   @ 21, 55 get nNota4Disciplina5                     picture '@E 99.9'             valid nNota4Disciplina5 >= 0 .and. nNota4Disciplina5 <= 10       Color 'w/n'
   @ 21, 61 get nQuantidadeFaltas4Bimestre5Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre5Disciplina >= 0                 Color 'w/n'
   @ 22, 55 get nNota4Disciplina6                     picture '@E 99.9'             valid nNota4Disciplina6 >= 0 .and. nNota4Disciplina6 <= 10       Color 'w/n'
   @ 22, 61 get nQuantidadeFaltas4Bimestre6Disciplina picture '@E 999'              valid nQuantidadeFaltas4Bimestre6Disciplina >= 0                 Color 'w/n'

   read                                                                           //lendo nome, notas e faltas das disciplinas

   nMediaDisciplina1                     := (nNota1Disciplina1 + nNota2Disciplina1 + nNota3Disciplina1 + nNota4Disciplina1) / 4
   nMediaDisciplina2                     := (nNota1Disciplina2 + nNota2Disciplina2 + nNota3Disciplina2 + nNota4Disciplina2) / 4
   nMediaDisciplina3                     := (nNota1Disciplina3 + nNota2Disciplina3 + nNota3Disciplina3 + nNota4Disciplina3) / 4
   nMediaDisciplina4                     := (nNota1Disciplina4 + nNota2Disciplina4 + nNota3Disciplina4 + nNota4Disciplina4) / 4
   nMediaDisciplina5                     := (nNota1Disciplina5 + nNota2Disciplina5 + nNota3Disciplina5 + nNota4Disciplina5) / 4
   nMediaDisciplina6                     := (nNota1Disciplina6 + nNota2Disciplina6 + nNota3Disciplina6 + nNota4Disciplina6) / 4      // armazenar as medias das materias

   nQuantidadeDeDependentes              := 0                                     // variavel que armazena o total de disciplinas dependentes
   cNomesDisciplinasDependentes          := Space(50)                             // variavel que armazena os nomes das disciplinas dependentes

   if (nQuantidadeFaltas1Bimestre1Disciplina + nQuantidadeFaltas2Bimestre1Disciplina + nQuantidadeFaltas3Bimestre1Disciplina + nQuantidadeFaltas4Bimestre1Disciplina) <= 48

      if nMediaDisciplina1 >= 6.0
         @ 17, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina1)) + '|'                                                                                 Color 'g/n'

      else
         @ 17, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina1)) + '|'                                                                                 Color 'r/n'
         nQuantidadeDeDependentes++
         cNomesDisciplinasDependentes += cNomeDisciplina1 + ', '

      endif

   else
      @ 17, 66 say 'REPD FALT|'                                                                                                                      Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina1 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 1

   if (nQuantidadeFaltas1Bimestre2Disciplina + nQuantidadeFaltas2Bimestre2Disciplina + nQuantidadeFaltas3Bimestre2Disciplina + nQuantidadeFaltas4Bimestre2Disciplina) <= 48

      if nMediaDisciplina2 >= 6.0
         @ 18, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina2)) + '|'                                                                                 Color 'g/n'

      else
         @ 18, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina2)) + '|'                                                                                 Color 'r/n'
          nQuantidadeDeDependentes++
          cNomesDisciplinasDependentes += cNomeDisciplina2 + ', '

      endif

   else
      @ 18, 66 say 'REPD FALT|'                                                                                                                      Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina2 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 2

   if (nQuantidadeFaltas1Bimestre3Disciplina + nQuantidadeFaltas2Bimestre3Disciplina + nQuantidadeFaltas3Bimestre3Disciplina + nQuantidadeFaltas4Bimestre3Disciplina) <= 48

      if nMediaDisciplina3 >= 6.0
         @ 19, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina3)) + '|'                                                                                 Color 'g/n'

      else
         @ 19, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina3)) + '|'                                                                                 Color 'r/n'
         nQuantidadeDeDependentes++
         cNomesDisciplinasDependentes += cNomeDisciplina3 + ', '
      endif

   else
      @ 19, 66 say 'REPD FALT|'                                                                                                                      Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina3 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 3

   if (nQuantidadeFaltas1Bimestre4Disciplina + nQuantidadeFaltas2Bimestre4Disciplina + nQuantidadeFaltas3Bimestre4Disciplina + nQuantidadeFaltas4Bimestre4Disciplina) <= 48

      if nMediaDisciplina4 >= 6.0
         @ 20, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina4)) + '|'                                                                                  Color 'g/n'

      else
         @ 20, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina4)) + '|'                                                                                  Color 'r/n'
         nQuantidadeDeDependentes++
         cNomesDisciplinasDependentes += cNomeDisciplina4 + ', '

      endif

   else
      @ 20, 66 say 'REPD FALT|'                                                                                                                       Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina4 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 4

   if (nQuantidadeFaltas1Bimestre5Disciplina + nQuantidadeFaltas2Bimestre5Disciplina + nQuantidadeFaltas3Bimestre5Disciplina + nQuantidadeFaltas4Bimestre5Disciplina) <= 48

      if nMediaDisciplina5 >= 6.0
         @ 21, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina5)) + '|'                                                                                 Color 'g/n'

      else
         @ 21, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina5)) + '|'                                                                                 Color 'r/n'
         nQuantidadeDeDependentes++
         cNomesDisciplinasDependentes += cNomeDisciplina5 + ', '

      endif

   else
      @ 21, 66 say 'REPD FALT|'                                                                                                                      Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina5 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 5

   if (nQuantidadeFaltas1Bimestre6Disciplina + nQuantidadeFaltas2Bimestre6Disciplina + nQuantidadeFaltas3Bimestre6Disciplina + nQuantidadeFaltas4Bimestre6Disciplina) <= 48

      if nMediaDisciplina6 >= 6.0
         @ 22, 66 say 'APVD '+ AllTrim(Str(nMediaDisciplina6)) + '|'                                                                                 Color 'g/n'

      else
         @ 22, 66 say 'REPD '+ AllTrim(Str(nMediaDisciplina6)) + '|'                                                                                 Color 'r/n'
         nQuantidadeDeDependentes++
         cNomesDisciplinasDependentes += cNomeDisciplina6 + ', '

      endif

   else
      @ 22, 66 say 'REPD FALT|'                                                                                                                      Color 'r/n'
      nQuantidadeDeDependentes++
      cNomesDisciplinasDependentes += cNomeDisciplina6 + ', '

   endif                                                                          // verifica se esta aprovado ou reprovado na disciplina 6

   if nQuantidadeDeDependentes == 0
      @ 23, 01 say 'RESULTADO FINAL: APROVADO SEM DEPENDENCIAS'                                                                                      Color 'g/n'

   elseif nQuantidadeDeDependentes == 1
      @ 23, 01 say 'RESULTADO FINAL: APROVADO COM 1 DEPENDENCIA: ' + AllTrim(cNomesDisciplinasDependentes)                                           Color 'gr+/n'
      @ 24, 01 say 'Novo valor da Mensalidade $: ' + AllTrim(Str((((nValorMensalidadeAluno/100)*10)+nValorMensalidadeAluno + (12 * nQuantidadeDeDependentes))))

   elseif nQuantidadeDeDependentes == 2
      @ 23, 01 say 'RESULTADO FINAL: APROVADO COM 2 DEPENDENCIAS: ' + AllTrim(cNomesDisciplinasDependentes)                                          Color 'gr+/n'
      @ 24, 01 say 'Novo valor da Mensalidade $: ' + AllTrim(Str((((nValorMensalidadeAluno/100)*20)+nValorMensalidadeAluno + (12 * nQuantidadeDeDependentes))))

   else
      @ 23,01 SAY 'RESULTADO FINAL: REPROVADO'                                                                                                       Color 'r/n'

   endif

   inKey(0)

   nOpcaoEncerrar                        := alert('Iniciar novo aluno ou Encerrar ?', {'Novo Aluno', 'Encerrar'})   //questiona se cria novo aluno ou encerra

   if nOpcaoEncerrar == 1
      loop
   else
      exit
   endif

enddo

