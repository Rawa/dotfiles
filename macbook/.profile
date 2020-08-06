#
# ~/.profile
#

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.screenlayout"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export PATH=$PATH:"$HOME/.yarn/bin"
export PATH=$PATH:"$HOME/.bin"
export NODE_PATH=$NODE_PATH:"/usr/lib/node_modules/"
export TERMINAL="tilix"
export BROWSER="/usr/bin/firefox"
export HASTE_SERVER="http://paste.davidgoransson.com"
export JAVA_HOME="/usr/lib/jvm/default"
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk/21.0.6113669/"
export EDITOR="/usr/bin/nvim"
export VISUAL="$EDITOR"
source $HOME/.cargo/env

export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow'
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
