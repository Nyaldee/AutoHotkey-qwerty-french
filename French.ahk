#SingleInstance Force

; --- Couche caractères accentués ---
; Active tant que F20 est physiquement enfoncée. GetKeyState interroge
; l'état réel de la touche à chaque instant (contrairement à un booléen
; mis à jour via des hotkeys up/down) : elle ne peut donc jamais rester
; "coincée" active, même en cas de perte de focus pendant que F20 est
; maintenue.
#HotIf GetKeyState("F20", "P")

; -----------------------------------------------------------------------------
; Lettres accentuées (minuscule / +touche = majuscule)
; -----------------------------------------------------------------------------
a::SendText "à"
+a::SendText "À"
b::SendText "ß"
+b::SendText "ẞ"
c::SendText "ç"
+c::SendText "Ç"
d::SendText "ë"
+d::SendText "Ë"
e::SendText "é"
+e::SendText "É"
f::SendText "ê"
+f::SendText "Ê"
h::SendText "û"
+h::SendText "Û"
i::SendText "î"
+i::SendText "Î"
j::SendText "ü"
+j::SendText "Ü"
k::SendText "ï"
+k::SendText "Ï"
o::SendText "ô"
+o::SendText "Ô"
p::SendText "œ"
+p::SendText "Œ"
q::SendText "â"
+q::SendText "Â"
r::SendText "è"
+r::SendText "È"
s::SendText "æ"
+s::SendText "Æ"
u::SendText "ù"
+u::SendText "Ù"
y::SendText "ÿ"
+y::SendText "¤"
z::SendText "ä"
+z::SendText "Ä"

; -----------------------------------------------------------------------------
; Symboles et ponctuation diverses
; -----------------------------------------------------------------------------
l::SendText "—"
+l::SendText "∟"
m::SendText "∞"
+m::SendText "♂"
n::SendText "♪"
+n::SendText "♫"
t::SendText "™"
+t::SendText "†"
v::SendText "✓"
+v::SendText "Ω"
w::SendText "Ꞷ"
+w::SendText "Ʒ"
x::SendText "×"
+x::SendText "÷"
,::SendText "←"
.::SendText "→"
/::SendText "↓"
+/::SendText "↑"
+,::SendText "↞"
+.::SendText "➜"
[::SendText "«"
]::SendText "»"
^[::SendText "“"
^]::SendText "”"
'::SendText "``"
\::SendText "︱"

; -----------------------------------------------------------------------------
; Symboles monétaires / mathématiques / copyright (Ctrl + touche)
; -----------------------------------------------------------------------------
^a::SendText "α"
^c::SendText "©"
^d::SendText "°C"
^e::SendText "€"
^f::SendText "♀"
^h::SendText "H₂O"
^l::SendText "£"
^m::SendText "m²"
^n::SendText "♬"
^o::SendText "〇"
^p::SendText "π"
^q::SendText "¡"
^r::SendText "®"
^s::SendText "$"
^t::SendText "△"
^u::SendText "μ"
^v::SendText "✌︎"
^x::SendText "⨉"
^y::SendText "¥"
^z::SendText "≠"
^<::SendText "⩽"
^>::SendText "⩾"
^?::SendText "‽"

; -----------------------------------------------------------------------------
; Exposants et chiffres spéciaux (rangée de chiffres)
; -----------------------------------------------------------------------------
1::SendText "¹"
2::SendText "²"
3::SendText "³"
4::SendText "⁴"
5::SendText "⁵"
6::SendText "⁶"
7::SendText "⁷"
8::SendText "⁸"
9::SendText "⁹"
0::SendText "⁰"
-::SendText "°ᵉʳ"
=::SendText "≠"

#HotIf
