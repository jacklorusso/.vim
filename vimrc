" Don't try to be vi compatible
set nocompatible

" pathogen.vim
execute pathogen#infect()

" Syntax highlighting
syntax on
filetype plugin indent on
colorscheme Tomorrow-Night
set encoding=utf-8
scriptencoding utf-8

" Allow JSX highlighting in .js files
let g:jsx_ext_required = 0

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '\ue0a0'.branch : ''
  endif
  return ''
endfunction

set laststatus=2

" change NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▽' 

" Stop annoying me
set visualbell

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
let mapleader="\<space>"

map <leader>s :source ~/.vimrc<CR>
map <leader>\ :NERDTreeToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
