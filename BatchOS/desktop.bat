cls
@echo off
title Desktop
echo.
echo Welcome! %user% you are now logged in.
:desktopmenu
echo.
echo                            1                           2                           3
echo                      ##############              ##############              ##############
echo                      #Console Mode#              #   Notepad  #              # Calculator # 
echo                      ##############              ##############              ##############
echo                      ##############              ##############              ##############
echo.
echo                                                        P
echo                                                ##################
echo                                                # Power  Options #
echo                                                ##################
echo                                                ##################                                                
echo.
echo.
set /p "option=Option: "
if "%option%"=="1" call console.bat & goto desktopmenu
if "%option%"=="2" call notepad.bat & goto desktopmenu
if "%option%"=="3" call calc.bat & goto desktopmenu
if "%option%"=="p" call pwrset.bat & goto desktopmenu
echo Invalid option! Please try again.
goto desktopmenu