cls
@echo off
title Login
:menu
cls
echo 1. Login
echo 2. Register
set /p choice=Choice: 
if "%choice%"=="1" goto login
if "%choice%"=="2" goto register
goto menu

:register
cls
echo --- Registration ---
set /p newuser=Enter username: 
set /p newpass=Enter password: 
if exist users.txt (
    findstr /i "^%newuser%:" users.txt >nul && (
        echo User already exists!
        pause
        goto menu
    )
)
echo %newuser%:%newpass%>>users.txt
echo Registration successful!
pause
goto menu

:login
cls
echo --- Login ---
set /p user=Enter username: 
set /p pass=Enter password: 
findstr /i "^%user%:%pass%$" users.txt >nul
if errorlevel 1 (
    echo Invalid username or password!
    pause
    goto menu
)
echo Logged in successfully!
pause
call desktop.bat