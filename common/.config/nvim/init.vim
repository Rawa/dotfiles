set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=./nvim runtimepath+=~/.config/nvim
let &packpath = &runtimepath

"augroup reload_vimrc
"    au!
"    au BufWritePost *.vim,*.lua so $VIMRC
"augroup END

let mapleader = ","

set expandtab	    " tab by spaces
set autoindent    " always set auto indenting on
set nu

set ts=2 		      " set tabs to have 2 spaces
set shiftwidth=2  " when using the >> or << commands, shift lines by 4 spaces

set inccommand=split " Live Substitution

set completeopt=menu,menuone,noselect

lua require("init")
