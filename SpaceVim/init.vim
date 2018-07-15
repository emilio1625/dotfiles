"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

set path+=include
set path+=src
" set spell spelllang=es_mx,en_us

let g:gruvbox_italic=1

" Brightness keys
noremap <F16> :silent !brightness-down-key<enter>
inoremap <F16> <Esc>:silent !brightness-down-key<enter>a
noremap <F17> :silent !brightness-up-key<enter>
inoremap <F17> <Esc>:silent !brightness-up-key<enter>a

" Volume keys
noremap <F13> :silent !mute-key<enter>
inoremap <F13> <Esc>:silent !mute-key<enter>a
noremap <F14> :silent !lower-volume-key<enter>
inoremap <F14> <Esc>:silent !lower-volume-key<enter>a
noremap <F15> :silent !raise-volume-key<enter>
inoremap <F15> <Esc>:silent !raise-volume-key<enter>a

" Media keys
noremap <F18> :silent !previous-key<enter>
inoremap <F18> <Esc>:silent !previous-key<enter>a
noremap <F19> :silent !play-pause-key<enter>
inoremap <F19> <Esc>:silent !play-pause-key<enter>a
noremap <F20> :silent !next-key<enter>
inoremap <F20> <Esc>:silent !next-key<enter>a

" Screenshots
noremap  :silent !fb-shot<enter>
inoremap  <Esc>:silent !fb-shot<enter>a

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

let g:spacevim_filetype_icons={
\ 'sass'     : '',
\ 'yaml'     : '',
\ 'h'        : '',
\ 'hpp'      : '',
\ 'hxx'      : '',
\ 'bash'     : '',
\ 'zsh'      : '',
\ 'ksh'      : '',
\ 'csh'      : '',
\ 'awk'      : '',
\ 'ps1'      : '',
\ 'sql'      : '',
\ 'tsx'      : '',
\ 'jl'       : '',
\ 'pp'       : '',
\ 'vue'      : '﵂',
\}

set showcmd
set wrap

" function! StartifyEntryFormat()
  " return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
" endfunction

