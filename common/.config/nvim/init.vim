call plug#begin('~/.local/share/plugged')
let mapleader = ","

" Commenter
Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  nmap <leader>n :NERDTreeToggle<CR>
  nmap <leader>m :NERDTreeFind<CR>
  " Nerdtree config for wildignore
  let NERDTreeRespectWildIgnore=1

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
  let g:fzf_buffers_jump = 1
  nnoremap <silent> <leader>f :Files <C-r>=expand("%:h")<CR>/<CR>
  nnoremap <C-p> :Files<CR>
  nnoremap <C-b> :Buffers<CR>
  " Git commit
  let g:fzf_commits_log_options = '--graph --color=always
    \ --format="%C(yellow)%h%C(red)%d%C(reset)
    \ - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'

  nnoremap <silent> <leader>c  :Commits<CR>
  nnoremap <silent> <leader>bc :BCommits<CR>


" Git
Plug 'tpope/vim-fugitive'
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>ge :Gedit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>

Plug 'rbong/vim-flog'
  nnoremap <silent> <leader>gl :Flog<CR>

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" Destroy trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Ack/Ag
Plug 'mileszs/ack.vim'
  " Don't jump to the first result automatically
  cnoreabbrev Ack Ack!
  " The silver search for Ack
  let g:ackprg = 'ag --nogroup --nocolor --column'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  nnoremap <Leader>a :Ack!<Space>

" Colorscheme
Plug 'morhetz/gruvbox'

Plug 'godlygeek/tabular'

" LANG
" MD
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_level = 3
"let g:vim_markdown_folding_disabled = 1

" Kotlin
"Plug 'udalov/kotlin-vim', { 'for' : 'kotlin'}

call plug#end()

colorscheme gruvbox

set clipboard=unnamedplus

set expandtab	    " tab by spaces
set autoindent    " always set auto indenting on
set nu

set ts=2 		      " set tabs to have 2 spaces
set shiftwidth=2  " when using the >> or << commands, shift lines by 4 spaces
