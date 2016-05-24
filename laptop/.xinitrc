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
xcape -e 'ISO_Level3_Shift=Escape'

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.bin"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export EDITOR="vim"
export TERMINAL="urxvtc"
export BROWSER="chromium"
export JAVA_HOME="/usr/lib/jvm/default-runtime/jre"
export HASTE_SERVER="http://paste.davidgoransson.com"
export ANDROID_HOME="$HOME/Android/Sdk/"

### Autostart ###
spotify --force-device-scale-factor=1.2 &
chromium &
sh ~/.bin/irkk &
urxvtd -q -f -o
urxvtc -name term &
urxvtc -name term -e zsh -c "task next && zsh" &

# Set keyboard repeat rate to 230
xset r rate 230

# Start nm-applet
nm-applet &

# Start pa applet
pa-applet --disable-key-grabbing &

# Random wallpaper script
sh ~/.wallpaper.sh &

# Turn off S/PDIF 1 port
sleep 3 && amixer -c 0 sset IEC958,16 off &

# Start awesome
exec i3
