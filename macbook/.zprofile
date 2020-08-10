#
# ~/.zprofile
#

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$HOME/.screenlayout"
export PATH=$PATH:"$GOPATH/bin"
#export PATH=$PATH:"$HOME/.cabal/bin"
#export PATH=$PATH:"$HOME/.yarn/bin"
export PATH=$PATH:"$HOME/.bin"
export EDITOR="/usr/local/bin/nvim"
export VISUAL="$EDITOR"
#source $HOME/.cargo/env

export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow'
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow'
