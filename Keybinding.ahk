#SingleInstance Force

; --- Raccourci global ---
^+r::Send "{F2}"  ; Ctrl + Shift + R → Envoie la touche F2

; --- Raccourcis actifs uniquement lorsque F15 est maintenue ---
#HotIf GetKeyState("F15", "P")

; --- Système / Lancement d'applications ---
q::Run("cmd.exe", EnvGet("USERPROFILE"))   ; F15 + Q → Ouvre cmd dans le dossier utilisateur
e::Run "explorer.exe"                      ; F15 + E → Ouvre l'explorateur de fichiers
m::Run "shutdown /s /t 0"                  ; F15 + M → Éteint immédiatement l'ordinateur
c::Send "!{F4}"                            ; F15 + C → Ferme la fenêtre active (Alt + F4)
r::Send "^{Esc}"                           ; F15 + R → Ouvre le menu démarrer (Ctrl + Échap)
p::Send "#z"                               ; F15 + P → Ouvre les Snap Layouts (Win + Z)
v::Send "#{Tab}"                           ; F15 + V → Vue des tâches (Win + Tab)

; --- Navigation entre bureaux virtuels ---
Enter::Send "#^d"                          ; F15 + Entrée → Nouveau bureau (Win + Ctrl + D)
Del::Send "#^{F4}"                         ; F15 + Suppr → Ferme le bureau virtuel actif
+WheelUp::Send "^#^{Left}"                 ; F15 + Maj + Molette Haut → Bureau précédent
+WheelDown::Send "^#^{Right}"              ; F15 + Maj + Molette Bas → Bureau suivant

; --- Contrôle de la fenêtre active (flèches) ---
w::Send "{Up}"                             ; F15 + W → Flèche haut
a::Send "{Left}"                           ; F15 + A → Flèche gauche
s::Send "{Down}"                           ; F15 + S → Flèche bas
d::Send "{Right}"                          ; F15 + D → Flèche droite

; --- Gestion des fenêtres (Snap / Restauration / Maximisation) ---
+w::WinMaximize("A")                       ; F15 + Maj + W → Maximiser
+a::Send "#{Left}"                         ; F15 + Maj + A → Ancrer à gauche
+s::Send "#{Down}"                         ; F15 + Maj + S → Réduire / Restaurer
+d::Send "#{Right}"                        ; F15 + Maj + D → Ancrer à droite
Esc::Send "#{d}"                           ; F15 + 3 → Minimise / Restaure toutes les fenêtres
WheelUp::WinMaximize("A")                  ; F15 + Molette haut → Maximiser fenêtre
WheelDown::CenterWindow80()                ; F15 + Molette bas → Centrer fenêtre à 80%
1::CascadeWindowsCentered()

; --- Contrôle multimédia ---
,::Send "{Media_Prev}"                     ; F15 + Virgule → Piste précédente
.::Send "{Media_Next}"                     ; F15 + Point → Piste suivante
Space::Send "{Media_Play_Pause}"           ; F15 + Espace → Lecture / Pause
/::Send "{Media_Stop}"                     ; F15 + Slash → Stop
BackSpace::Send "{Volume_Mute}"            ; F15 + Retour arrière → Muet
Home::Send "{Volume_Up}"                   ; F15 + Home → Volume +
End::Send "{Volume_Down}"                  ; F15 + End → Volume -

#HotIf  ; Fin de la condition F15

; --- Fonction utilitaire : Centrer la fenêtre active à 80% ---
CenterWindow80() {
    hwnd := WinExist("A")
    if !hwnd
        return  ; Aucune fenêtre active trouvée

    WinRestore(hwnd)  ; Restaure la fenêtre si elle est minimisée ou maximisée

    screenW := A_ScreenWidth
    screenH := A_ScreenHeight

    newW := Round(screenW * 0.8)
    newH := Round(screenH * 0.8)
    newX := (screenW - newW) // 2
    newY := (screenH - newH) // 2

    ; Flags : SWP_NOZORDER (0x0004) | SWP_NOACTIVATE (0x0010)
    flags := 0x0010 | 0x0004

    DllCall("SetWindowPos", "ptr", hwnd, "ptr", 0, "int", newX, "int", newY, "int", newW, "int", newH, "uint", flags)
}

CascadeWindowsCentered() {
    hwndList := []

    for hwnd in WinGetList() {
        try {
            if !(WinGetStyle("ahk_id " hwnd) & 0x10000000)  ; Non visible
                continue
            if WinGetTitle("ahk_id " hwnd) == ""            ; Sans titre
                continue
            if WinGetMinMax("ahk_id " hwnd) == 1            ; Minimisée
                continue

            hwndList.Push(hwnd)
        }
    }

    if hwndList.Length == 0
        return

    screenW := A_ScreenWidth
    screenH := A_ScreenHeight
    winW := Round(screenW * 0.6)
    winH := Round(screenH * 0.6)

    offsetX := 80
    offsetY := 80

    count := hwndList.Length

    ; Taille totale occupée par la cascade
    totalW := winW + (count - 1) * offsetX
    totalH := winH + (count - 1) * offsetY

    ; Centrage de la cascade
    baseX := Round((screenW - totalW) / 2)
    baseY := Round((screenH - totalH) / 2)

    for i, hwnd in hwndList {
        index := count - i + 1
        x := baseX + ((index - 1) * offsetX)
        y := baseY + ((index - 1) * offsetY)

        ; Empêche débordement
        if (x + winW > screenW)
            x := screenW - winW
        if (y + winH > screenH)
            y := screenH - winH
        if (x < 0)
            x := 0
        if (y < 0)
            y := 0

        try {
            if WinGetMinMax("ahk_id " hwnd) == 2
                WinRestore("ahk_id " hwnd)

            DllCall("SetWindowPos", "ptr", hwnd, "ptr", 0,
                "int", x, "int", y, "int", winW, "int", winH,
                "uint", 0x0010 | 0x0004)
        }
    }
}