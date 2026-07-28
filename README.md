Here is the complete cleaned-up file as a single README-style document:

# Sway Config

My personal Sway setup for Arch Linux.

A minimal Wayland workflow built around:

- Sway
- Waybar
- Foot
- Rofi
- Thunar
- Dunst
- Kanshi
- Autotiling
- Zed
- Grim + Slurp
- Swayidle + Swaylock

---

# Features

- Custom keybindings
- Vim-style window navigation
- Workspace management
- Scratchpad support
- Floating window rules
- Laptop lid handling
- PipeWire media controls
- Automatic wallpaper handling
- GNOME keyring integration
- Network and Bluetooth tray support
- Custom gaps, borders, and colours

---

# Packages

## Core

Core Wayland compositor and desktop components:



sway
swaybg
swayidle
swaylock
waybar
foot
kanshi
wdisplays
autotiling


---

## Applications

Daily-use applications:



rofi
thunar
zathura
imv
keepassxc
zed
xarchiver


---

## Media & Power

Audio, brightness, playback, and notifications:



wireplumber
playerctl
brightnessctl
pavucontrol
imv
mpv
dunst


---

## System Utilities

System management and hardware utilities:



blueman
network-manager-applet
udiskie
gnome-disk-utility
seahorse


---

## Capture

Screenshot and screen recording tools:



grim
slurp
wl-clipboard
wf-recorder


---

## Theming

Appearance and font packages:



nwg-look
papirus-icon-theme
materia-gtk
ttf-jetbrains-mono-nerd


---

## Session

Authentication and desktop integration:



gnome-keyring


---

# Keybindings

`Mod` refers to the Sway modifier key (usually the Super/Windows key).

---

# Applications

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

---

# Window Management

| Shortcut | Action |
| --- | --- |
| `Mod + H/V` | Set split direction |
| `Mod + R` | Toggle layout |
| `Mod + F` | Toggle fullscreen |
| `Mod + Shift + S` | Keep window visible on all workspaces |
| `Mod + D` | Toggle floating mode |
| `Mod + T` | Tabbed layout |
| `Mod + S` | Stacking layout |

---

# Navigation

| Shortcut | Action |
| --- | --- |
| `Mod + Arrow Keys` | Focus windows |
| `Mod + Shift + Arrow Keys` | Move windows |
| `Mod + 1-9` | Switch workspace |
| `Mod + Shift + 1-9` | Move window to workspace |

---

# Screenshots & Recording

## Keybindings

| Shortcut | Action |
| --- | --- |
| `Print` | Full screenshot |
| `Shift + Print` | Area screenshot |
| `Ctrl + Print` | Full-screen recording |
| `Ctrl + Shift + Print` | Area recording |

---

## Storage Locations

Screenshots:



~/Pictures/Screenshots/


Recordings:



~/Videos/Recordings/


---

# Power Management

Automatic power behaviour:

- **5 minutes** → Lock screen
- **10 minutes** → Suspend system

Manual suspend:



Mod + Shift + S


---

# Configuration

Main Sway configuration:



~/.config/sway/config


Reload configuration:



Mod + Shift + R


---

# Configuration Structure

Suggested config layout:



~/.config/sway/
├── config
├── scripts/
├── themes/
└── wallpapers/


---

# Included Components

## Window Manager

- Sway
- Autotiling
- Custom layouts
- Vim-style navigation
- Workspace management

## Status Bar

- Waybar
- Network indicators
- Bluetooth tray support
- Media controls

## Terminal

- Foot terminal
- JetBrains Mono Nerd Font

## Launcher

- Rofi application launcher
- Rofi file browser

## File Management

- Thunar
- UDisks integration

## Notifications

- Dunst notification daemon

## Screenshots

- Grim
- Slurp
- wl-clipboard

## Locking & Idle

- Swayidle
- Swaylock

## Display Management

- Kanshi
- Wdisplays

---

# Wallpaper

Automatic wallpaper handling is included.

Wallpaper location:



~/Pictures/Wallpapers/


---

# Laptop Support

Includes:

- Laptop lid handling
- Automatic display management
- Power saving rules

---

# Media Controls

PipeWire-based media setup:

- WirePlumber
- Playerctl
- Brightnessctl
- Pavucontrol

---

# Security & Authentication

GNOME keyring integration provides:

- Secret storage
- Application authentication
- SSH key support

---

# Preview

Add screenshots here.

Example:




---

# License

MIT
