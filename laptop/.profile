#
://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=5&ved=2ahUKEwi4hJzft4rnAhVK06YKHYXWDhcQFjAEegQIBRAB&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F11530090%2Fadding-a-new-entry-to-the-path-variable-in-zsh&usg=AOvVaw1kfjHaE71jBHrB-qV7AECe
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.screenlayout"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"$HOME/.cabal/bin"
export PATH=$PATH:"$HOME/.cargo/bin"
export NODE_PATH=$NODE_PATH:"/usr/lib/node_modules/"
export TERMINAL="tilix"
export BROWSER="/usr/bin/firefox"
export HASTE_SERVER="http://paste.davidgoransson.com"
export JAVA_HOME="/usr/lib/jvm/default"
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk-bundle/"
export EDITOR="/usr/bin/nvim"
export VISUAL="$EDITOR"
#export LIBVA_DRIVER_NAME="vdpau"
#export VDPAU_DRIVER="nouveau"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
