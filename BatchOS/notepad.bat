@echo off
title Notatnik BatchOS
setlocal enabledelayedexpansion

set "file="
set "choice="

:menu
cls
echo --------------------------
echo        Notepad
echo ==========================
echo 1. New note
echo 2. Open note
echo 3. Exit
echo ==========================
set /p "choice=Option >>" 

if "%choice%"=="1" goto nowa
if "%choice%"=="2" goto otworz
if "%choice%"=="3" call desktop.bat & cls
goto menu

:nowa
cls
set /p file="Give a name for the file (e.g. file.txt/bat/cmd) >>" 
echo Enter the note content. To finish writing the file, type "#" on a new line.
echo.
> "%file%" (
    :wpis
    set /p line=
    if "!line!"=="#" goto zapis
    echo !line!
    goto wpis
)
:zapis
echo File saved as %file%
pause
goto menu

:otworz
cls
set /p "file=What file do you want to open? (e.g. note.txt) >> "
if not exist "%file%" (
    echo File does not exist!
    pause
    goto menu
)
echo ==========================
echo Content of file: %file% >>
echo ==========================
type "%file%"
echo ==========================
pause
goto menu