# AutoHotkey qwerty-french

*[Lire en français](README.fr.md)*

Personal AutoHotkey v2 script for a physical QWERTY (US) keyboard: adds a
French accented-character layer, plus general Windows shortcuts (windows,
virtual desktops, media). Portable — the AutoHotkey v2 interpreter is
bundled directly in the folder, no need to install it.

## Usage

Double-click [AutoHotkey64.ahk](AutoHotkey64.ahk). If `.ahk` files aren't
already associated with [AutoHotkey64.exe](AutoHotkey64.exe) on your
machine, run [AssociateAhkFiles.bat](AssociateAhkFiles.bat) once first
(associates the extension) — it must stay in the same folder as
`AutoHotkey64.exe`, which it references by relative path — or run it
directly from the command line:

```
AutoHotkey64.exe AutoHotkey64.ahk
```

To update or reinstall the bundled interpreter: version 2.1, downloadable
from [autohotkey.com/download/2.1](https://www.autohotkey.com/download/2.1/).

## Customization

All scripts are heavily commented to make changes easier. Open them in a
text editor to review or customize the keyboard shortcuts.

## Layer keys (F15 / F20)

The two layers below are activated by holding **F15** or **F20** — keys
absent from standard keyboards. Using high function keys (F13–F24) as
modifiers avoids conflicts with common system or application shortcuts.

### Remapping a physical key

- **Custom keyboard with open-source firmware**: modify the firmware (QMK/VIA).
- **Standard keyboard**:
  - Use the manufacturer's software if available.
  - Otherwise, use [misc/SharpKeys.exe](misc/SharpKeys.exe).

## `French.ahk` — Accented-character layer (F20)

Hold **F20**, then press a key to insert the corresponding character
(`+` = Shift, `^` = Ctrl, in addition to holding F20).

### Accented letters

| Key | Result | + Shift |
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

### Symbols and punctuation

| Key | Result | + Shift |
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

### Currency / math symbols (Ctrl + key)

| Key | Result | Key | Result |
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

### Superscripts (digit row)

| Key | `1` | `2` | `3` | `4` | `5` | `6` | `7` | `8` | `9` | `0` | `-` |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Result | ¹ | ² | ³ | ⁴ | ⁵ | ⁶ | ⁷ | ⁸ | ⁹ | ⁰ | °ᵉʳ |

## `Keybinding.ahk` — General shortcuts (F15)

Always active (without F15): `Ctrl+Shift+R` → sends `F2` (rename).

### Applications & system

| Key (F15 + ...) | Action |
|---|---|
| `Q` | Opens `cmd.exe` in the user folder |
| `E` | Opens File Explorer |
| `M` | ⚠️ Immediately shuts down the PC (`shutdown /s /t 0`, no confirmation) |
| `C` | Closes the active window (Alt+F4) |
| `R` | Opens the Start menu (Ctrl+Esc) |
| `P` | Snap Layouts (Win+Z) |
| `V` | Task View (Win+Tab) |

### Virtual desktops

| Key (F15 + ...) | Action |
|---|---|
| `Enter` | New virtual desktop |
| `Delete` | Closes the active virtual desktop |
| `Shift+Wheel up` | Previous desktop |
| `Shift+Wheel down` | Next desktop |

### Windows

| Key (F15 + ...) | Action |
|---|---|
| `W` / `A` / `S` / `D` | Up / left / down / right arrows |
| `Shift+W` | Maximize |
| `Shift+A` | Snap left |
| `Shift+S` | Minimize / restore |
| `Shift+D` | Snap right |
| `Escape` | Minimize/restore all windows (Win+D) |
| `Wheel up` | Maximize the active window |
| `Wheel down` | Centers the active window at 80% of the screen |
| `1` | Arranges all visible windows in a centered cascade |

### Media

| Key (F15 + ...) | Action |
|---|---|
| `,` | Previous track |
| `.` | Next track |
| `Space` | Play / Pause |
| `/` | Stop |
| `Backspace` | Mute |
| `Home` | Volume + |
| `End` | Volume - |

## Repository structure

```
AutoHotkey64.ahk       entry point — includes French.ahk and Keybinding.ahk
French.ahk             accented-character layer (F20)
Keybinding.ahk         Windows/window/media shortcuts layer (F15)
AutoHotkey64.exe       portable AutoHotkey v2 interpreter
AssociateAhkFiles.bat  associates the .ahk extension with AutoHotkey64.exe (first use)
misc/                  extra tools for going further (per-game remaps, per-app
                       custom bindings, Window Spy, low-level keyboard
                       remapping...) — not included by default in
                       AutoHotkey64.ahk, explore as needed
```

## License

Copyright (C) 2026 Nyaldee. Licensed under the [GNU General Public License v3.0](LICENSE) — see the `LICENSE` file for the full text.
