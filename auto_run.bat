@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================
echo  Compiling demo02.c ...
echo ========================================
gcc demo02.c -o demo02.exe -g
if errorlevel 1 (
    echo.
    echo COMPILE FAILED!
    pause
    exit /b 1
)
echo Compile OK!
echo.
echo ========================================
echo  Test input: 1:30 and 2:00
echo ========================================
echo.
echo ---------------- Output ----------------
echo.
(echo 1 30
echo 2 0) | demo02.exe
echo.
echo ========================================
echo  Done! Press any key to exit.
echo ========================================
pause >nul
