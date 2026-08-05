<div align="center">

# 🌊 Archway

**A minimal, keyboard-driven Sway desktop for Arch Linux**

</div>

---

## 📸 Preview

<div align="center">

<img width="1920" height="1080" alt="2026-08-05_17-23-09" src="https://github.com/user-attachments/assets/62281113-1e35-43b8-aefd-4a359f43ed07" />

<img width="900" alt="Waybar" src="https://github.com/user-attachments/assets/7d9c5a02-d8f4-44ae-8d92-5b3c6bbe26fe" />

<img width="900" alt="Workspace overview" src="https://github.com/user-attachments/assets/1ebb1786-f397-446f-ad2e-96614f9f6118" />

<img width="871" alt="Application launcher" src="https://github.com/user-attachments/assets/880c964a-f5e4-4705-b365-d32c66c7d413" />

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Core stack](#-core-stack)
- [Theme](#-theme)
- [Sway configuration](#-sway-configuration)
- [Keybindings](#-keybindings)
- [Waybar](#-waybar)
- [Rofi](#-rofi)
- [Foot terminal](#-foot-terminal)
- [Dunst notifications](#-dunst-notifications)
- [Swaylock](#-swaylock)
- [Screenshots and recording](#-screenshots-and-recording)
- [Power management](#-power-management)
- [Repository layout](#-repository-layout)
- [Philosophy](#-philosophy)
- [License](#-license)

---

## 🌿 Overview

Archway is a minimal Wayland desktop built around **Sway** and tuned for a keyboard-first Arch Linux workflow.

It is intentionally small, dark, and consistent across the whole session:

- black backgrounds
- muted greys
- JetBrains Mono Nerd Font
- simple borders and gaps
- workspace-focused navigation
- a compact top bar with useful indicators

---

## 🧰 Core stack

| Area | Tooling |
| --- | --- |
| Compositor | Sway |
| Bar | Waybar |
| Terminal | Foot |
| Launcher | Rofi |
| File manager | Thunar |
| Notifications | Dunst |
| Output management | Kanshi |
| Automatic tiling | Autotiling |
| Screen locker | Swaylock |
| Idle / power | Swayidle |
| Wallpaper | Swaybg |
| Screenshots | Grim + Slurp |
| Recording | wf-recorder |
| Audio | PipeWire + WirePlumber |
| Keyring | GNOME Keyring |
| Removable media | Udiskie |
| Bluetooth | Blueman |
| Network | NetworkManager + nm-applet |
| Secrets manager | KeePassXC |

---

## 🎨 Theme

The whole desktop shares a monochrome look.

### Main colours

- Background: `#000000`
- Primary text: `#e6e6e6` / `#eeeeee`
- Muted text: `#9a9a9a` / `#666666`
- Borders: `#2a2a2a` / `#4a4a4a`
- Urgent state: bright white or soft red depending on component

### Font

- **JetBrains Mono Nerd Font**

This same style is used in Sway, Waybar, Rofi, Dunst, Foot, and Swaylock.

---

## 🖥️ Sway configuration

### Startup services

Sway starts the desktop session with these services:

- `dunst`
- `kanshi`
- `autotiling`
- `keepassxc --minimized`
- `gnome-keyring-daemon`
- `udiskie --smart-tray --automount`
- `nm-applet --indicator`
- `blueman-applet`
- `swayidle`
- `swaybg`
- custom polkit agent
- `sway-session.target`

### Session integration

The config exports Wayland and Sway session variables into D-Bus and systemd user services so apps inherit the right environment.

### Input settings

- keyboard layout: `gb`
- touchpad tap: disabled
- natural scrolling: enabled
- pointer scrolling: enabled
- focus follows mouse: disabled
- cursor theme: Adwaita, size 24

### Window and workspace layout

- 10 workspaces (`1` to `10`)
- `Mod + 0` maps to workspace 10
- 2px borders
- 3px inner gaps
- 2px outer gaps
- centered titlebars
- smart borders enabled
- scratchpad support
- floating and centered rules for common utility apps

### Output handling

The config uses `kanshi` for display profiles and `wdisplays` for manual display management.

---

## ⌨️ Keybindings

> `Mod` means the Super / Windows key.

### Applications

| Shortcut | Action |
| --- | --- |
| `Ctrl + Alt + T` | Open terminal (`foot`) |
| `Mod + Space` | Application launcher |
| `Mod + E` | Rofi file browser |
| `Mod + Shift + E` | Open Thunar |
| `Mod + W` | Open Brave Origin |
| `Mod + Z` | Open Zed |
| `Mod + L` | Lock screen |
| `Mod + Shift + P` | Display settings (`wdisplays`) |
| `Mod + K` | KeePassXC |
| `Mod + B` | Blueman manager |
| `Mod + N` | Network TUI (`nmtui`) |

### Window management

| Shortcut | Action |
| --- | --- |
| `Mod + H` | Horizontal split |
| `Mod + V` | Vertical split |
| `Mod + R` | Toggle split layout |
| `Mod + F` | Toggle fullscreen |
| `Mod + D` | Toggle floating |
| `Mod + Shift + D` | Toggle sticky |
| `Mod + C` | Center floating window |
| `Mod + T` | Tabbed layout |
| `Mod + S` | Stacking layout |
| `Mod + Q` | Close window |
| `Mod + Arrow keys` | Focus directionally |
| `Mod + Shift + Arrow keys` | Move window directionally |

### Workspaces

| Shortcut | Action |
| --- | --- |
| `Mod + 1-9` | Switch workspace |
| `Mod + 0` | Switch workspace 10 |
| `Mod + Shift + 1-9/0` | Move window to workspace |
| `Mod + Tab` | Next workspace |
| `Mod + Shift + Tab` | Previous workspace |
| `Mod + Ctrl + Left/Right` | Move workspace between outputs |

### Session actions

| Shortcut | Action |
| --- | --- |
| `Mod + Shift + S` | Suspend |
| `Ctrl + Alt + Delete` | Logout prompt |
| `Mod + Grave` | Show scratchpad |
| `Mod + Shift + Grave` | Move focused window to scratchpad |
| `Mod + Shift + R` | Reload Sway |

### Media and hardware keys

| Shortcut | Action |
| --- | --- |
| `Print` | Full screenshot |
| `Shift + Print` | Region screenshot |
| `Ctrl + Print` | Toggle full-screen recording |
| `Ctrl + Shift + Print` | Toggle area recording |
| `XF86AudioMute` | Toggle output mute |
| `XF86AudioLowerVolume` | Lower volume |
| `XF86AudioRaiseVolume` | Raise volume |
| `XF86AudioMicMute` | Toggle microphone mute |
| `XF86AudioPrev` | Previous track |
| `XF86AudioNext` | Next track |
| `XF86AudioPlay` | Play / pause |
| `XF86AudioStop` | Stop playback |
| `XF86MonBrightnessDown` | Lower brightness |
| `XF86MonBrightnessUp` | Raise brightness |
| `XF86Display` | Open display settings |
| `XF86Tools` | Open pavucontrol |

### Touchpad gestures

- 3-finger swipe left: previous track
- 3-finger swipe right: next track
- 3-finger swipe up: play/pause

### Window rules

Common applications are floated and centered automatically, including:

- KeePassXC
- Thunar
- wdisplays
- MPV
- imv
- Zathura
- Virt-manager
- pavucontrol
- Blueman manager
- nmtui
- Brave picture-in-picture windows

---

## 📊 Waybar

Waybar is configured as a compact top bar.

### Left section

- Sway workspaces
- Scratchpad indicator

### Center section

- Clock

### Right section

- System tray
- MPRIS media status
- Audio volume
- Backlight
- Battery
- Idle inhibitor
- Privacy indicators

### Workspace rewriting

Common app IDs are replaced with icons so workspace usage is easier to read.

Examples include:

- Foot
- Brave Origin
- Zed
- Thunar
- Zathura
- MPV
- LibreOffice apps
- KeePassXC
- DBeaver
- Blueman
- pavucontrol
- virt-manager
- wdisplays

### Battery behaviour

- warning at 30%
- critical at 15%
- charging and plugged states have dedicated formatting

### Audio and media

- WirePlumber volume module
- click to choose audio output
- middle click to mute/unmute
- right click to open pavucontrol

### Privacy module

Tracks:

- screen sharing
- microphone usage

---

## 🪟 Rofi

Rofi uses a custom monochrome theme:

- 38% width
- dark window and input bar
- subtle borders
- muted list items
- highlighted selection states
- fixed, stable list layout

It is used for app launching and the file browser mode.

---

## 🖥️ Foot terminal

Foot is configured with:

- JetBrains Mono Nerd Font
- 15px text size
- beam cursor
- blinking cursor
- 10,000 lines of scrollback
- dark colours
- centered padded layout

---

## 🔔 Dunst notifications

Dunst uses a small, top-right notification stack:

- 320px width
- 12px offset
- 5 notification limit
- dark background
- grey borders
- JetBrains Mono Nerd Font
- urgency-specific colours

### Interaction

- left click closes the current notification
- middle click activates the action
- right click closes all notifications

---

## 🔒 Swaylock

Swaylock is configured to match the rest of the theme:

- JetBrains Mono Nerd Font
- circular indicator
- monochrome ring and text colours
- wallpaper image background
- failed attempts are shown
- empty passwords are ignored

---

## 📷 Screenshots and recording

### Shortcuts

| Shortcut | Action |
| --- | --- |
| `Print` | Full screenshot |
| `Shift + Print` | Selected region screenshot |
| `Ctrl + Print` | Toggle full-screen recording |
| `Ctrl + Shift + Print` | Toggle region recording |

### Storage

```text
~/Pictures/Screenshots/
~/Videos/Recordings/
```

---

## 🔋 Power management

| Trigger | Action |
| --- | --- |
| 5 minutes idle | Lock screen |
| 10 minutes idle | Suspend |
| `Mod + Shift + S` | Manual suspend |
| Lid closed | Disable internal display |
| Lid opened | Re-enable internal display |

---

## 📁 Repository layout

```text
.
├── .config/
│   ├── sway/
│   ├── waybar/
│   ├── foot/
│   ├── rofi/
│   ├── dunst/
│   └── swaylock/
├── .bashrc
├── packages.txt
└── README.md
```

---

## ✨ Philosophy

Archway is meant to be:

- minimal
- fast
- keyboard-driven
- visually consistent
- easy to restore
- transparent in configuration
- practical for everyday laptop use

The goal is to keep Arch Linux flexible while giving it a clean, declarative-feeling desktop experience.

---

## 📄 License

MIT
