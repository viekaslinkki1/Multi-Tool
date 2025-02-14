@echo off
color 3
chcp 65001 <nul
cls
title idk multitool
cd assets
cd Pizza4Ever
cd Connected by viekas

:top
CLS
echo                                             ·▄▄▄▄•▄▄▄ . ▐ ▄       .▄▄ · 
echo                                             ▪▀·.█▌▀▄.▀·•█▌▐█▪     ▐█ ▀. 
echo                                             ▄█▀▀▀•▐▀▀▪▄▐█▐▐▌ ▄█▀▄ ▄▀▀▀█▄
echo                                             █▌▪▄█▀▐█▄▄▌██▐█▌▐█▌.▐▌▐█▄▪▐█
echo                                             .▀▀▀ • ▀▀▀ ▀▀ █▪ ▀█▄▀▪ ▀▀▀▀ 
                                                  
                                                                                
echo                                        ╔-------------------------------------╗                         
echo                                        ║              WELCOME                ║
echo                                        ╚-------------------------------------╝                                     
echo                                         ╔-----------------------------------╗                                      
echo                                         ║ [1] Login                         ║
echo                                         ║ [2] Register                      ║
echo                                         ╚-----------------------------------╝
echo                                       ╔---------------------------------------╗    
echo                                       ║         Enter you choice              ║
echo                                       ╚---------------------------------------╝

set /p input=‎.

if %input%==1 goto :Login
if %input%==2 goto :Register ‎ ‎ ‎

:Login
if "%input%"=="pizza" (
    goto :pass
) else (
    goto :wronguser
)

:Register ‎ ‎ 
CLS
echo soon...
pause
goto :top ‎ ‎ 


:pass
if "%input%"=="123" (
    goto :menu
) else (
    goto :wrongpass
)

:wronguser
echo get the right log in or leave
pause
goto :top

:wrongpass
echo get the right pass or GET OUT!!!!
pause
goto :top

:menu
color 3
CLS                                                                                                                                                                                                                                                                                                                                                                                                                                                                
echo                ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║       (N) Next Page
echo                ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.                  
echo         info about                      
echo         multi-tool            just some fun things          other tools                                   

echo        ╔(1) Discord         ╔(5)pizzasecrets          ╔(9) Viper tool = soon...                      
echo        ║                    ║              ‎          ║
echo        ╠(2) Credits.        ╠(6)images i have used    ╠(10) Discord webhook spammer V1
echo        ║                    ║                         ║
echo        ╠(3)colour combos    ╠(7)do not open this      ╠(11) Discord webhook spammer V2	
echo        ║                    ║                         ║
echo        ║                    ╚(8)password gen          ╚(12)  
echo        ╚(4) GitHub = https://github.com/viekaslinkki1ithub.com/viekaslinkki1 
echo.

set /p input= .

if %input%==1 goto :discord
if %input%==2 goto :credits
if %input%==3 goto :colour combos
if %input%==4 START github.com/viekaslinkki1
if %input%==5 goto :pizzasecrets
if %input%==6 goto :imagesihaveused
if %input%==N goto :page 2
if %input%==n goto :page 2
if %input%==9 goto :viperpass
if %input%==10 goto :discordmsg
if %input%==11 goto :discordmsgV2

:discordmsgV2
CLS
start run.bat
pause
goto :menu


:dcmsgop
color 3
CLS
echo 
echo __          __  _     _                 _      _____                              __      ____ 
echo \ \        / / || ||   || ||               || ||    ||  __ \                             \ \    / /_ ||
echo  \ \  /\  / /__|| ||__ || ||__   ___   ___ || || __ || ||  || || ___ _ __ ___   ___  _ __    \ \  / / || ||
echo   \ \/  \/ / _ \ '_ \| '_ \ / _ \ / _ \| |/ / | |  | |/ _ \ '_ ` _ \ / _ \| '_ \    \ \/ /  || ||
echo    \  /\  /  __/ ||_) || || || || || (_) | (_) ||   <<  | |__| |  __/ || || || || || (_) || || || ||    \  /   || ||
echo     \/  \/ \___||_.__/||_|| ||_||\___/ \___/||_||\_\ ||_____/ \___||_|| ||_|| ||_||\___/||_|| ||_||     \/    ||_||
                                                                                                                                                                                                                          
echo                 1) Send Message
echo                 2) Spam Webhook
echo                 3) Delete Webhook
echo                 4) Rename Webhook
echo                 5) Change pfp
echo                 6) Webhook Information
echo                 7) Log Out

set /p input= .

:discordmsg
cls
echo Type your webhook URL to Discord:
set /p WEBHOOK_URL="Url: "
echo Type your message to send via Discord:
set /p message="Message: "
echo How many times to send it?
set /p times="Times: "
echo Enter the delay (in seconds) between requests:
set /p delay="Delay (seconds): "

for /l %%i in (1,1,%times%) do (
    echo Sending message %%i of %times%...

    :: Capture response into a temporary file
    curl -H "Content-Type: application/json" ^
         -X POST ^
         -d "{\"content\":\"%message%\"}" ^
         %WEBHOOK_URL% > response.txt 2>nul

    :: Check if the response contains "You are being rate limited."
    findstr /C:"You are being rate limited." response.txt >nul
    if %errorlevel%==0 (
        echo Rate limit hit! Waiting 10 seconds before retrying...
        timeout /t %delay% /nobreak >nul
    ) else (
        echo Message sent successfully!
    )
)
del response.txt >nul 2>nul

echo All messages sent! Press any key to return to menu.
pause >nul
goto :menu
:colour combos
start shh.bat
pause
goto :menu

:viperpass 
set /p input= Premium pass=
if "%input%"=="3395" (
    goto :viper
) else (
    goto :wrongviper
)

:wrongviper
echo wrong password for viper your normal password doesnt work because this is a premium feature
pause
goto :menu

:snap 
CLS
echo soon...
pause > nul
goto :menu

:viper 
echo welcome
start viper.bat
pause
goto :menu



pause > nul

:imagesihaveused
start https://media1.tenor.com/m/Xm5q3IZIEd4AAAAC/not-stonks-profit-down.gif
pause
goto :menu

:discord
start https://discord.gg/E6tdzDXuPZ
pause
goto :menu

:do not open this
CLS
set /p input=are you sure you want to use this tool (y/n)
if %input%==y start pizza.bat
if %input%==Y start pizza.bat
if %input%==n goto :menu
if %input%==N goto :menu
pause

:page 2
color 3
CLS
echo                ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
                                                  
echo        Usefull        
echo        Tools
echo.                                                  
echo        ╔(13)System Info      ╔(17                      ╔(21)                                                                       
echo        ║                     ║                         ║
echo        ╠(14)Network Info     ╠(18)                     ╠(22)
echo        ║                     ║                         ║
echo        ╠(15)Kill Tasks       ╠(19)                     ╠(23)
echo        ║                     ║                         ║
echo        ╚(16)                 ╚(20)                     ╚(24)Last page          
echo.             

set /p input= .E

if %input%== 13 goto :systeminfo
if %input%== 14 goto :network
if %input%== 15 goto :tasks

:systeminfo
CLS
echo --- SYSTEM INFORMATION ---
systeminfo | findstr /I "OS Name OS Version System Type Total Physical Memory Available Physical Memory"
echo.
echo --- CPU Info ---
wmic cpu get name,numberofcores,numberoflogicalprocessors
echo.
pause
goto :page 2

:network
CLS
echo 1. Show IP configuration
echo 2. Ping google.com
echo 3. Trace route to google.com
echo 4. go back
set /p netChoice=Choose an option: 
if "%netChoice%"=="1" ipconfig & pause & goto :network
if "%netChoice%"=="2" ping google.com & pause & goto :network
if "%netChoice%"=="3" tracert google.com & pause & goto :network
if "%netChoice%"=="4" 
goto :page 2

:tasks
CLS
echo 1. List all processes
echo 2. Kill a process by name
echo 3. Kill a process by PID
echo 4. Go back
set /p choiceTasks="Choose an option: "
if "%choiceTasks%"=="1" ( tasklist & pause & goto :tasks )
if "%choiceTasks%"=="2" (
    set /p "procName=Process name to kill (ex: notepad.exe): "
    if "%procName%"=="" (
        echo You didn't enter a process name.
        pause
        goto :tasks
    )
    taskkill /F /IM "%procName%"
    pause
    goto :tasks
)
if "%choiceTasks%"=="3" (
    set /p procID="Process PID to kill: "
    taskkill /F /PID %procID%
    pause
    goto :tasks
)
if "%choiceTasks%"=="4" goto :pageuseful
goto :page 2


:pizzasecrets
CLS
echo hello
pause
goto :menu

:pageusefull
CLS
echo                ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

echo                                              usefull tools   
echo                                        ╔(1)                               
echo                                        ║
echo                                        ╠(2) 
echo                                        ║
echo                                        ╚(3) 
echo                                               + for page 4
echo                                               - for page 2
echo.

set /p input= .

if %input%==1 goto :systeminfo
if %input%==2 goto :network
if %input%==3 goto :tasks
if %input%==- goto :page 2
if %input%==+ goto :page 4

pause > nul


:credits
CLS
color f
cls
echo.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo.
echo [95m┌─────────────────────────────────────┐
echo    [97mMade by [92mViekas_linkki1
echo    [97mMade For [92mEducational [97mPurposes Only!
echo [95m└─────────────────────────────────────┘
echo [97m
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CLS 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS 
timeout 1 /NOBREAK >nul
CLS
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
CLS
timeout 1 /NOBREAK >nul
goto :menu
                                                                                                                              
