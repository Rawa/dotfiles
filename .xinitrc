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

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi


### synclient
synclient TapButton2=3
synclient ClickFinger3=2
synclient TapButton1=1
synclient HorizTwoFingerScroll=1
synclient HorizScrollDelta=-243
synclient PalmDetect=1

source /etc/X11/xinit/xinitrc.d/30-dbus

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO

### Autostart ###
spotify &
chromium &
sh ~/.bin/irc-start.sh &
urxvt &
urxvt &
urxvt &

setxkbmap se -option caps:escape &
xset r rate 230
nm-applet &
pa-applet &
sh ~/.wallpaper.sh &
perl ~/.xSwipe-master/xSwipe.pl &

exec awesome
