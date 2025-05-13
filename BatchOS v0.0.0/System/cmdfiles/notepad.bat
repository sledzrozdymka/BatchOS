@echo off

:notemenu
cls
echo ############################
echo.
echo          NOTATNIK
echo.
echo ############################
echo.
echo      1 - Napisz tekst
echo      2 - Wyjdz
echo.
echo ############################
set /p "noteoption=Opcja >> "
if "%noteoption%"=="1" goto napisz & goto notemenu
if "%noteoption%"=="2" goto exit & goto notemenu
echo Niepoprawna opcja 
goto notemenu

:napisz
cls
set /p "text=Tekst >>" 
echo %text% >> notatki.txt
echo Twoja notatka zostala zapisana
goto notemenu

:exit
cd ..
cls
call cmd.bat