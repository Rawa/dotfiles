#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
done
  unset f
fi

# Make Capslock act as escape/control
setxkbmap se -option 'lv3:caps_switch'
xcape -e 'Caps_Lock=Escape'

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

source /etc/X11/xinit/xinitrc.d/30-dbus

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO

### Autostart ###
chromium &
urxvt &
urxvt &

# Set keyboard repeat rate to 230
xset r rate 230

# Start nm-applet
nm-applet &

# Start pa applet
pa-applet &

# Start awesome
exec startxfce4
