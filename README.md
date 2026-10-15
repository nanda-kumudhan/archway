# Sway dotfiles

My personal Sway and Wayland desktop configuration for development work as a computer science student. The setup is organized around desktop tools rather than a particular Linux distribution.

Uses Foot, Waybar, Rofi, Dunst, Kanshi, Swayidle, and Swaylock, with application preferences and a Bash/Starship setup. These dotfiles can be adapted to distributions that provide Sway and the required tools. The current session integration uses systemd, D-Bus, NetworkManager, and PipeWire/WirePlumber.

## Package reference

[packages/arch.txt](packages/arch.txt) preserves the package list from the previous Arch installation. It is a historical reference, with additions for the current desktop tools, rather than a portable installation manifest.

## Desktop shortcuts and tools

Sway starts `autotiling` automatically. Install it alongside `bluetui`, `playerctl`, and the other desktop packages in the package reference.

- Meta+B opens `bluetui` in a floating Foot window.
- Meta+N opens `nmtui` (provided by NetworkManager) in a floating Foot window.
- Meta+K launches native `keepassxc`.
- Meta+Z launches Zed using the Arch command `zeditor`.

## Screenshots

![Fastfetch](assets/archway-desktop.png)

![htop](assets/archway-desktop-221535.png)

![Rofi](assets/archway-desktop-221520.png)
