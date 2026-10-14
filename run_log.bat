@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === RUN STARTED at %date% %time% === > run_log.txt
echo. >> run_log.txt
echo [1] Compiling... >> run_log.txt
gcc demo02.c -o demo02.exe -g 2>&1 >> run_log.txt
echo Compile exit code: %errorlevel% >> run_log.txt
echo. >> run_log.txt
if errorlevel 1 (
    echo [RESULT] COMPILE FAILED >> run_log.txt
    echo COMPILE FAILED! See run_log.txt for details.
    pause
    exit /b 1
)
echo [2] Compile OK, running program... >> run_log.txt
echo. >> run_log.txt
echo --- Program output below --- >> run_log.txt
echo. >> run_log.txt
demo02.exe >> run_log.txt 2>&1
echo. >> run_log.txt
echo Program exit code: %errorlevel% >> run_log.txt
echo. >> run_log.txt
echo === RUN FINISHED === >> run_log.txt
echo.
echo Done! Log saved to run_log.txt
echo.
type run_log.txt
echo.
pause
