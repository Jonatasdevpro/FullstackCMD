@echo off
title Fullstack CMD Profissional - Jonatas Bezerra
color 0A
mode con: cols=80 lines=25

:MENU
cls
echo ==================================================
echo           FULLSTACK CMD PROFISSIONAL
echo ==================================================
echo.
echo   [1] Frontend Tools
echo   [2] Backend Tools
echo   [3] Banco de Dados
echo   [4] DevOps / Infraestrutura
echo   [5] Ver Logs
echo   [0] Sair
echo.
set /p opcao=Digite a opcao desejada: 

if "%opcao%"=="1" goto FRONTEND
if "%opcao%"=="2" goto BACKEND
if "%opcao%"=="3" goto DATABASE
if "%opcao%"=="4" goto DEVOPS
if "%opcao%"=="5" goto LOGS
if "%opcao%"=="0" exit
goto MENU

:FRONTEND
cls
echo ========= FERRAMENTAS FRONTEND =========
echo [1] Abrir VS Code
echo [2] Abrir projeto React local
echo [0] Voltar
echo.
set /p frontopt=Escolha: 
if "%frontopt%"=="1" start "" "C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
if "%frontopt%"=="2" start "" frontend\tools\meuprojeto-react
goto MENU

:BACKEND
cls
echo ========= FERRAMENTAS BACKEND =========
echo [1] Iniciar servidor Node.js
echo [2] Abrir Postman
echo [0] Voltar
echo.
set /p backopt=Escolha: 
if "%backopt%"=="1" start cmd /k "cd backend\tools\api && node index.js"
if "%backopt%"=="2" start "" "C:\Users\%USERNAME%\AppData\Local\Postman\Postman.exe"
goto MENU

:DATABASE
cls
echo ========= BANCO DE DADOS =========
echo [1] Abrir DBeaver
echo [2] Rodar dump do banco
echo [0] Voltar
echo.
set /p dbopt=Escolha: 
if "%dbopt%"=="1" start "" "C:\Program Files\DBeaver\dbeaver.exe"
if "%dbopt%"=="2" call database\tools\import_dump.cmd
goto MENU

:DEVOPS
cls
echo ========= DEVOPS / INFRA =========
echo [1] Abrir terminal Git Bash
echo [2] Rodar script Docker
echo [0] Voltar
echo.
set /p devopt=Escolha: 
if "%devopt%"=="1" start "" "C:\Program Files\Git\git-bash.exe"
if "%devopt%"=="2" call devops\tools\docker-up.cmd
goto MENU

:LOGS
cls
echo ========= LOGS =========
type logs\log.txt
pause
goto MENU
