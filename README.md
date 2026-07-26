# Sway Config

My personal Sway setup for Arch Linux.

Built around a minimal Wayland workflow with:

- Sway
- Waybar
- Foot terminal
- Rofi launcher
- Thunar file manager
- Dunst notifications
- Kanshi display profiles
- Autotiling
- Zed editor
- Grim + Slurp screenshots
- Swayidle + Swaylock power management

## Features

- Custom keybindings
- Vim-style window navigation
- Workspace management
- Scratchpad support
- Floating rules for utilities
- Laptop lid handling
- PipeWire media controls
- Automatic wallpaper
- GNOME keyring integration
- Network and Bluetooth tray apps
- Custom borders, gaps, and colours

## Installation

Install dependencies:

```bash
sudo pacman -S sway waybar foot rofi thunar dunst kanshi \
grim slurp swayidle swaylock playerctl brightnessctl \
pavucontrol blueman network-manager-applet udiskie \
gnome-keyring
```

Clone:

```bash
git clone https://github.com/<username>/sway-config.git
```

Copy the configuration:

```bash
mkdir -p ~/.config/sway
cp config ~/.config/sway/config
```

Reload Sway:

```
Mod + Shift + R
```

## Keybindings

### Applications

| Shortcut | Action |
| --- | --- |
| `Ctrl + Mod + T` | Terminal |
| `Mod + Space` | App launcher |
| `Mod + E` | Rofi file browser |
| `Mod + Shift + E` | Thunar |
| `Mod + Z` | Zed |
| `Mod + Q` | Close window |
| `Mod + L` | Lock screen |

### Window Management

| Shortcut | Action |
| --- | --- |
| `Mod + H` | Horizontal split |
| `Mod + V` | Vertical split |
| `Mod + R` | Toggle layout |
| `Mod + F` | Fullscreen |
| `Mod + D` | Toggle floating |
| `Mod + T` | Tabbed layout |
| `Mod + S` | Stacking layout |

### Navigation

| Shortcut | Action |
| --- | --- |
| `Mod + Arrow Keys` | Focus windows |
| `Mod + Shift + Arrow Keys` | Move windows |
| `Mod + 1-9` | Switch workspace |
| `Mod + Shift + 1-9` | Move window to workspace |

## Screenshots

Full screenshot:

```
Print
```

Area screenshot:

```
Shift + Print
```

Saved to:

```
~/Pictures/Screenshots/
```

## Power Management

Idle behaviour:

- 5 minutes → lock screen
- 10 minutes → suspend

Manual suspend:

```
Mod + Shift + S
```

## Customisation

Main config:

```
~/.config/sway/config
```

Reload after changes:

```
Mod + Shift + R
```

## Preview

_Add screenshots here._

## License

MIT
