# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.bin"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export PATH=$PATH:"$HOME/.cargo/bin"
export NODE_PATH=$NODE_PATH:"/usr/lib/node_modules/"
export EDITOR="vim"
export TERMINAL="tilix"
export BROWSER="/usr/bin/firefox"
export HASTE_SERVER="http://paste.davidgoransson.com"
export JAVA_HOME="/usr/lib/jvm/default"
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk-bundle/"
export EDITOR="/usr/bin/nvim"
export VISUAL="$EDITOR"
export LIBVA_DRIVER_NAME="vdpau"
export VDPAU_DRIVER="nouveau"

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
