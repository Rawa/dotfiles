alias g='git'

alias ealiases='$EDITOR ~/.oh-my-zsh/custom/aliases.zsh'
alias ei3='$EDITOR ~/.config/i3/config'
alias esway='$EDITOR ~/.config/sway/config'
alias ezsh='$EDITOR ~/.zshrc'
alias evim='$EDITOR ~/.config/nvim/init.vim'
alias etmux='$EDITOR ~/.tmux.conf'

alias diff='diff --color=always'
alias cl='clear'
alias saywhat='whatis "$(fc -nl -1 | awk "{print \$NF}")"'
alias info='info --vi-keys'
alias vim='$EDITOR'
alias vi='$EDITOR'
alias v='$EDITOR'
alias shutdown='systemctl poweroff'

alias ag='rg'

# jrnl
alias jrnle='jrnl -n 1 --edit'

alias uf='find ~/Downloads -type f -name "*.zip"  -print0 | xargs -r -0 ls -1 -t | head -1 | xargs -d "\n" unzip -d ~/Downloads/'
