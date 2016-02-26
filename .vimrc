version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set nomodeline
set mouse=a
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

set nowrap
set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

set ignorecase
set hlsearch

autocmd BufNewFile,BufRead *.cpp set syntax=cpp.doxygen
autocmd BufNewFile,BufRead *.c set syntax=cpp.doxygen
autocmd BufNewFile,BufRead *.h set syntax=cpp.doxygen

filetype on
filetype plugin on
filetype indent on

set noic

colorscheme ron

autocmd BufNewFile,BufReadPost *.dox set filetype=cpp
let g:load_doxygen_syntax=1
