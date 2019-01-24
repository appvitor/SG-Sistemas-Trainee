Clear

Set Date British
Set epoch to 1940

dData1 := CToD('')
dData2 := CToD('')


@ 04, 04 say 'Nascimento: '
@ 05, 04 say 'Data Final: '
@ 04, 15 get dData1
@ 05, 15 get dData2
read

nIdade := dData2 - dData1

if day(dData2) < day(dData1)

   nIdade--

endif

@ 06, 05 say 'idade: ' + AllTrim(Str(nIdade))



