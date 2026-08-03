# 🌊 Sway Arch Linux Desktop

A minimal, keyboard-driven Wayland desktop environment built on Arch Linux.

Designed for speed, simplicity, and reproducibility with a focus on:

* 🪟 Sway tiling window management
* ⌨️ Keyboard-first workflow
* 🔒 Secure Boot and system hardening
* 💾 Btrfs snapshots and recovery
* 🎨 Clean GTK theming
* 💻 Laptop optimisation
* 📦 Reproducible package setup

---

# 📸 Preview

A lightweight Wayland desktop featuring:

* Sway compositor
* Waybar status bar
* Foot terminal
* Rofi launcher
* Thunar file manager
* Custom keyboard shortcuts
* Automatic tiling
* Workspace management
* Media controls
* Power management

---

# 🧩 Desktop Stack

| Component          | Software          |
| ------------------ | ----------------- |
| Window manager     | Sway              |
| Automatic tiling   | Autotiling        |
| Status bar         | Waybar            |
| Terminal           | Foot              |
| Launcher           | Rofi              |
| File manager       | Thunar            |
| Notifications      | Dunst             |
| Display management | Kanshi, Wdisplays |
| Editor             | Zed               |
| Browser            | Brave Origin      |
| Image viewer       | imv               |
| Media player       | MPV               |
| PDF viewer         | Zathura           |
| Wallpaper          | Swaybg            |
| Screenshot tools   | Grim + Slurp      |
| Recording          | wf-recorder       |
| Lock screen        | Swaylock          |
| Idle management    | Swayidle          |

---

# 📦 Package Categories

## 🪟 Wayland & Desktop

* sway
* swaybg
* swayidle
* swaylock
* waybar
* autotiling
* kanshi
* wdisplays
* xdg-desktop-portal-wlr
* xorg-xwayland

---

## 🖥️ Applications

### Browsing

* Brave Origin

### Terminal & Editors

* Foot
* Zed
* Nano
* Starship

### File Management

* Thunar
* Engrampa
* GNOME Disk Utility

### Media

* MPV
* imv
* yt-dlp

### Documents

* LibreOffice
* Texmaker
* Zathura
* Zathura PDF Poppler

### Database & Development

* DBeaver
* Git
* GitHub CLI
* Nix

---

# 🎨 Appearance & Themes

GTK and desktop styling:

* Adwaita GTK theme
* Libadwaita
* GNOME themes extra
* Materia GTK theme
* Orchis GTK theme
* Papirus icons
* NWG Look

Fonts:

* Noto Fonts
* DejaVu Fonts
* JetBrains Mono Nerd Font

---

# 🔊 Audio & Media

Audio stack:

* PipeWire
* WirePlumber
* PipeWire PulseAudio compatibility
* PipeWire ALSA compatibility
* PipeWire JACK compatibility
* PulseAudio libraries

Utilities:

* Pavucontrol
* Brightnessctl
* Player controls through Waybar integration

---

# 📷 Screenshots & Recording

Tools:

* Grim
* Slurp
* WF Recorder

Keyboard shortcuts:

| Shortcut             | Action                       |
| -------------------- | ---------------------------- |
| Print                | Full screenshot              |
| Shift + Print        | Area screenshot              |
| Ctrl + Print         | Toggle full-screen recording |
| Ctrl + Shift + Print | Toggle area recording        |

Storage:

```
~/Pictures/Screenshots/
~/Videos/Recordings/
```

---

# ⌨️ Keybindings

`Mod` refers to the Super / Windows key.

## Applications

| Shortcut        | Action               |
| --------------- | -------------------- |
| Ctrl + Mod + T  | Open terminal        |
| Mod + Space     | Application launcher |
| Mod + W         | Brave Origin         |
| Mod + Shift + E | File manager         |
| Mod + Z         | Zed editor           |
| Mod + L         | Lock screen          |
| Mod + Shift + P | Display settings     |

---

## Window Management

| Shortcut        | Action                 |
| --------------- | ---------------------- |
| Mod + H         | Horizontal split       |
| Mod + V         | Vertical split         |
| Mod + R         | Toggle split layout    |
| Mod + F         | Fullscreen             |
| Mod + D         | Floating mode          |
| Mod + Shift + D | Sticky window          |
| Mod + C         | Centre floating window |
| Mod + T         | Tabbed layout          |
| Mod + S         | Stacking layout        |
| Mod + Q         | Close window           |

---

## Workspace Management

| Shortcut          | Action             |
| ----------------- | ------------------ |
| Mod + 1-9         | Switch workspace   |
| Mod + Shift + 1-9 | Move window        |
| Mod + Tab         | Next workspace     |
| Mod + Shift + Tab | Previous workspace |

---

# 🔋 Power Management

Laptop-focused configuration:

Features:

* Automatic brightness control
* Battery optimisation
* Lid handling
* Suspend support
* Idle locking

Tools:

* TLP
* ZRAM Generator
* Brightnessctl
* Swayidle

Behaviour:

| Trigger         | Action                   |
| --------------- | ------------------------ |
| 5 minutes idle  | Lock screen              |
| 10 minutes idle | Suspend                  |
| Lid closed      | Disable internal display |
| Lid opened      | Restore display          |

Manual suspend:

```
Mod + Shift + S
```

---

# 🔐 Security

## Secure Boot

Managed with:

* sbctl
* efibootmgr

Features:

* Enrolled Secure Boot keys
* Signed boot chain

---

## System Hardening

Included:

* AppArmor
* UFW firewall
* Smartmontools monitoring
* Firmware updates with fwupd

---

## Authentication

Included:

* GNOME Keyring
* Seahorse
* Fprintd fingerprint support
* KeePassXC password management

---

# 💾 Storage & Recovery

Filesystem:

* Btrfs support

Snapshot tools:

* Snapper
* snap-pac

Features:

* Automatic package snapshots
* System rollback support

Additional filesystem support:

* exFAT
* NTFS

---

# 📶 Networking

Network stack:

* NetworkManager
* NetworkManager applet

VPN support:

* OpenVPN
* OpenConnect
* VPNC

Wireless:

* WPA Supplicant
* Bluetooth
* Blueman

---

# 🖥️ Virtualisation & Containers

Containers:

* Podman
* Podman Desktop
* Distrobox

Virtual machines:

* QEMU
* Virt Manager

---

# 📱 Hardware Support

Included:

* Intel microcode
* Intel media drivers
* Vulkan Intel drivers
* Firmware packages
* USB Apple device support

Packages:

* usbmuxd
* linux-firmware
* sof-firmware

---

# 🔁 Reinstallation Guide

This system is designed to be reproducible.

## Install packages

Export:

```bash
pacman -Qqe > packages.txt
```

Restore:

```bash
sudo pacman -S --needed - < packages.txt
```

---

## Restore AUR packages

Export:

```bash
pacman -Qmq > aur-packages.txt
```

Restore:

```bash
yay -S --needed - < aur-packages.txt
```

---

## Restore configuration

Backup:

```
~/.config/
~/.local/
~/.bashrc
/etc/
```

Important directories:

```
~/.config/sway/
~/.config/waybar/
~/.config/foot/
~/.config/rofi/
~/.config/dunst/
```

---

# 📁 Repository Structure

```
.
├── .config/
│   ├── sway/
│   ├── waybar/
│   ├── foot/
│   ├── rofi/
│   └── dunst/
│
├── .bashrc
├── packages.txt
└── README.md
```

---

# ✨ Philosophy

This setup aims to provide:

* Minimal resource usage
* Fast startup
* Keyboard-driven workflow
* Easy recovery
* Transparent configuration
* A reproducible Arch Linux desktop

It follows the idea of a declarative system while keeping the flexibility and compatibility of Arch Linux.
