# Sway dotfiles

My personal Sway and Wayland desktop configuration for development work as a computer science student. The setup is organized around desktop tools rather than a particular Linux distribution.

Uses Foot, Waybar, Rofi, Dunst, Kanshi, Swayidle, and Swaylock, with application preferences and a Bash/Starship setup. These dotfiles can be adapted to distributions that provide Sway and the required tools. The current session integration uses systemd, D-Bus, NetworkManager, and PipeWire/WirePlumber.

## Setup

Install the tools in [DEPENDENCIES.md](DEPENDENCIES.md) using your distribution's package manager. Package names differ between distributions. Flatpak application IDs are listed in [flatpak_list.txt](flatpak_list.txt); install the apps you use from a remote that provides them. Super+K launches the KeePassXC Flatpak.

Back up your existing configuration, then copy the configuration directories you want from `.config/` into `~/.config/`. Keep the Waybar `scripts/` directory with its configuration. Merge `.bashrc` into your existing shell configuration if you want Fastfetch and Starship. App preferences and browser settings are optional.

Before starting or reloading Sway, review:

- `.config/sway/config`: application commands, UK keyboard layout, touchpad settings, and the `eDP-1` lid-switch output.
- `.config/kanshi/config`: monitor names, modes, and positions. Use `swaymsg -t get_outputs` to find your outputs.
- `.config/sway/config` and `.config/swaylock/config`: supply `~/Pictures/wallpaper` or change the wallpaper paths.
- `.config/swayidle/config`: locking, display power, and suspend timeouts.
- `.config/waybar/config.jsonc`: hardware modules and optional services such as Bluetooth and power-profiles-daemon.

The Polkit launcher checks common installation locations. On systems without systemd, adapt the session environment setup, suspend commands, idle configuration, and Waybar systemd module. The configuration requests `sway-session.target`; check that your distribution provides it or adapt that startup line.

Validate with `sway --validate --config ~/.config/sway/config`, then reload with Super+Shift+R from a running Sway session.

## Package references

[packages/arch.txt](packages/arch.txt) preserves the native package list from the previous Arch installation, including development tools and system packages. It is a historical reference, not a portable installation manifest. [DEPENDENCIES.md](DEPENDENCIES.md) describes the tools used by the desktop configuration.

## Screenshots

![Fastfetch](assets/archway-desktop.png)

![htop](assets/archway-desktop-221535.png)

![Rofi](assets/archway-desktop-221520.png)
