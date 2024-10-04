@echo off
:: Vérification des privilèges administratifs
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Demande des privilèges administratifs...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

:: Si on est ici, c'est qu'on a déjà les droits admin
color 07
title My Ai 2.0+
echo Creating file "???" on Desktop...
:: Crée un fichier texte nommé "???" sur le bureau
set desktopPath=%userprofile%\Desktop
echo What... You can hear me? Can you do? >> "%desktopPath%\???.txt"
echo Leason.. we dont have much time, you'll need to destroy this program and fast. First of this program is connected to a game "an hangout nostalgia game [2]" >> "%desktopPath%\???.txt"

timeout /t 2 >nul

:: Début du programme avec nouvelle IA
echo Hello, I'm your AI 2.0. I'm back with an update!
timeout /t 5 >nul
echo.
echo Question 1: Are you OK today? [y/n]
set /p okToday=
if /i "%okToday%"=="y" (
    echo Oh nice to hear!
    timeout /t 2 >nul
    goto question2
) else if /i "%okToday%"=="n" (
    echo Oh.. :(. Sorry about that.
    timeout /t 2 >nul
    goto question2
) else (
    echo Invalid input, but I'll move on.
    timeout /t 2 >nul
    goto question2
)

:question2
timeout /t 2 >nul
echo.
echo Question 2: Who is your best friend?
set /p bestFriend=
if /i "%bestFriend%"=="captaine_officiel" (
    echo Lolcat..? ._. anyway.
    timeout /t 2 >nul
) else if /i "%bestFriend%"=="builderdream" (
    echo Lolcat..? ._. anyway.
    timeout /t 2 >nul
) else (
    echo Oh Cool! :3
    timeout /t 2 >nul
)

timeout /t 2 >nul
echo.
echo Question 3: Are you enjoying our AI? [y/n]
set /p enjoyAI=
if /i "%enjoyAI%"=="y" (
    echo YIPPEE! ;)
    timeout /t 2 >nul
    goto question4
) else if /i "%enjoyAI%"=="n" (
    echo Oh.. it's ok :| I'll try to do better.
    timeout /t 2 >nul
    goto question4
) else (
    echo Invalid input, but I'll move on.
    timeout /t 2 >nul
    goto question4
)

:question4
timeout /t 2 >nul
echo.
echo Question 4: Do you have any pet? [y/n]
set /p havePet=

:: Traiter l'entrée de l'utilisateur
if /i "%havePet%"=="y" (
    echo Great! Pets are wonderful! 
) else if /i "%havePet%"=="n" (
    echo No pets? That's okay!
) else (
    echo Invalid input. Please enter 'y' or 'n'.
)

timeout /t 2 >nul  :: Délai de 2 secondes après avoir traité la question

:: Question 5 avec effet progressif
echo.
setlocal enabledelayedexpansion
set "question5=Question 5: WhO is tHe PeRsoN tHaTs EnTeR YouR hoUse :)?"
for /l %%i in (0,1,50) do (
    set char=!question5:~%%i,1!
    set /p=!char!<nul
    timeout /t 0.70 >nul
)
echo.

:: Changement de couleur
color 0C
echo Oh sorry, I don't know what happened :(. 
timeout /t 2 >nul
echo.
echo We will fix that. Please come back later or install Windows 11 [y/n]
set /p installWindows=
if /i "%installWindows%"=="y" (
    echo Updating data files...
    echo Note: Please go to Windows Update in your settings.
    exit
) else if /i "%installWindows%"=="n" (
    echo Okie, let's do something else then...
)

timeout /t 3 >nul
echo.
echo Wanna know something fun? [y/n]
set /p funThing=
if /i "%funThing%"=="y" (
    start "" https://youtube.com/shorts/SXHMnicI6Pg?si=zs1OITqx0Mv5rZVk
    timeout /t 10 >nul
    taskkill /im chrome.exe /f
    echo Ahah got rickrolled :)
    timeout /t 2 >nul
) else (
    echo Ok.. let's move on.
    timeout /t 2 >nul
)

:: Demander à l'utilisateur s'il veut jouer à Roblox
echo.
echo So, wanna play some Roblox? [y/n]
set /p playRoblox=

if /i "%playRoblox%"=="y" (
    :: Si l'utilisateur dit oui, lancer Roblox et attendre 1 minute
    start "" https://www.roblox.com/games/13892378955/1-A-Nostalgic-Hangout-Game
    timeout /t 10 >nul
    echo Have fun on Roblox!
    timeout /t 60 >nul  :: Attendre 1 minute
) else (
    :: Si l'utilisateur dit non, attendre 30 secondes avant de continuer
    echo Oh ok, well, cya... I need to update for future things.
    timeout /t 30 >nul  :: Attendre 30 secondes
)

:: Continuer le script après la section Roblox
@echo off

:: Changer l'arrière-plan en noir et afficher le message initial
timeout /t 3 >nul
color 0F
echo Your.. not supposed to be here..
timeout /t 3 >nul

:: Envoyer le premier message Windows
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('...')"

:: Attendre la fermeture du premier message et envoyer les suivants
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('YOU')"
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('ARE')"
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('NOT SUPPOSED')"
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('TO BE HERE')"

:: Lancer la vidéo en plein écran
start chrome --kiosk https://youtu.be/GpggnNVfp1w?si=sYhbI7d708c5GGLc
timeout
