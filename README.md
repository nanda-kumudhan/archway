<div align="center">

# 🌊 Sway Config

**A minimal, keyboard-driven Wayland workflow for Arch Linux**

</div>

---

## 📸 Preview

<!-- Add screenshots here -->
<div align="center">

*Add screenshots to `~/Pictures/Screenshots/` and link them here.*

```
<img width="993" height="612" alt="2026-07-29_14-38-00" src="https://github.com/user-attachments/assets/5abaa738-303f-4c58-a243-71216b42fd87" />
<img width="1920" height="1080" alt="2026-07-29_14-38-10" src="https://github.com/user-attachments/assets/7d9c5a02-d8f4-44ae-8d92-5b3c6bbe26fe" />
<img width="1920" height="22" alt="2026-07-29_14-38-34" src="https://github.com/user-attachments/assets/1ebb1786-f397-446f-ad2e-96614f9f6118" />
<img width="871" height="748" alt="2026-07-29_14-39-09" src="https://github.com/user-attachments/assets/880c964a-f5e4-4705-b365-d32c66c7d413" />

```

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

| Shortcut | Action |
| --- | --- |
| `Ctrl + Mod + T` | Open terminal |
| `Mod + Space` | Open launcher |
| `Mod + E` | Open Rofi file browser |
| `Mod + Shift + E` | Open Thunar |
| `Mod + Z` | Open Zed |
| `Mod + Shift + P` | Open Wdisplays |
| `Mod + Q` | Close window |
| `Mod + L` | Lock screen |

### Window Management

| Shortcut | Action |
| --- | --- |
| `Mod + H / V` | Set split direction |
| `Mod + R` | Toggle layout |
| `Mod + F` | Toggle fullscreen |
| `Mod + Shift + S` | Keep window visible on all workspaces |
| `Mod + D` | Toggle floating mode |
| `Mod + T` | Tabbed layout |
| `Mod + S` | Stacking layout |

### Navigation

| Shortcut | Action |
| --- | --- |
| `Mod + Arrow Keys` | Focus windows |
| `Mod + Shift + Arrow Keys` | Move windows |
| `Mod + 1–9` | Switch workspace |
| `Mod + Shift + 1–9` | Move window to workspace |

---

## 🖼️ Screenshots & Recording

### Keybindings

| Shortcut | Action |
| --- | --- |
| `Print` | Full screenshot |
| `Shift + Print` | Area screenshot |
| `Ctrl + Print` | Full-screen recording |
| `Ctrl + Shift + Print` | Area recording |

### Storage Locations

| Type | Path |
| --- | --- |
| Screenshots | `~/Pictures/Screenshots/` |
| Recordings | `~/Videos/Recordings/` |

---

## 🔋 Power Management

| Trigger | Behaviour |
| --- | --- |
| Idle 5 minutes | Lock screen |
| Idle 10 minutes | Suspend system |
| `Mod + Shift + S` | Manual suspend |

Includes full **laptop support**: lid handling, automatic display management, and power-saving rules.

---

## ⚙️ Configuration

**Main config file:**

```
~/.config/sway/config
```

**Reload configuration:** `Mod + Shift + R`

**Suggested layout:**

```
~/.config/sway/
├── config
├── scripts/
├── themes/
└── wallpapers/
```

**Wallpaper location:**

```
~/Pictures/Wallpapers/
```

---

## 🧱 Included Components

| Component | Details |
| --- | --- |
| **Window Manager** | Sway, Autotiling, custom layouts, Vim-style navigation, workspace management |
| **Status Bar** | Waybar — network indicators, Bluetooth tray, media controls |
| **Terminal** | Foot, JetBrains Mono Nerd Font |
| **Launcher** | Rofi (app launcher + file browser) |
| **File Management** | Thunar with UDisks integration |
| **Notifications** | Dunst |
| **Screenshots** | Grim, Slurp, wl-clipboard |
| **Locking & Idle** | Swayidle, Swaylock |
| **Display Management** | Kanshi, Wdisplays |

---

## ✨ Extras

**Media controls** *(PipeWire-based)*

- WirePlumber
- Playerctl
- Brightnessctl
- Pavucontrol

**Security & authentication** *(GNOME Keyring)*

- Secret storage
- Application authentication
- SSH key support

---

## 📄 License

MIT
