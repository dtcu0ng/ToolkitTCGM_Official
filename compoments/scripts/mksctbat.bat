color 3f
title Shortcut Maker - Toolkit for Tencent Gaming Buddy
cls
@echo off
echo ///////////////////////////////////////////////////////////
echo /               Welcome to Shortcut Maker!                /
echo /  Using this to get the shortcut of your installed apps! /
echo /                    Version: 2.0                         /
echo /             Used NirCMD to get this possible!!          /
echo /               Press any key to continue!                /
echo /                      (c) CuongZ                         /
echo ///////////////////////////////////////////////////////////
pause
cls
@echo off
echo Shortcut Maker for TCGM
echo Build date: 30/6/2019
echo Version: 2.0
echo Source: https://github.com/CuongZ/Source-TookitTCGM
echo ---------------------------------                
if exist "C:\Program Files\txgameassistant\appmarket\AppMarket.exe" (
echo Success: AppMarket found in C:\Program Files\txgameassistant\appmarket\, press any key to continue.
echo ---------------------------------
pause
echo ----------------------------------                  
goto DEFAULT
) ELSE (
echo Logs :
echo Fail: AppMarket is not found on C:\Program Files\txgameassistant\appmarket\, you will defind manually in next step.
echo --------------------------------
pause                
goto CUSTOM
)
pause
:DEFAULT
cls
set pkg_name= Default
echo Please enter your package name! 
set /p pkg_name=
set sct_name= Default
@echo off
echo Please enter your shortcut name! 
set /p sct_name=
cd ..
nircmd.exe shortcut "C:\Program Files\txgameassistant\AppMarket\AppMarket.exe" "%userprofile%\Desktop\" "%sct_name%" "-startpkg %pkg_name%"
@echo off
echo Created shortcut %sct_name% for package %pkg_name% and added shortcut to Desktop successfully!
pause
cd scripts
call selector.bat
:CUSTOM
cls
set work_dir= Default
@echo off
echo Please provide a link to "txgameassistant" folder.
set /p work_dir=
set pkg_name= Default
@echo off
echo Please enter your package name! 
set /p pkg_name=
set sct_name= Default
@echo off
echo Please enter your shortcut name! 
set /p sct_name=
cd ..
nircmd.exe shortcut "%work_dir%\AppMarket\AppMarket.exe" "%userprofile%\Desktop\" "%appname%" "-startpkg %pkg_name%"
@echo off
echo Created shortcut %sct_name% for package %pkg_name% at work folder %work_dir%\AppMarket\AppMarket.exe and added shortcut to Desktop successfully!
pause
cd scripts
call selector.bat
