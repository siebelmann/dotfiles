set nocompatible

filetype plugin indent on
syntax on
set encoding=utf8

set backspace=indent,eol,start
set hidden

set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

set number

autocmd FileType html setlocal tabstop=2 shiftwidth=2
autocmd FileType jinja setlocal tabstop=2 shiftwidth=2
autocmd FileType svg setlocal tabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2
autocmd FileType scss setlocal tabstop=2 shiftwidth=2

highlight LineNr ctermfg=DarkGrey
