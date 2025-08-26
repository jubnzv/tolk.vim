" Tolk.vim - Vim plugin for Tolk language support
" Language: Tolk
" Maintainer: Georgiy Komarov <jubnzv@gmail.com>
" Latest Revision: 2025-08-26

if exists('g:loaded_tolk_vim')
    finish
endif
let g:loaded_tolk_vim = 1

" Save cpoptions
let s:save_cpo = &cpo
set cpo&vim

" Global configuration
if !exists('g:tolk_highlight_operators')
    let g:tolk_highlight_operators = 1
endif

if !exists('g:tolk_highlight_functions')
    let g:tolk_highlight_functions = 1
endif

if !exists('g:tolk_fold_enable')
    let g:tolk_fold_enable = 1
endif

" Restore cpoptions
let &cpo = s:save_cpo
unlet s:save_cpo
