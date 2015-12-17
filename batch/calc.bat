rem desenvolvido por david simões

@ECHO OFF

echo digite o dia do seu nascimento
set /p d=
cls
echo digite o mes do seu nascimento
set /p m=
cls
echo digite o ano do seu nascimento
set /p a=
cls

for /l %%i in (%m%,-1,0) do set /A sm=sm+%%i
cls
set /a sf= sm+(a/100)*(50-d)
set /a anjo=(100-sm)

echo voce e %anjo% anjo 
echo voce e %sf% safado
pause