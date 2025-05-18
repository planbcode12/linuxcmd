@echo off
setlocal enabledelayedexpansion

:: Customize these settings
set PROMPT_COLOR=0A
set PROMPT_TEXT=LinuxSim$
set VERSION=1.2

:: Main Menu
:main
cls
echo ________________________________________________________________________________
echo.
echo            L I N U X   C O M M A N D   S I M U L A T O R   v1.0 by Andrew Agouridis
echo            =============================================
echo.
echo    This batch file provides Linux-like commands in Windows CMD environment
echo    Note: This is a simulation - not all Linux commands are available
echo.
echo    Type 'help' for available commands or 'exit' to quit
echo ________________________________________________________________________________
echo.

:prompt
set /p "cmd=%PROMPT_TEXT% "

:: Command Processing
if /i "%cmd%"=="help" goto help
if /i "%cmd%"=="exit" goto end
if /i "%cmd%"=="clear" goto clear
if /i "%cmd%"=="ls" goto ls
if /i "%cmd%"=="ll" goto ll
if /i "%cmd%"=="pwd" goto pwd
if /i "%cmd%"=="whoami" goto whoami
if /i "%cmd%"=="date" goto date
if /i "%cmd%"=="echo" goto echo_cmd
if /i "%cmd%"=="ipconfig" goto ipconfig
if /i "%cmd%"=="netstat" goto netstat
if /i "%cmd%"=="ps" goto ps
if /i "%cmd%"=="mkdir" goto mkdir
if /i "%cmd%"=="rmdir" goto rmdir
if /i "%cmd%"=="cat" goto cat
if /i "%cmd%"=="ver" goto ver

:: If command not found
echo %PROMPT_TEXT%: %cmd%: command not found
goto prompt

:: Command Implementations
:help
cls
echo ________________________________________________________________________________
echo.
echo                         A V A I L A B L E   C O M M A N D S
echo                         =================================
echo.
echo    clear       Clears the screen
echo    ls          List directory contents (basic)
echo    ll          List directory contents (detailed)
echo    pwd         Print working directory
echo    whoami      Display current user
echo    date        Show current date/time
echo    echo        Display message
echo    ipconfig    Network configuration (Windows version)
echo    netstat     Network statistics (Windows version)
echo    ps          Process status (Windows tasklist)
echo    mkdir       Create new directory
echo    rmdir       Remove directory
echo    cat         Display file content
echo    ver         Show system version
echo    exit        Quit the simulator
echo.
echo ________________________________________________________________________________
echo.
pause
goto main

:clear
cls
goto prompt

:ls
dir /b
goto prompt

:ll
dir
goto prompt

:pwd
cd
goto prompt

:whoami
echo %USERNAME%
goto prompt

:date
echo %DATE% %TIME%
goto prompt

:echo_cmd
set /p "echo_msg=Enter message to echo: "
echo %echo_msg%
goto prompt

:ipconfig
ipconfig
goto prompt

:netstat
netstat -ano
goto prompt

:ps
tasklist
goto prompt

:mkdir
set /p "dir_name=Enter directory name to create: "
mkdir "%dir_name%"
goto prompt

:rmdir
set /p "dir_name=Enter directory name to remove: "
rmdir "%dir_name%"
goto prompt

:cat
set /p "file_name=Enter file name to display: "
type "%file_name%"
goto prompt

:ver
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
goto prompt

:end
cls
echo Thank you for using Linux Command Simulator for Windows
timeout /t 2 >nul
exit

:: Andrew Agouridis