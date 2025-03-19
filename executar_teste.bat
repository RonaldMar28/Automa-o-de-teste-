@echo off
REM Verificar a política de execução atual e salvar em uma variável
for /f "tokens=*" %%i in ('powershell -Command "Get-ExecutionPolicy"') do set "currentPolicy=%%i"

echo A politica de execucao atual e %currentPolicy%

REM Ajustar para 'Unrestricted' temporariamente, se necessário
if not "%currentPolicy%"=="Unrestricted" (
    echo Alterando a política de execução para 'Unrestricted' temporariamente...
    powershell -Command "Set-ExecutionPolicy Unrestricted -Scope Process -Force"
)

REM Executar o script PowerShell
echo Executando o script PowerShell...
powershell -ExecutionPolicy Bypass -File "C:\Teste_main\codigo - Copia.ps1"

REM (Opcional) Restaurar a política original
if not "%currentPolicy%"=="Unrestricted" (
    echo Restaurando a política de execução original...
    powershell -Command "Set-ExecutionPolicy %currentPolicy% -Scope Process -Force"
)

echo Script concluído.
pause
