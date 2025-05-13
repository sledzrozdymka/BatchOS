cd cmdfiles
@echo off
title System
echo.
echo ##############################
echo.
echo Witaj w systemie %username%!
echo Aby zobaczyc dostepne polecenia wpisz "help".
echo.
echo ####################################################
echo.
:cmd
set /p "command=\BatchOS\System\cmdfiles >> "
if "%command%"=="help" call help.bat & goto cmd
if "%command%"=="cls" cls & goto cmd
if "%command%"=="exit" start error.vbs & goto cmd
if "%command%"=="systeminfo" call systeminfo.bat & goto cmd
if "%command%"=="notepad" call notepad.bat & goto cmd
echo Niepoprawna komenda
goto cmd