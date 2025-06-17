; --- Options générales du script ---
#SingleInstance Force           ; Force une seule instance du script (relance automatiquement s’il est déjà lancé)
;#SingleInstance Ignore         ; (option alternative : ignore les nouvelles instances — ici commentée)
;#NoTrayIcon                    ; (option pour cacher l’icône dans la barre système — ici commentée)

DetectHiddenWindows True       ; Permet d’interagir avec les fenêtres cachées (non visibles à l’écran)

; --- Inclusions de fichiers externes ---
#Include french.ahk            ; Fichier externe contenant probablement des remaps ou fonctions spécifiques à l’interface française
#Include Keybinding.ahk        ; Inclusion de fonctions ou raccourcis personnalisés