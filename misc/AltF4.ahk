#SingleInstance Force

; --- PEGASUS ---
#HotIf WinActive("Pegasus") and WinActive("ahk_exe pegasus-fe.exe")
Insert::Send "!{Esc}"
!F4::Return

; --- SHADERGLASS ---
#HotIf WinActive("ShaderGlass") and WinActive("ahk_exe ShaderGlass.exe")
F15 & c::ProcessClose "ShaderGlass.exe"
!F4::ProcessClose "ShaderGlass.exe"

; --- CHANTELISE ---
#HotIf WinActive("Chantelise") and WinActive("ahk_exe chantelise.exe")
F15 & c::ProcessClose "chantelise.exe"
!F4::ProcessClose "chantelise.exe"

; --- CRAZY TAXI ---
#HotIf WinActive("Crazy Taxi") and WinActive("ahk_exe Crazy Taxi.exe")
F15 & c::ProcessClose "Crazy Taxi.exe"
!F4::ProcessClose "Crazy Taxi.exe"

; --- DOLPHIN ---
#HotIf WinActive("Dolphin") and WinActive("ahk_exe Dolphin.exe")
F15 & c::Run("C:\Windows\System32\cmd.exe", "/c taskkill.exe /f /im Dolphin.exe")
!F4::Run "C:\Windows\System32\cmd.exe", "/c taskkill.exe /f /im Dolphin.exe"

; --- DEAD SPACE (fenêtre modale avec class #32770) ---
#HotIf WinActive("Dead Space™") and WinActive("ahk_class #32770")
F15 & c::Send "{Enter}"
!F4::Send "{Enter}"
#PrintScreen::Send "{Escape}"

; --- DUKE3D ---
#HotIf WinActive("Duke3D") and WinActive("ahk_exe duke3d.exe")
F15 & c::ProcessClose "duke3d.exe"
!F4::ProcessClose "duke3d.exe"

; --- SONIC CD ---
#HotIf WinActive("Sonic CD") and WinActive("ahk_exe soniccd.exe")
F15 & c::ProcessClose "soniccd.exe"
!F4::ProcessClose "soniccd.exe"

; --- Fin de tous les blocs conditionnels ---
#HotIf
