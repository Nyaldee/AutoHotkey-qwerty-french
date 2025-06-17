#SingleInstance Force

; --- G502 (souris) ---
#HotIf
LButton::LButton
isCooldown := false
RButton::
{
    global isCooldown
    if GetKeyState("LButton", "P") {
        if !isCooldown {
            isCooldown := true
            Send "{MButton}"
            SetTimer () => (isCooldown := false), -300
        }
    } else {
        Send "{RButton}"
    }
}
return
Home::Home
End::End
Home & LButton::Send "^r"                            ; Rafraîchir la fenêtre active
Insert & MButton::Send "^n"                          ; Nouvelle instance ou fenêtre
Insert::Send "!{F4}"                                 ; Fermer la fenêtre active
Insert & PgUp::AltTab                                ; Alt+Tab ; AltTabAndMenu
Insert & PgDn::ShiftAltTab                           ; Shift+Alt+Tab
Insert & WheelUp::WinMaximize("A")                   ; Maximiser la fenêtre active
Insert & WheelDown::CenterWindow80()                 ; Centrer la fenêtre à 80%
Insert & XButton1::WinMinimize("A")                  ; Minimiser la fenêtre active
Insert & XButton2::Send "#{Tab}"                     ; Vue des tâches (Win+Tab)

; --- Remappages classiques ---
LShift & $::SendText "¼"
LShift & 0::SendText "~"
; LShift & 9::SendText "``" ; (commenté)
Left::SendText "("
Right::SendText ")"
Shift & Left::SendText "«"
Shift & Right::SendText "»"

; --- Fonctions rapides (F16-F19) ---
F16::Send "^{c}"  ; Copier
F17::Send "^{v}"  ; Coller
F18::Send "^{z}"  ; Annuler
F19::Send "^{y}"  ; Rétablir

; =============================
; ======= APPLIS SPÉCIFIQUES ==
; =============================

; --- Explorateur de fichiers ---
#HotIf WinActive("ahk_class CabinetWClass") and WinActive("ahk_exe explorer.exe")
Insert::Send("^w")                                 ; Fermer onglet
PgUp::Send("^Tab")                                 ; Onglet précédent
PgDn::Send("^+Tab")                                ; Onglet suivant
Insert & LButton::Send("^t")                       ; Nouvel onglet
Insert & RButton::Send("^+t")                      ; Restaurer onglet
RButton & LButton::Send("{RButton}wb")             ; Clic droit + gauche : "wb"
MButton::Send("{RButton}wb")                       ; Clic milieu : "wb"
^b::Send("{RButton}wb")                            ; Ctrl + B : "wb"
^+t::Send("{RButton}wt")                           ; Ctrl + Shift + T : "wt"

; --- Brave ---
#HotIf WinActive("ahk_exe brave.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Insert & LButton::Send "^t"
Insert & RButton::Send "^+t"

; --- LibreWolf ---
#HotIf WinActive("ahk_exe librewolf.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Insert & LButton::Send "^t"
Insert & RButton::Send "^+t"

; --- YACReader ---
#HotIf WinActive("ahk_exe YACReader.exe")
Insert::Send "^w"
PgUp::Send "{Left}"
PgDn::Send "{Right}"
d::Send "{Left}"
a::Send "{Right}"
Backspace::Send "{Right}"
Insert & RButton::Send "^r"

; --- Lite XL ---
#HotIf WinActive("lite") && WinActive("ahk_exe lite-xl.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"

; --- MPV ---
#HotIf WinActive("mpv") && WinActive("ahk_exe mpv.exe")
Home::Send "+{Backspace}"
End::Send "j"
PgUp::Send "."
PgDn::Send ","
Insert & LButton::Send "g"
Insert & RButton::Send "+g"
Insert & WheelUp::Send "^g"
Insert & WheelDown::Send "+s"

; --- qimgv ---
#HotIf WinActive("ahk_exe qimgv.exe")
PgUp::Send "{Right}"
PgDn::Send "{Left}"
MButton::Send "i"

; --- Sublime Text ---
#HotIf WinActive("ahk_exe sublime_text.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Home::Send "^{Home}"
End::Send "^{End}"
Insert & LButton::Send "^n"
Insert & RButton::Send "^+t"
Insert & MButton::Send "^+n"

; --- Visual Studio Code ---
#HotIf WinActive("Visual Studio Code") && WinActive("ahk_exe Code.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Home::Send "^{Home}"
End::Send "^{End}"
Insert & LButton::Send "^n"
Insert & RButton::Send "^+t"
Insert & MButton::Send "{RButton}+!r"

; --- VSCodium ---
#HotIf WinActive("ahk_exe VSCodium.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Home::Send "^{Home}"
End::Send "^{End}"
Insert & LButton::Send "^n"
Insert & RButton::Send "^+t"
Insert & MButton::Send "{RButton}+!r"

; --- Chrome / Chromium ---
#HotIf WinActive("Chromium") && WinActive("ahk_exe chrome.exe")
Insert::Send "^w"
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"
Insert & LButton::Send "^t"
Insert & RButton::Send "^+t"

; --- Resource Monitor ---
#HotIf WinActive("Resource Monitor") && WinActive("ahk_exe perfmon.exe")
PgUp::Send "^{PgDn}"
PgDn::Send "^{PgUp}"

; --- Discord ---
#HotIf WinActive("ahk_exe Discord.exe")
PgUp::Send "^!{Up}"
PgDn::Send "^!{Down}"

; --- Hourglass Timer ---
#HotIf WinActive("Hourglass") && WinActive("ahk_exe Hourglass.exe")
PgUp::SendText "1min"
PgDn::SendText "10min"

; --- Fin de tous les blocs conditionnels ---
#HotIf
