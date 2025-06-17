<h1 align="center">AutoHotkey-qwerty-french</h1>
<p align="center">Scripts AutoHotkey personnels pour clavier QWERTY et usage en français</p>

---

## 📌 Description

Ce dépôt contient les scripts AutoHotkey que j'utilise au quotidien pour adapter un clavier QWERTY à un usage francophone dans un environnement Windows, ajouter des raccourcis utiles, ou personnaliser mon environnement de travail.  
Chaque script est commenté pour faciliter la compréhension et la personnalisation.

---

## 🚀 Installation & Utilisation

### 1. Prérequis
- Télécharger **AutoHotkey v2.1-alpha.18**, ici ou sur la page officielle : [AutoHotkey64.exe](https://www.autohotkey.com/download/2.1/)
- Télécharger les fichiers suivants :
  - `AutoHotkey64.ahk`
  - Les scripts `.ahk` de votre choix
- Placez tous les fichiers dans un même dossier (par exemple un dossier nommé AutoHotkey).

### 2. Configuration
- Ouvrez `AutoHotkey64.ahk` et modifiez-le pour inclure ou exclure les scripts que vous souhaitez charger.
- Assignez une touche *modificateur* que vous n'utilisez pas, comme une touche de **F13 à F24** (par exemple : `F15` à la place de Super/Windows, ou `F20` pour AltGr/droit).

#### Exemple d'utilisation :
- Si vous utilisez `Keybinding.ahk` et avez assigné `F15` à la touche Super/Windows, alors `F15 + R` pourra par exemple relancer la touche Super/Windows.
- Dans `french.ahk`, la touche `AltGr` est remplacée par `F20` pour taper les accents et caractères spéciaux.

---

## 🧩 Remapper une touche physique

- **Clavier custom avec firmware open-source** : modifiez le firmware (QMK/VIA).
- **Clavier standard** :
  - Utilisez l'application fournie par le constructeur si disponible.
  - Sinon, utilisez l'outil **SharpKeys** (fourni dans le dossier `misc`).

---

## 🗂 Contenu du dépôt

- `AutoHotkey64.ahk` : point d'entrée principal, permet d'inclure les scripts souhaités.
- `french.ahk` : ajoute les caractères accentués et spéciaux sur clavier QWERTY.
- `Keybinding.ahk` : raccourcis clavier personnalisés, largement inspirés de l'environnement Hyprland.
- `misc/` : contient plusieurs outils utiles si vous souhaitez personnaliser davantage ou approfondir l'utilisation des scripts.

---

## 📝 Remarques

- Tous les scripts sont largement commentés pour faciliter les modifications.
- Pensez à les ouvrir dans un éditeur de texte pour consulter ou personnaliser les raccourcis clavier.
- L'utilisation de touches de fonction élevées (F13–F24) comme modificateurs permet d'éviter les conflits avec les raccourcis système ou applicatifs courants.
