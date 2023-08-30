#
# ~/.zprofile
#

# Enviromental variables
export PATH=$PATH:"$GOPATH/bin"
export CARGO="$HOME/.cargo"
export PATH=$PATH:"$CARGO/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="/Users/rawa/Library/Android/sdk/ndk/22.0.6917172/"

# Local binaries
export PATH=$PATH:"$HOME/.bin"

export EDITOR="/opt/homebrew/bin/nvim"
export VIM_HOME="/Users/rawa/.config/nvim"
export VIMRC="$VIM_HOME/init.vim"
export VISUAL="$EDITOR"

#source $HOME/.cargo/env

# Ruby
export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin"

export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow'
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow'

export SSLKEYLOGFILE=~/.ssl-key.log

eval "$(/opt/homebrew/bin/brew shellenv)"
