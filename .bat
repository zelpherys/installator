@echo off
setlocal

REM Chemin vers les installateurs
set "vscode_installer=%~dp0VSCodeSetup.exe"
set "git_installer=%~dp0GitSetup.exe"
set "vs_installer=%~dp0VisualStudioSetup.exe"

REM Vérifier si les fichiers existent
if not exist "%vscode_installer%" (
    echo VSCode installer not found at %vscode_installer%
    exit /b 1
)

if not exist "%git_installer%" (
    echo Git installer not found at %git_installer%
    exit /b 1
)

if not exist "%vs_installer%" (
    echo Visual Studio installer not found at %vs_installer%
    exit /b 1
)

REM Installer VSCode
echo Installing VSCode from %vscode_installer%
"%vscode_installer%" /silent /mergetasks=!runcode,!desktopicon,!quicklaunchicon

REM Installer Git
echo Installing Git from %git_installer%
"%git_installer%" /VERYSILENT /NORESTART

REM Installer Visual Studio
echo Installing Visual Studio from %vs_installer%
"%vs_installer%" --quiet --wait --norestart --nocache --installPath "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\Community" --add Microsoft.VisualStudio.Workload.CoreEditor --includeRecommended

echo Installation complete.
endlocal
pause
