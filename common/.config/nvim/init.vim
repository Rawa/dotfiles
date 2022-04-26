set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=./nvim runtimepath+=~/dotfiles/common/.config/nvim

augroup reload_vimrc
    au!
    au BufWritePost *.vim *.lua so $VIMRC
augroup END

let mapleader = ","

call plug#begin('~/.local/share/nvim/plugged')

" Commenter
Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>
" Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1

" Git Flog
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
nnoremap <silent> <leader>gl :Flog<CR>

Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

" Destroy trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Colorscheme
Plug 'morhetz/gruvbox'

Plug 'godlygeek/tabular'

" LANG
" MD
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_level = 3
let g:vim_markdown_folding_disabled = 1

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'

" Kotlin
"Plug 'udalov/kotlin-vim', { 'for' : 'kotlin'}

" nvim-cmp autocompletion
Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
"Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'octaltree/cmp-look'
Plug 'hrsh7th/cmp-nvim-lua'

" dictionary
Plug 'skywind3000/vim-quickui'
Plug 'xfyuan/vim-mac-dictionary'
  nnoremap <silent><leader>ww :MacDictPopup<CR>

call plug#end()

colorscheme gruvbox

"set clipboard=unnamedplus


set expandtab	    " tab by spaces
set autoindent    " always set auto indenting on
set nu

set ts=2 		      " set tabs to have 2 spaces
set shiftwidth=2  " when using the >> or << commands, shift lines by 4 spaces

set inccommand=split " Live Substitution

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope commands<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>

"nnoremap <leader>gc <cmd>Telescope commands<cr>
"nnoremap <leader>gd <cmd>Telescope keymaps<cr>

set completeopt=menu,menuone,noselect

lua require('plugins.cmp')
