" Looks
syntax enable
set cmdheight=1
set number
set noerrorbells
set novisualbell
set background=dark
set noshowmode
set laststatus=2
colorscheme gruvbox

filetype plugin indent on

" Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Use 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4

" Plugins loading
set runtimepath^=~/.vim/pack/ctrlp.vim

" CtrlP setup
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
