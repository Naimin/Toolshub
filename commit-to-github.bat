@echo off
REM Batch script to commit and push to GitHub
REM This works around PowerShell execution policy issues

echo === Toolshub Git Commit Script ===
echo.

REM Check if git is available
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in your PATH.
    echo Please install Git from https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

REM Show git version
git --version
echo.

REM Navigate to script directory
cd /d "%~dp0"

echo Current directory: %CD%
echo.

REM Check if this is already a git repository
if not exist ".git" (
    echo Initializing git repository...
    git init
    echo.
)

REM Check remote
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Adding remote repository...
    git remote add origin https://github.com/Naimin/Toolshub.git
    echo.
) else (
    echo Remote already configured.
    echo.
)

REM Stage all files
echo Staging all files...
git add .
echo.

REM Show status
echo Current status:
git status
echo.

REM Commit
set /p commitMessage="Enter commit message (or press Enter for default): "
if "%commitMessage%"=="" set commitMessage=Initial commit: Add Compound Interest Calculator

echo Committing changes...
git commit -m "%commitMessage%"
echo.

REM Ask about pushing
set /p push="Do you want to push to GitHub? (y/n): "
if /i "%push%"=="y" (
    echo Pushing to GitHub...
    git branch -M main
    git push -u origin main
    echo.
    echo Done! Your code has been pushed to GitHub.
) else (
    echo Skipping push. You can push later with: git push -u origin main
)

echo.
echo === Script Complete ===
pause
