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


# Make lvl3 act as escape ( use -option 'lv3:caps_switch' on xkb layout )

[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO


# Configure keyboard settings 
setxkbmap se_modified -option 'lv3:caps_switch'
xset r rate 230
xcape -e ISO_Level3_Shift=Escape

# Start nm-applet
# nm-applet &
tilix &

# Random wallpaper script
sh ~/.wallpaper.sh &

# Turn off S/PDIF 1 port
sleep 3 && amixer -c 0 sset IEC958,16 off &

mons -a &

xrandr --setprovideroutputsource modesettings NVIDIA-0
xrandr --auto

# Start awesome
exec i3
