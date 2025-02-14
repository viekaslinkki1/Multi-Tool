@echo off
color 3
chcp 65001 <nul
title viper by viekas
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

if %input%==1 goto :webhook

:webhook
    CLS
    Echo Webhook url 



set /p input= .

                      
