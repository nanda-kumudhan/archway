
# Archway Dotfiles

Personal dotfiles and desktop configuration for a minimal, keyboard-first Linux setup built around Sway/Wayland on Arch.

## What is in this repo

This repository contains the config files I use for my daily machine, including:

- shell setup in `.bashrc`
- Sway configuration under `.config/sway/`
- Waybar configuration and styling under `.config/waybar/`
- app settings for tools such as `foot`, `rofi`, `dunst`, `mpv`, `kanshi`, and `swaylock`
- a full package list in `pkglist.txt`
- browser and helper config extras such as `keepassxc-browser_settings.json` and `my-ublock-static-filters.txt`

## Repo layout

```text
.
├── .bashrc
├── .config/
│   ├── dunst/
│   ├── fastfetch/
│   ├── foot/
│   ├── kanshi/
│   ├── keepassxc/
│   ├── mpv/
│   ├── nix/
│   ├── rofi/
│   ├── sway/
│   │   ├── config
│   │   ├── outputs
│   │   └── workspaces
│   ├── swaylock/
│   ├── waybar/
│   │   ├── config.jsonc
│   │   └── style.css
│   ├── xdg-desktop-portal-wlr/
│   └── zed/
├── keepassxc-browser_settings.json
├── my-ublock-static-filters.txt
├── pkglist.txt
├── README.md
└── .git/
```

## Core desktop stack

- OS: Arch Linux
- Compositor: Sway
- Bar: Waybar
- Terminal: Foot
- Launcher: Rofi
- Notifications: Dunst
- Screen locker: Swaylock
- Wallpaper: Swaybg
- Display management: Kanshi
- Audio: PipeWire + WirePlumber
- Browser: Firefox
- File manager: Thunar
- Image viewer: imv
- Media player: mpv
- PDF viewer: Zathura
- Clipboard / utilities: various Wayland-friendly tools

## Installation

This repo is meant to be used as a dotfiles repo, not as a packaged app.

1. Clone the repo somewhere convenient:

```bash
git clone https://github.com/nanda-kumudhan/dotfiles.git ~/.dotfiles
```

2. Symlink the files or configuration directories you want into your home directory:

```bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.config/sway ~/.config/sway
ln -s ~/.dotfiles/.config/waybar ~/.config/waybar
```

3. Install the system packages listed in `pkglist.txt`:

```bash
sudo pacman -S --needed - < pkglist.txt
```

If you use an AUR helper like `yay`, you can also install additional packages from the same list as needed for your environment.

## Notes

- This is a personal setup and may not fit every machine out of the box.
- Some files may contain machine-specific paths or preferences.
- Review config files before applying them to a new system.

## License

This repository is for personal configuration and is shared as-is for reference and reuse.
