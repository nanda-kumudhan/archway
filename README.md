<div align="center">
🌊 Archway

A minimal, keyboard-driven Sway desktop

</div>
📸 Preview
<div align="center"> <img width="1920" height="1080" alt="2026-08-05_17-23-09" src="https://github.com/user-attachments/assets/62281113-1e35-43b8-aefd-4a359f43ed07" /> </div>
📋 Table of Contents
Overview
Core stack
Theme
Sway configuration
Keybindings
Waybar
Rofi
Foot terminal
Dunst notifications
Swaylock
Screenshots and recording
Power management
Repository layout
Philosophy
License
🌿 Overview

Archway is a minimal Wayland desktop built around Sway and tuned for a keyboard-first workflow.

It is intentionally small, dark, and consistent across the whole session:

black backgrounds
muted greys
JetBrains Mono Nerd Font
simple borders and gaps
workspace-focused navigation
a compact top bar with useful indicators
🧰 Core stack
Area	Tooling
Compositor	Sway
Bar	Waybar
Terminal	Foot
Launcher	Rofi
File manager	Thunar
Notifications	Dunst
Output management	Kanshi
Automatic tiling	Autotiling
Screen locker	Swaylock
Idle / power	Swayidle
Wallpaper	Swaybg
Screenshots	Grim + Slurp
Recording	wf-recorder
Audio	PipeWire + WirePlumber
Keyring	GNOME Keyring
Removable media	Udiskie
Bluetooth	BlueZ + Blueman
Network	NetworkManager + NetworkManager applet + nmtui
Secrets manager	KeePassXC
🎨 Theme

The whole desktop shares a monochrome look.

Main colours
Background: #000000
Primary text: #e6e6e6 / #eeeeee
Muted text: #9a9a9a / #666666
Borders: #2a2a2a / #4a4a4a
Urgent state: bright white or soft red depending on component
Font
JetBrains Mono Nerd Font

This same style is used in Sway, Waybar, Rofi, Dunst, Foot, and Swaylock.

🖥️ Sway configuration
Startup services

Sway starts the desktop session with these services:

dunst
kanshi
autotiling
keepassxc --minimized
gnome-keyring-daemon
udiskie --smart-tray --automount
nm-applet
blueman-applet
swayidle
swaybg
custom polkit agent
sway-session.target
Session integration

The config exports Wayland and Sway session variables into D-Bus and systemd user services so apps inherit the right environment.

Input settings
keyboard layout: gb
touchpad tap: disabled
natural scrolling: enabled
pointer scrolling: enabled
focus follows mouse: disabled
cursor theme: Adwaita, size 24
Window and workspace layout
10 workspaces (1 to 10)
Mod + 0 maps to workspace 10
2px borders
3px inner gaps
2px outer gaps
centered titlebars
smart borders enabled
scratchpad support
floating and centered rules for common utility apps
Output handling

The config uses kanshi for display profiles and wdisplays for manual display management.

⌨️ Keybindings

Mod means the Super / Windows key.

Applications
Shortcut	Action
Ctrl + Alt + T	Open terminal (foot)
Mod + Space	Application launcher
Mod + E	Rofi file browser
Mod + Shift + E	Open Thunar
Mod + W	Open Brave Origin
Mod + Z	Open Zed
Mod + L	Lock screen
Mod + Shift + P	Display settings (wdisplays)
Mod + K	KeePassXC
Mod + B	Blueman manager
Mod + N	Network TUI (nmtui)
Window management
Shortcut	Action
Mod + H	Horizontal split
Mod + V	Vertical split
Mod + R	Toggle split layout
Mod + F	Toggle fullscreen
Mod + D	Toggle floating
Mod + Shift + D	Toggle sticky
Mod + C	Center floating window
Mod + T	Tabbed layout
Mod + S	Stacking layout
Mod + Q	Close window
Mod + Arrow keys	Focus directionally
Mod + Shift + Arrow keys	Move window directionally
Workspaces
Shortcut	Action
Mod + 1-9	Switch workspace
Mod + 0	Switch workspace 10
Mod + Shift + 1-9/0	Move window to workspace
Mod + Tab	Next workspace
Mod + Shift + Tab	Previous workspace
Mod + Ctrl + Left/Right	Move workspace between outputs
Session actions
Shortcut	Action
Mod + Shift + S	Suspend
Ctrl + Alt + Delete	Logout prompt
Mod + Grave	Show scratchpad
Mod + Shift + Grave	Move focused window to scratchpad
Mod + Shift + R	Reload Sway
Media and hardware keys
Shortcut	Action
Print	Full screenshot
Shift + Print	Region screenshot
Ctrl + Print	Toggle full-screen recording
Ctrl + Shift + Print	Toggle area recording
XF86AudioMute	Toggle output mute
XF86AudioLowerVolume	Lower volume
XF86AudioRaiseVolume	Raise volume
XF86AudioMicMute	Toggle microphone mute
XF86AudioPrev	Previous track
XF86AudioNext	Next track
XF86AudioPlay	Play / pause
XF86AudioStop	Stop playback
XF86MonBrightnessDown	Lower brightness
XF86MonBrightnessUp	Raise brightness
XF86Display	Open display settings
XF86Tools	Open pavucontrol
Touchpad gestures
3-finger swipe left: previous track
3-finger swipe right: next track
3-finger swipe up: play/pause
Window rules

Common applications are floated and centered automatically, including:

KeePassXC
Thunar
wdisplays
MPV
imv
Zathura
Virt-manager
pavucontrol
Blueman manager
nmtui
Brave picture-in-picture windows
📊 Waybar

Waybar is configured as a compact top bar.

Left section
Sway workspaces
Scratchpad indicator
Center section
Clock
Right section
System tray
MPRIS media status
Audio volume
Backlight
Battery
Network status
Idle inhibitor
Privacy indicators
Workspace rewriting

Common app IDs are replaced with icons so workspace usage is easier to read.

Examples include:

Foot
Brave Origin
Zed
Thunar
Zathura
MPV
LibreOffice apps
KeePassXC
DBeaver
Blueman
pavucontrol
virt-manager
wdisplays
Battery behaviour
warning at 30%
critical at 15%
charging and plugged states have dedicated formatting
Audio and media
WirePlumber volume module
click to choose audio output
middle click to mute/unmute
right click to open pavucontrol
Network
NetworkManager status shown in the system tray
nm-applet provides graphical Wi-Fi and network controls
nmtui remains available for keyboard-driven network management
Bluetooth
blueman-applet provides Bluetooth controls from the system tray
Blueman manager is available for pairing and device management
Privacy module

Tracks:

screen sharing
microphone usage
🪟 Rofi

Rofi uses a custom monochrome theme:

38% width
dark window and input bar
subtle borders
muted list items
highlighted selection states
fixed, stable list layout

It is used for app launching and the file browser mode.

🖥️ Foot terminal

Foot is configured with:

JetBrains Mono Nerd Font
15px text size
beam cursor
blinking cursor
10,000 lines of scrollback
dark colours
centered padded layout
🔔 Dunst notifications

Dunst uses a small, top-right notification stack:

320px width
12px offset
5 notification limit
dark background
grey borders
JetBrains Mono Nerd Font
urgency-specific colours
Interaction
left click closes the current notification
middle click activates the action
right click closes all notifications
🔒 Swaylock

Swaylock is configured to match the rest of the theme:

JetBrains Mono Nerd Font
circular indicator
monochrome ring and text colours
wallpaper image background
failed attempts are shown
empty passwords are ignored
📷 Screenshots and recording
Shortcuts
Shortcut	Action
Print	Full screenshot
Shift + Print	Selected region screenshot
Ctrl + Print	Toggle full-screen recording
Ctrl + Shift + Print	Toggle region recording
Storage
~/Pictures/Screenshots/
~/Videos/Recordings/

🔋 Power management
Trigger	Action
5 minutes idle	Lock screen
10 minutes idle	Suspend
Mod + Shift + S	Manual suspend
Lid closed	Disable internal display
Lid opened	Re-enable internal display
📁 Repository layout
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

✨ Philosophy

Archway is meant to be:

minimal
fast
keyboard-driven
visually consistent
easy to restore
transparent in configuration
practical for everyday laptop use

The goal is to provide a clean, flexible Sway desktop with a declarative-feeling configuration while keeping the underlying system unobtrusive.

📄 License

MIT
