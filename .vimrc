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

set guifont=Monospace

set hlsearch

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <Space> i_<Esc>r

" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

autocmd BufEnter *.hs set formatprg=pointfree

let g:syntastic_auto_loc_list=1

let s:width = 80

function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let description = 1 < a:0 ? a:2 : inputdialog("Describe this module: ")
    let license = 2 < a:0 ? a:3 : inputdialog("License: ")
    
    let header_text  = "-- | \n" 
    if (!empty(name))
      let header_text .= "-- Module      :  " . name . "\n"
    endif
    if (!empty(description))
      let header_text .= "-- Description :  " . description . "\n"
    endif
    let header_text .= "-- Copyright   :  (c) 2016 Caitlin Wilks\n"
    if (!empty(license))
      let header_text .= "-- License     :  BSD3\n"
    endif
    let header_text .= "-- Maintainer  :  Caitlin Wilks <mitasuki@gmail.com>\n"
    let header_text .= "-- \n"
    let header_text .= "-- \n"
    let header_text .= "\n"

    return header_text

endfunction


nmap <silent> --h gg"=HaskellModuleHeader()<CR>:0put =<CR>k$
nmap <silent> --t O<Esc>O<Esc>o-- | 

