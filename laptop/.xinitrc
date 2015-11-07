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

[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources

### synclient
#synclient TapButton2=3
#synclient ClickFinger3=2
#synclient TapButton1=1
#synclient HorizTwoFingerScroll=1
#synclient HorizScrollDelta=-243
#synclient PalmDetect=1

#source /etc/X11/xinit/xinitrc.d/30-dbus

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export PATH=$PATH:"$HOME/.bin"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export EDITOR="vim"
export BROWSER="chromium"
export JAVA_HOME="/usr/lib/jvm/default-runtime/jre"
export HASTE_SERVER="http://paste.davidgoransson.com"

### Autostart ###
spotify &
chromium &
sh ~/.bin/irkk &
urxvt &
urxvt &
urxvt -e zsh -c "task next && zsh" &

# Make Capslock act as excape
setxkbmap se -option caps:escape &

# Set keyboard repeat rate to 230
xset r rate 230

# Start nm-applet
nm-applet &

# Start pa applet
pa-applet &

# Random wallpaper script
sh ~/.wallpaper.sh &

# Turn off S/PDIF 1 port
sleep 1 && amixer -c 0 sset IEC958,16 off &
autolock -time 30 -locker "systemctl suspend" -notify 50 -notifier "notify-send 'Inactivity, going to sleep' 'Computer will suspend in 30 seconds' -u critical -t 5000" -detectsleep
#xautolock -corners +000 -locker "notify-send LEFT UP" -cornerdelay 1 &
#xautolock -restart &
#xautolock -corners 0+00 -locker "notify-send RIGHT UP" -cornerdelay 1 &

# Start xSwipe
perl ~/.xSwipe-master/xSwipe.pl &

# Merge Xresources
xrdb -merge ~/.Xresources

# Start awesome
exec awesome
