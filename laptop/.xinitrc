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

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.bin"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export NODE_PATH=$NODE_PATH:"/usr/lib/node_modules/"
export EDITOR="vim"
export TERMINAL="roxterm"
export BROWSER="google-chrome-stable"
export HASTE_SERVER="http://paste.davidgoransson.com"
export ANDROID_HOME="$HOME/Android/Sdk/"
export EDITOR="vim"
export VISUAL="$EDITOR"
export LIBVA_DRIVER_NAME="vdpau"
export VDPAU_DRIVER="nvidia"

# Configure keyboard settings 
setxkbmap se_modified -option 'lv3:caps_switch'
xset r rate 230
xcape -e ISO_Level3_Shift=Escape

# Start nm-applet
# nm-applet &
roxterm --fork
roxterm -e zsh -c "task next && zsh" &
google-chrome-stable --force-device-scale-factor=1.5 &
rambox &

# Random wallpaper script
sh ~/.wallpaper.sh &

# Turn off S/PDIF 1 port
sleep 3 && amixer -c 0 sset IEC958,16 off &

mons -a &

# Start awesome
exec i3
