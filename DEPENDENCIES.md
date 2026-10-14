# Desktop dependencies

Install these tools through your distribution's package manager. Names below identify projects or commands, rather than a package list for a particular distribution.

| Purpose | Tools |
| --- | --- |
| Desktop and bar | Sway, XWayland, Waybar, Python 3 (Waybar CPU reader) |
| Terminal and launcher | Foot, Rofi with Wayland support and the filebrowser mode |
| Notifications, outputs, wallpaper | Dunst, Kanshi, Swaybg, wdisplays |
| Locking and idle | Swaylock, Swayidle |
| Screenshots and recording | Grim, Slurp, wf-recorder |
| Audio and media keys | PipeWire, WirePlumber (`wpctl`), `pactl`, Pavucontrol, Playerctl |
| Networking and Bluetooth | NetworkManager (`nmcli`, `nmtui`), BlueZ (`bluetoothctl`); Blueman is optional |
| Authentication and removable storage | Polkit with a graphical authentication agent, GNOME Keyring, D-Bus, Udiskie |
| Fonts, icons, GTK theme | JetBrainsMono Nerd Font, Papirus icons, Materia dark theme |
| Brightness and system monitor | Brightnessctl, htop |
| Default app shortcuts | Thunar, Firefox, Zed (`zeditor`), Flatpak KeePassXC (`org.keepassxc.KeePassXC`) |
| Optional shell configuration | Bash, Fastfetch, Starship; Nix profile path if you use Nix |
| Optional desktop integration | xdg-desktop-portal, xdg-desktop-portal-wlr, GTK portal, power-profiles-daemon |

Other application preferences and window rules are optional; they do not require installing every matched application. The Bluetooth module controls power with `bluetoothctl`; the configuration does not currently use bluetui.

The Polkit helper checks the agent on PATH and under `/usr/libexec`, `/usr/lib/polkit-gnome`, and `/usr/lib64/polkit-gnome`. Adapt the helper if your distribution uses another location or authentication agent.

Hardware modules require compatible devices. Suspend and session integration currently use systemd. Review monitor profiles, the laptop output name, keyboard layout, and wallpaper paths before using the configuration on another machine.
