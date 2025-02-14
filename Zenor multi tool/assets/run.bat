@echo off
echo Installing dependecies...
pip install -r requirements.txt
cls
echo Running DemonHook by Viekaslinkki1 on github...
timeout /t 2
py viekashook.py