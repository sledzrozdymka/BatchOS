cls
@echo off
title Console Mode
echo Hello %user%! You are in Console Mode!
echo Type "help" for a list of commands.
echo.
:consolemenu
set /p "command=/home/usr/%user% >> "
if "%command%"=="help" goto help & goto consolemenu
if "%command%"=="systeminfo" goto systeminfo & goto consolemenu
if "%command%"=="notepad" call notepad.bat & goto consolemenu
if "%command%"=="calc" call calc.bat & goto consolemenu
if "%command%"=="exit" call desktop.bat & cls
echo Invalid command! Type "help" for a list of commands.

:help
echo Available commands:
echo 1. help - Show this help message
echo 2. systeminfo - Show system information
echo 3. notepad - Open Notepad
echo 4. calc - Open Calculator
echo 5. exit - Exit Console Mode, and return to Desktop.
goto consolemenu

:systeminfo
echo ------------------------------------
echo ######                             #######  #####  
echo #     #   ##   #####  ####  #    # #     # #     # 
echo #     #  #  #    #   #    # #    # #     # #       
echo ######  #    #   #   #      ###### #     #  #####  
echo #     # ######   #   #      #    # #     #       # 
echo #     # #    #   #   #    # #    # #     # #     # 
echo ######  #    #   #    ####  #    # #######  #####
echo -----------------------------------------------------
echo System Version: 1.0.0
echo Build Version: 1051
echo System Name: BatchOS  
echo System Architecture: 16-bit
echo System Manufacturer: Sledz Corporation.
echo This system is a open-source, you can modify it as you want.     
goto consolemenu                      