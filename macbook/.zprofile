#
# ~/.zprofile
#

# Enviromental variables
export GOPATH=~/Code/go
export PATH=$PATH:"$GOPATH/bin"
export CARGO="$HOME/.cargo"
export PATH=$PATH:"$CARGO/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
#export NDK_HOME="$ANDROID_HOME/ndk/22.0.6917172/"
export NDK_HOME="/Users/rawa/Library/Android/sdk/ndk/22.0.6917172/"
#export PATH=$PATH:"$HOME/.cabal/bin"
#export PATH=$PATH:"$HOME/.yarn/bin"

# Local binaries
export PATH=$PATH:"$HOME/.bin"

export EDITOR="/usr/local/bin/nvim"
export VIM_HOME="/Users/rawa/.config/nvim"
export VIMRC="$VIM_HOME/init.vim"
export VISUAL="$EDITOR"

#source $HOME/.cargo/env

# Ruby
export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin"

export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow'
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow'

export SSLKEYLOGFILE=~/.ssl-key.log
