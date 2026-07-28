# Sway Config

My personal Sway setup for Arch Linux.

A minimal Wayland workflow built around:

* Sway
* Waybar
* Foot
* Rofi
* Thunar
* Dunst
* Kanshi
* Autotiling
* Zed
* Grim + Slurp
* Swayidle + Swaylock

## Features

* Custom keybindings
* Vim-style window navigation
* Workspace management
* Scratchpad support
* Floating rules
* Laptop lid handling
* PipeWire media controls
* Automatic wallpaper
* GNOME keyring integration
* Network and Bluetooth tray support
* Custom gaps, borders, and colours

## Packages

### Core

`sway` `swaybg` `swayidle` `swaylock` `waybar` `foot` `kanshi` `wdisplays` `autotiling`

### Applications

`rofi` `thunar` `zathura` `imv` `keepassxc` `zed` `xarchiver`

### Media + Power

`wireplumber` `playerctl` `brightnessctl` `pavucontrol` `imv` `mpv`

### System

`blueman` `network-manager-applet` `udiskie` `gnome-disk-utility` `seahorse`

### Capture

`grim` `slurp` `wl-clipboard` `wf-recorder`

### Theming

`nwg-look` `papirus-icon-theme` `materia-gtk` `ttf-jetbrains-mono-nerd`

### Session

`gnome-keyring`

## Keybindings

### Applications

| Shortcut | Action |
| --- | --- |
| `Ctrl + Mod + T` | Terminal |
| `Mod + Space` | Launcher |
| `Mod + E` | Rofi file browser |
| `Mod + Shift + E` | Thunar |
| `Mod + Z` | Zed |
| `Mod + Shift + P` | Wdisplays |
| `Mod + Q` | Close window |
| `Mod + L` | Lock screen |

### Window Management

| Shortcut | Action |
| --- | --- |
| `Mod + H/V` | Split direction |
| `Mod + R` | Toggle layout |
| `Mod + F` | Fullscreen |
| `Mod + Shift + S` | Stay on all workspacese |
| `Mod + D` | Floating mode |
| `Mod + T` | Tabbed layout |
| `Mod + S` | Stacking layout |

### Navigation

| Shortcut | Action |
| --- | --- |
| `Mod + Arrows` | Focus windows |
| `Mod + Shift + Arrows` | Move windows |
| `Mod + 1-9` | Workspace switch |
| `Mod + Shift + 1-9` | Move to workspace |

## Screenshots & Recording

| Shortcut | Action |
| --- | --- |
| `Print` | Full screenshot |
| `Shift + Print` | Area screenshot |
| `Ctrl + Print` | Full-screen recording |
| `Ctrl + Shift + Print` | Area recording |

Screenshots:

```
~/Pictures/Screenshots/

```

Recordings:

```
~/Videos/Recordings/

```

## Power Management

* 5 minutes → lock
* 10 minutes → suspend

Manual suspend:

```
Mod + Shift + S

```

## Configuration

Main config:

```
~/.config/sway/config

```

Reload:

```
Mod + Shift + R

```

## Preview

*Add screenshots here.*

## License

MIT
