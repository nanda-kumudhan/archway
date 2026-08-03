<div align="center">

# 🌊 Sway Config

**A minimal, keyboard-driven Wayland workflow for Arch Linux**

</div>

---

## 📸 Preview

<!-- Add screenshots here -->
<div align="center">

<img width="993" alt="Main desktop" src="https://github.com/user-attachments/assets/5abaa738-303f-4c58-a243-71216b42fd87" />

<img width="900" alt="Waybar" src="https://github.com/user-attachments/assets/7d9c5a02-d8f4-44ae-8d92-5b3c6bbe26fe" />

<img width="900" alt="Workspace overview" src="https://github.com/user-attachments/assets/1ebb1786-f397-446f-ad2e-96614f9f6118" />

<img width="871" alt="Application launcher" src="https://github.com/user-attachments/assets/880c964a-f5e4-4705-b365-d32c66c7d413" />

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Packages](#-packages)
- [Keybindings](#️-keybindings)
- [Screenshots & Recording](#-screenshots--recording)
- [Power Management](#-power-management)
- [Configuration](#️-configuration)
- [Components](#-included-components)
- [Extras](#-extras)
- [License](#-license)

---

## 🧩 Overview

A clean, minimal Wayland desktop built around **Sway**, tuned for speed and keyboard-first navigation.

**Core stack:**

| Category | Tools |
| --- | --- |
| Compositor | Sway, Autotiling |
| Bar | Waybar |
| Terminal | Foot |
| Launcher | Rofi |
| File manager | Thunar |
| Notifications | Dunst |
| Display / outputs | Kanshi |
| Editor | Zed |
| Screenshots | Grim + Slurp |
| Lock / idle | Swayidle + Swaylock |

**Highlights:**

- ⌨️ Custom keybindings with Vim-style navigation
- 🗂️ Workspace management with scratchpad support
- 🪟 Floating window rules
- 💻 Laptop lid handling & power saving
- 🔊 PipeWire media controls
- 🖼️ Automatic wallpaper handling
- 🔐 GNOME keyring integration
- 📶 Network and Bluetooth tray support
- 🎨 Custom gaps, borders, and colours

---

## 📦 Packages

<details>
<summary><strong>Core</strong> — Wayland compositor & desktop components</summary>

```
sway
swaybg
swayidle
swaylock
waybar
foot
kanshi
wdisplays
autotiling
```
</details>

<details>
<summary><strong>Applications</strong> — Daily-use apps</summary>

```
rofi
thunar
zathura
imv
keepassxc
zed
xarchiver
```
</details>

<details>
<summary><strong>Media & Power</strong> — Audio, brightness, playback, notifications</summary>

```
wireplumber
playerctl
brightnessctl
pavucontrol
imv
mpv
dunst
```
</details>

<details>
<summary><strong>System Utilities</strong> — Hardware & system management</summary>

```
blueman
network-manager-applet
udiskie
gnome-disk-utility
seahorse
htop
```
</details>

<details>
<summary><strong>Capture</strong> — Screenshots & screen recording</summary>

```
grim
slurp
wl-clipboard
wf-recorder
```
</details>

<details>
<summary><strong>Theming</strong> — Appearance & fonts</summary>

```
nwg-look
papirus-icon-theme
materia-gtk
ttf-jetbrains-mono-nerd
```
</details>

<details>
<summary><strong>Session</strong> — Authentication & desktop integration</summary>

```
gnome-keyring
```
</details>

---

## ⌨️ Keybindings

> `Mod` refers to the Sway modifier key (usually Super/Windows).

### Applications

| Shortcut              | Action                    |
| --------------------- | ------------------------- |
| `Ctrl + Mod + T`      | Open terminal             |
| `Mod + Space`         | Open application launcher |
| `Mod + Shift + E`     | Open Thunar file manager  |
| `Mod + W`             | Open Brave Origin browser |
| `Mod + Z`             | Open Zed editor           |
| `Mod + L`             | Lock screen               |
| `Mod + Shift + P`     | Open display settings     |
| `Mod + Shift + Q`     | Close focused window      |
| `Ctrl + Alt + Delete` | Open power menu           |

### Window Management

| Shortcut              | Action                    |
| --------------------- | ------------------------- |
| `Mod + H`             | Set horizontal split      |
| `Mod + V`             | Set vertical split        |
| `Mod + R`             | Toggle split layout       |
| `Mod + F`             | Toggle fullscreen         |
| `Mod + D`             | Toggle floating mode      |
| `Mod + Shift + D`     | Toggle sticky window      |
| `Mod + C`             | Centre floating window    |
| `Mod + T`             | Tabbed layout             |
| `Mod + S`             | Stacking layout           |
| `Mod + Shift + R`     | Reload Sway configuration |
| `Mod + Shift + Grave` | Move window to scratchpad |
| `Mod + Grave`         | Show scratchpad window    |

### Navigation

| Shortcut                   | Action                   |
| -------------------------- | ------------------------ |
| `Mod + Arrow Keys`         | Focus windows            |
| `Mod + Shift + Arrow Keys` | Move windows             |
| `Mod + 1–9`                | Switch workspace         |
| `Mod + Shift + 1–9`        | Move window to workspace |
| `Mod + Tab`                | Next workspace           |
| `Mod + Shift + Tab`        | Previous workspace       |
| `Alt + Tab`                | Next window              |
| `Alt + Shift + Tab`        | Previous window          |

---

## 🖼️ Screenshots & Recording

### Keybindings

| Shortcut               | Action                       |
| ---------------------- | ---------------------------- |
| `Print`                | Full screenshot              |
| `Shift + Print`        | Area screenshot              |
| `Ctrl + Print`         | Toggle full-screen recording |
| `Ctrl + Shift + Print` | Toggle area recording        |

### Storage Locations

| Type        | Path                      |
| ----------- | ------------------------- |
| Screenshots | `~/Pictures/Screenshots/` |
| Recordings  | `~/Videos/Recordings/`    |

---

## 🔋 Power Management

| Trigger           | Behaviour                |
| ----------------- | ------------------------ |
| Idle 5 minutes    | Lock screen              |
| Idle 10 minutes   | Suspend system           |
| `Mod + Shift + S` | Manual suspend           |
| Laptop lid closed | Disable internal display |
| Laptop lid opened | Enable internal display  |

Includes laptop support with lid handling, display management, PipeWire controls, and power-saving rules.

---

## 🧱 Included Components

| Component              | Details                                                                                         |
| ---------------------- | ----------------------------------------------------------------------------------------------- |
| **Window Manager**     | Sway with Autotiling, custom gaps, floating rules, scratchpad support, and workspace management |
| **Status Bar**         | Waybar with system indicators and media controls                                                |
| **Terminal**           | Foot with JetBrains Mono Nerd Font                                                              |
| **Launcher**           | Rofi application launcher with Papirus icons                                                    |
| **File Management**    | Thunar with UDisks automount support                                                            |
| **Notifications**      | Dunst                                                                                           |
| **Screenshots**        | Grim, Slurp, wl-clipboard                                                                       |
| **Screen Recording**   | wf-recorder                                                                                     |
| **Locking & Idle**     | Swayidle and Swaylock                                                                           |
| **Display Management** | Kanshi and Wdisplays                                                                            |
| **Authentication**     | GNOME Keyring and Polkit integration                                                            |
| **Secrets**            | KeePassXC auto-started in the background                                                        |

---

## ✨ Extras

**Media controls** *(PipeWire-based)*

* WirePlumber
* Playerctl
* Brightnessctl
* Pavucontrol

**Desktop integration**

* NetworkManager applet
* Blueman Bluetooth tray
* UDisks automounting
* GNOME Keyring secret storage
* Automatic wallpaper handling through Swaybg


## 📄 License

MIT
