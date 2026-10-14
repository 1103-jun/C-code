@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Killing old process...
taskkill /f /im demo02.exe 2>nul
echo.
echo ========================================
echo  Compiling demo02.c ...
echo ========================================
gcc demo02.c -o demo02.exe -g
if errorlevel 1 (
    echo.
    echo ########################################
    echo  COMPILE FAILED! See error above.
    echo ########################################
    echo.
    pause
    exit /b 1
)
echo.
echo Compile OK!
echo.
echo ========================================
echo  Running program...
echo  Enter numbers when prompted.
echo ========================================
echo.
demo02.exe
echo.
echo ========================================
echo  Program ended.
echo ========================================
pause
