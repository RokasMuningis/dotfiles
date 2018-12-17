set tabstop=4
set expandtab
set shiftwidth=4

execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"
