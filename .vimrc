execute pathogen#infect()
syntax on
colorscheme railscasts
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set nosmarttab

set wildmode=list:longest,full

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

set guifont=Consolas

set hlsearch

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <Space> i_<Esc>r
