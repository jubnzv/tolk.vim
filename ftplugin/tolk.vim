" Vim filetype plugin for Tolk
" Language: Tolk
" Maintainer: Georgiy Komarov <jubnzv@gmail.com>
" Latest Revision: 2025-08-26

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" Comment settings
setlocal commentstring=//\ %s
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://

" Formatting options
setlocal formatoptions-=t formatoptions+=croql

" Enable folding based on syntax
setlocal foldmethod=syntax
setlocal foldlevel=1

" Keyword settings for word boundaries
setlocal iskeyword+=@-@

" Match pairs for % navigation
if exists("loaded_matchit")
    let b:match_words = '\<if\>:\<else\>:\<elif\>,\<while\>:\<break\>,\<try\>:\<catch\>,\<do\>:\<while\>'
endif

let b:undo_ftplugin = "setlocal commentstring< comments< formatoptions< foldmethod< foldlevel< iskeyword<"
