#!/bin/sh
# Distribution packages install the GNOME Polkit agent in different locations.
if command -v polkit-gnome-authentication-agent-1 >/dev/null 2>&1; then
    exec polkit-gnome-authentication-agent-1
fi
for agent in \
    /usr/libexec/polkit-gnome-authentication-agent-1 \
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 \
    /usr/lib64/polkit-gnome/polkit-gnome-authentication-agent-1
do
    if [ -x "$agent" ]; then
        exec "$agent"
    fi
done
printf '%s\n' 'No GNOME Polkit agent found; configure an installed authentication agent.' >&2
exit 1
