@echo off
color 3
chcp 65001 <nul
title viper by viekas
set /p "token=" < token.txt
goto :menu

:menu
CLS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
echo.                                                                                                                                                                                            
echo ██╗   ██╗██╗██████╗ ███████╗██████╗ 
echo ██║   ██║██║██╔══██╗██╔════╝██╔══██╗
echo ██║   ██║██║██████╔╝█████╗  ██████╔╝
echo ██╗ ██╔╝██║██╔═══╝ ██╔══╝  ██╔══██╗
echo ╚████╔╝ ██║██║     ███████╗██║  ██║
echo   ╚═══╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
echo                                     By viekas                                    
                                                                                                                         
  
                  
echo(1) Send Webhook Message
echo(2) View Guild Info
echo(3) Check Member Status                                                                                        
echo(4)
echo.

set /p input=enter:
if %input%==1 goto :webhook

:webhook
CLS
set /p "Message=Enter Desired Message:"
set /p "token=" < token.txt
set /f "tokens=* %%A in (channel_id.txt) do (
    call :sendmessage "&&A"
)
:sendmessage
CLS
set "channel=%~1"
set "url=https://discord.com/api/v9/channels/%channel%/messages"
echo sending message %message% to channel ID> %channel%..
:send
curl -X POST -H "Authorization: %tokens%" -H "Content-Type: application/json" -d "{}\"Content\":\"%message%"}" %url%
if %errorlevel% neq 0 (
    echo Rate limited, trying again in 5 seconds...
    timeout /t s /nonbreak >nul
    goto Send
)
CLS
echo message sent.
pause > nul



                      
