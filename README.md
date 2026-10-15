# Arch Linux Sway dotfiles

My personal Arch Linux Sway and Wayland desktop configuration for development work as a computer science student.

Uses Foot, Waybar, Rofi, Dunst, Kanshi, Swayidle, and Swaylock, with application preferences and a Bash/Starship setup. The setup uses systemd, D-Bus, NetworkManager, and PipeWire/WirePlumber, with native Arch application commands.

## Package lists

[packages/arch.txt](packages/arch.txt) lists native Arch packages, including desktop applications, development tools, and system packages. It includes both official repository and AUR packages.

[flatpak_list.txt](flatpak_list.txt) lists the remaining Flatpak applications. KeePassXC uses the native Arch package.

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
