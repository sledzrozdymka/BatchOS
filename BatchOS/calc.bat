@echo off
:calcmenu
cls
echo ---------------------------
echo         Calculator
echo ---------------------------
echo.
echo 1 - Addition
echo 2 - Subtraction
echo 3 - Multiplication
echo 4 - Division
echo 5 - Exit
echo.
set /p choice=Choose an option (1-5): 

if "%choice%"=="1" goto add & goto calcmenu
if "%choice%"=="2" goto subtract & goto calcmenu
if "%choice%"=="3" goto multiply & goto calcmenu
if "%choice%"=="4" goto divide & goto calcmenu
if "%choice%"=="5" call desktop.bat & cls
echo Invalid choice! Please try again.
goto calcmenu

:add
cls
echo Addition
set /p a="Enter first number >> " 
set /p b="Enter second number >> " 
set /a result=%a%+%b%
echo Result >> %result%
pause
goto menu

:subtract
cls
echo Subtraction
set /p a="Enter first number >> " 
set /p b="Enter second number >> "  
set /a result=%a%-%b%
echo Result >> %result%
pause
goto menu

:multiply
cls
echo Multiplication
set /p a="Enter first number >> " 
set /p b="Enter second number >> " 
set /a result=%a%*%b%
echo Result >> %result%
pause
goto menu

:divide
cls
echo Division
set /p a="Enter first number >> " 
set /p b="Enter second number >> " 
if "%b%"=="0" (
    echo Error >> Division by zero is not allowed.
) else (
    set /a result=%a%/%b%
    echo Result >> %result%
)
pause
goto menu