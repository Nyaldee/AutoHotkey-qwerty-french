# AutoHotkey qwerty-french

*[Read in English](README.md)*

Script AutoHotkey v2 personnel pour clavier physique QWERTY (US) : ajoute
une couche de caractères accentués français, plus des raccourcis Windows
généraux (fenêtres, bureaux virtuels, médias). Portable — l'interpréteur
AutoHotkey v2 est fourni directement dans le dossier, pas besoin de
l'installer.

## Utilisation

Double-clique sur [AutoHotkey64.ahk](AutoHotkey64.ahk). Si les fichiers
`.ahk` ne sont pas encore associés à [AutoHotkey64.exe](AutoHotkey64.exe)
sur ta machine, lance d'abord [AssociateAhkFiles.bat](AssociateAhkFiles.bat)
une fois (associe l'extension) — il doit rester dans le même dossier que
`AutoHotkey64.exe`, il le référence par chemin relatif — ou lance
directement en ligne de commande :

```
AutoHotkey64.exe AutoHotkey64.ahk
```

Pour mettre à jour ou réinstaller l'interpréteur fourni : version 2.1,
téléchargeable sur [autohotkey.com/download/2.1](https://www.autohotkey.com/download/2.1/).

## Personnalisation

Tous les scripts sont largement commentés pour faciliter les
modifications. Ouvre-les dans un éditeur de texte pour consulter ou
personnaliser les raccourcis clavier.

## Touches de calque (F15 / F20)

Les deux couches ci-dessous s'activent en maintenant **F15** ou **F20** —
des touches absentes des claviers standards. L'utilisation de touches de
fonction élevées (F13–F24) comme modificateurs permet d'éviter les
conflits avec les raccourcis système ou applicatifs courants.

### Remapper une touche physique

- **Clavier custom avec firmware open-source** : modifie le firmware (QMK/VIA).
- **Clavier standard** :
  - Utilise l'application fournie par le constructeur si disponible.
  - Sinon, utilise l'outil [misc/SharpKeys.exe](misc/SharpKeys.exe).

## `French.ahk` — Couche caractères accentués (F20)

Maintiens **F20**, puis appuie sur une touche pour insérer le caractère
correspondant (`+` = Shift, `^` = Ctrl, en plus de F20 maintenue).

### Lettres accentuées

| Touche | Résultat | + Shift |
|---|---|---|
| `a` | à | À |
| `b` | ß | ẞ |
| `c` | ç | Ç |
| `d` | ë | Ë |
| `e` | é | É |
| `f` | ê | Ê |
| `h` | û | Û |
| `i` | î | Î |
| `j` | ü | Ü |
| `k` | ï | Ï |
| `o` | ô | Ô |
| `p` | œ | Œ |
| `q` | â | Â |
| `r` | è | È |
| `s` | æ | Æ |
| `u` | ù | Ù |
| `y` | ÿ | ¤ |
| `z` | ä | Ä |

### Symboles et ponctuation

| Touche | Résultat | + Shift |
|---|---|---|
| `l` | — | ∟ |
| `m` | ∞ | ♂ |
| `n` | ♪ | ♫ |
| `t` | ™ | † |
| `v` | ✓ | Ω |
| `w` | Ꞷ | Ʒ |
| `x` | × | ÷ |
| `,` | ← | ↞ |
| `.` | → | ➜ |
| `/` | ↓ | ↑ |
| `[` | « | — |
| `]` | » | — |
| `Ctrl+[` | " | — |
| `Ctrl+]` | " | — |
| `'` | ` | — |
| `\` | ︱ | — |

### Symboles monétaires / mathématiques (Ctrl + touche)

| Touche | Résultat | Touche | Résultat |
|---|---|---|---|
| `Ctrl+a` | α | `Ctrl+s` | $ |
| `Ctrl+c` | © | `Ctrl+t` | △ |
| `Ctrl+d` | °C | `Ctrl+u` | μ |
| `Ctrl+e` | € | `Ctrl+v` | ✌︎ |
| `Ctrl+f` | ♀ | `Ctrl+x` | ⨉ |
| `Ctrl+h` | H₂O | `Ctrl+y` | ¥ |
| `Ctrl+l` | £ | `Ctrl+z` | ≠ |
| `Ctrl+m` | m² | `Ctrl+<` | ⩽ |
| `Ctrl+n` | ♬ | `Ctrl+>` | ⩾ |
| `Ctrl+o` | 〇 | `Ctrl+?` | ‽ |
| `Ctrl+p` | π | `Ctrl+q` | ¡ |
| `Ctrl+r` | ® | | |

### Exposants (rangée de chiffres)

| Touche | `1` | `2` | `3` | `4` | `5` | `6` | `7` | `8` | `9` | `0` | `-` |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Résultat | ¹ | ² | ³ | ⁴ | ⁵ | ⁶ | ⁷ | ⁸ | ⁹ | ⁰ | °ᵉʳ |

## `Keybinding.ahk` — Raccourcis généraux (F15)

Toujours actif (sans F15) : `Ctrl+Shift+R` → envoie `F2` (renommer).

### Applications & système

| Touche (F15 + ...) | Action |
|---|---|
| `Q` | Ouvre `cmd.exe` dans le dossier utilisateur |
| `E` | Ouvre l'explorateur de fichiers |
| `M` | ⚠️ Éteint immédiatement le PC (`shutdown /s /t 0`, sans confirmation) |
| `C` | Ferme la fenêtre active (Alt+F4) |
| `R` | Ouvre le menu Démarrer (Ctrl+Échap) |
| `P` | Snap Layouts (Win+Z) |
| `V` | Vue des tâches (Win+Tab) |

### Bureaux virtuels

| Touche (F15 + ...) | Action |
|---|---|
| `Entrée` | Nouveau bureau virtuel |
| `Suppr` | Ferme le bureau virtuel actif |
| `Shift+Molette haut` | Bureau précédent |
| `Shift+Molette bas` | Bureau suivant |

### Fenêtres

| Touche (F15 + ...) | Action |
|---|---|
| `W` / `A` / `S` / `D` | Flèches haut / gauche / bas / droite |
| `Shift+W` | Maximiser |
| `Shift+A` | Ancrer à gauche |
| `Shift+S` | Réduire / restaurer |
| `Shift+D` | Ancrer à droite |
| `Échap` | Minimise/restaure toutes les fenêtres (Win+D) |
| `Molette haut` | Maximiser la fenêtre active |
| `Molette bas` | Centre la fenêtre active à 80% de l'écran |
| `1` | Dispose toutes les fenêtres visibles en cascade centrée |

### Médias

| Touche (F15 + ...) | Action |
|---|---|
| `,` | Piste précédente |
| `.` | Piste suivante |
| `Espace` | Lecture / Pause |
| `/` | Stop |
| `Retour arrière` | Muet |
| `Home` | Volume + |
| `End` | Volume - |

## Structure du dépôt

```
AutoHotkey64.ahk       point d'entrée — inclut French.ahk et Keybinding.ahk
French.ahk             couche caractères accentués (F20)
Keybinding.ahk         couche raccourcis Windows/fenêtres/médias (F15)
AutoHotkey64.exe       interpréteur AutoHotkey v2 portable
AssociateAhkFiles.bat  associe l'extension .ahk à AutoHotkey64.exe (1ère utilisation)
misc/                  outils complémentaires pour qui veut aller plus loin
                       (remaps par-jeu, bindings perso par application, Window
                       Spy, remap clavier bas niveau...) — pas inclus par
                       défaut dans AutoHotkey64.ahk, à explorer au besoin
```

## Licence

Copyright (C) 2026 Nyaldee. Distribué sous licence [GNU General Public License v3.0](LICENSE) — voir le fichier `LICENSE` pour le texte complet.
