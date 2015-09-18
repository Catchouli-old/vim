execute pathogen#infect()
syntax on
colorscheme railscasts
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

let g:ctrlp_clear_cache_on_exit=0

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set ignorecase

augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set number

set list
set listchars=tab:->

set hlsearch

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:command! B !devenv "C:\Users\c.wilks\Documents\bin\visionaryrender.sln" /build Release /project visren-app

