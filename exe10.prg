Set date British
Set epoch to 1940
Clear

cNome  := Space(50)
nIdade := 0

@05,05 say 'Nome: '
@06,05 say 'Idade: '

@05,11 get cNome  picture '@!'  valid !Empty(cNome) Color 'w/n'
@06,12 get nIdade picture '999' valid nIdade <=130 .and. nIdade >= 0 Color 'w/n'
read

if nIdade > 21
   @09,05 say 'Aeehh Maior de Idade!!!'

else
   @09,05 say 'OPA! Menor de Idade!'

endif

