" Looks
syntax enable
set cmdheight=1
set number
set noerrorbells
set novisualbell


" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
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

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"
