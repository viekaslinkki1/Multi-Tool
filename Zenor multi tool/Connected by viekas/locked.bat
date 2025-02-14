@ECHO OFF
title Folder Locker
if EXIST "Locker.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Would you like to Lock this Folder (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Locker.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Locker.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter Your Password to Unlock This Folder: 
set/p "pass=>"
if NOT %pass%==123 goto :FAIL
attrib -h -s "Locker.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Locker.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Password Accepted! Folder Unlocked Successfully. Enjoy
goto End
:FAIL
echo Sorry! Invalid Password. Try again
goto end
:MDLOCKER
md Locker
echo Success. Locker Created
goto End
:pause

