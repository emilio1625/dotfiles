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

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

