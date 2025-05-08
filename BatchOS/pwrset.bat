@echo off
title Power Options
echo ------------------------------------POWER OPTIONS------------------------------------
echo.
echo                                   ###################
echo                                   # 1 - Power Off   #
echo                                   ###################
echo                                   # 2 - Restart     #
echo                                   #####################################
echo                                   # E - Exit from Power Options       #
echo                                   #####################################
echo.
set /p "pwroption=Option >> "
if "%pwroption%"=="1" (
    echo Powering off the system...
    timeout /t 2 >nul
    exit
) else if "%pwroption%"=="2" (
    echo Restarting the system...
    timeout /t 2 >nul
    cls
    call bootloader.bat
) else if "%pwroption%"=="e" (
    echo Exiting Power Options...
    timeout /t 2 >nul
    call desktop.bat
) else (
    echo Invalid option! Please try again.
)