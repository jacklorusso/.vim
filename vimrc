" Don't try to be vi compatible
set nocompatible

" pathogen.vim
execute pathogen#infect()

" Syntax highlighting
syntax on
filetype plugin indent on
colorscheme Tomorrow-Night

" Stop annoying me
set visualbell

" Set font
set guifont=Inconsolata\ Regular:h18

" Auto indent
set ai

" Set backspace behaviour
set backspace=indent,eol,start

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
map <leader>\ :NERDTreeToggle<CR>
