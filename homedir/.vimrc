set tabstop=4
set expandtab
set shiftwidth=4
set term=xterm-256color
set guifont=Fira\ Code:h15
set termencoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
autocmd vimenter * NERDTree
