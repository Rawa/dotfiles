alias g='git'

alias ealiases='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias ei3='vim ~/.config/i3/config'
alias open='xdg-open'
alias o='xdg-open'
alias cl='clear'
alias saywhat='whatis "$(fc -nl -1 | awk "{print \$NF}")"'
alias info='info --vi-keys'
alias vim='nvim'
alias vi='nvim'
alias shutdown='systemctl poweroff'
alias evim='vim ~/.config/nvim/init.vim'

alias ag='rg'

# jrnl
alias jrnle='jrnl -n 1 --edit'

alias uf='find ~/Downloads -type f -name "*.zip"  -print0 | xargs -r -0 ls -1 -t | head -1 | xargs -d "\n" unzip -d ~/Downloads/'
