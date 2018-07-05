"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

set path+=include
set spell spelllang=es_mx,en_us 

let g:gruvbox_italic=1

" Brightness keys
noremap <S-F4> :silent !brightness-down-key<enter>
inoremap <S-F4> <Esc>:silent !brightness-down-key<enter>a
noremap <S-F5> :silent !brightness-up-key<enter>
inoremap <S-F5> <Esc>:silent !brightness-up-key<enter>a

" Volume keys
noremap <S-F1> :silent !mute-key<enter>
inoremap <S-F1> <Esc>:silent !mute-key<enter>a
noremap <S-F2> :silent !lower-volume-key<enter>
inoremap <S-F2> <Esc>:silent !lower-volume-key<enter>a
noremap <S-F3> :silent !raise-volume-key<enter>
inoremap <S-F3> <Esc>:silent !raise-volume-key<enter>a

" Media keys
noremap <S-F6> :silent !previous-key<enter>
inoremap <S-F6> <Esc>:silent !previous-key<enter>a
noremap <S-F7> :silent !play-pause-key<enter>
inoremap <S-F7> <Esc>:silent !play-pause-key<enter>a
noremap <S-F8> :silent !next-key<enter>
inoremap <S-F8> <Esc>:silent !next-key<enter>a

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

set showcmd
set wrap

