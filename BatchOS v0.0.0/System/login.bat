cd System
@echo off
:menu
cls
echo ###################################################################
echo.
echo                          WITAJ W SYSTEMIE
echo.
echo ###################################################################
echo 1. Logowanie
echo 2. Rejestracja
set /p choice=Wybor: 

if "%choice%"=="1" goto login
if "%choice%"=="2" goto register
goto menu

:register
cls
echo Rejestracja
set /p username=Podaj nazwe uzytkownika: 
set /p password=Podaj haslo: 

echo %username% %password% >> users.txt
echo Rejestracja zakonczona sukcesem!
pause
goto menu

:login
cls
echo Logowanie
set /p username=Podaj nazwe uzytkownika: 
set /p password=Podaj haslo: 

if not exist users.txt (
    echo Plik users.txt nie istnieje. Zarejestruj sie najpierw.
    pause
    goto menu
)

for /f "tokens=1,2 delims= " %%a in (users.txt) do (
    if "%%a"=="%username%" if "%%b"=="%password%" (
        echo Logowanie powiodlo sie!
        pause
        cls
        call cmd.bat
    )
)

echo Niepoprawna nazwa uzytkownika lub haslo.
pause
goto menu