" Don't try to be vi compatible
set nocompatible

" Syntax highlighting
filetype on
syntax on
colorscheme molokai

" Set font
set guifont=Inconsolata\ Regular:h18

" Auto indent
set ai

" Set backspace behaviour
set bs=2

" Add line numbers
set number

" Line wrap
set tw=72

" Show incomplete command
set showcmd

" Show matching brackets
set showmatch

" Set Leader key
let mapleader=","

map <leader>s :source ~/.vimrc<CR>
