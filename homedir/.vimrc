" Looks
syntax enable
set cmdheight=1
set number
set noerrorbells
set novisualbell
set background=dark
colorscheme solarized

" Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

call plug#end()

filetype plugin indent on

" Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8


" Use 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4


" Auto-start plugins
autocmd vimenter * NERDTree
set syntax=typescript

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"

" TSX
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
