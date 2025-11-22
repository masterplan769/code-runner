@echo off
REM 
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python not found. Please install Python 3.x first.
    pause
    exit /b
)

REM 
echo Starting local server at http://localhost:8000
start http://localhost:8000
python -m http.server 8000
pause
