" Vim indent file for Tolk
" Language: Tolk
" Maintainer: Georgiy Komarov <jubnzv@gmail.com>
" Latest Revision: 2025-08-26

if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal indentexpr=GetTolkIndent()
setlocal indentkeys=0{,0},0),!^F,o,O,e
setlocal autoindent
setlocal smartindent

function! GetTolkIndent()
    let line = getline(v:lnum)
    let prevline = getline(v:lnum - 1)
    let prevlnum = prevnonblank(v:lnum - 1)

    " At the start of the file use zero indent
    if prevlnum == 0
        return 0
    endif

    let prevline = getline(prevlnum)
    let ind = indent(prevlnum)

    " Increase indent after opening braces, function definitions, control structures
    if prevline =~ '[{(]\s*$' || prevline =~ '\<\(if\|else\|while\|for\|do\|try\|catch\|fun\|struct\|enum\)\>'
        let ind += shiftwidth()
    endif

    " Decrease indent for closing braces
    if line =~ '^\s*[})]\s*$'
        let ind -= shiftwidth()
    endif

    " Special handling for else
    if line =~ '^\s*else\>'
        let ind -= shiftwidth()
    endif

    return ind
endfunction
