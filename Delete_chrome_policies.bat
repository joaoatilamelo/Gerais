@echo off

IF NOT EXIST %WINDIR%\System32\GroupPolicy goto next

echo Apagando Erros nas Politicas GroupPolicy...
RD /S /Q "%WINDIR%\System32\GroupPolicy" || goto error
echo.

:next
IF NOT EXIST %WINDIR%\System32\GroupPolicyUsers goto next2

echo Apagando Erros nas Politicas GroupPolicyUsers...
RD /S /Q "%WINDIR%\System32\GroupPolicyUsers" || goto error
echo.

:next2
gpupdate /force

pause
exit

:error
echo.
echo Ocorreu um erro Inesperado. ¨Está aberto como Administrador (Clique com o botão direito, Executar como Administrador)?
echo.
pause
exit
