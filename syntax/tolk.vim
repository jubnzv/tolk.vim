" Vim syntax file for Tolk
" Language: Tolk
" Maintainer: Georgiy Komarov <jubnzv@gmail.com>
" Latest Revision: 2025-08-26

if exists("b:current_syntax")
    finish
endif

" Comments
syn cluster tolkCommentGroup contains=tolkTodo
syn keyword tolkTodo contained TODO FIXME XXX NOTE HACK BUG

" Line comments
syn region tolkCommentL start="//" skip="\\$" end="$" keepend contains=@tolkCommentGroup,@Spell

" Block comments with proper matchgroup and extend
syn region tolkComment matchgroup=tolkCommentStart start="/\*" end="\*/" contains=@tolkCommentGroup,@Spell extend

" Strings
syntax region tolkString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=tolkEscape
syntax region tolkTripleString start=+"""+ end=+"""+ contains=tolkEscape
syntax match tolkEscape contained "\\."

" Numbers
syntax match tolkNumber "\<-\?\(\d\+\|0x\x\+\|0b[01]\+\)\>"

" Multi-character operators first (to avoid conflicts with single chars)
syntax match tolkOperator "=="
syntax match tolkOperator "!="
syntax match tolkOperator "<="
syntax match tolkOperator ">="
syntax match tolkOperator "<<"
syntax match tolkOperator ">>"
syntax match tolkOperator "&&"
syntax match tolkOperator "||"
syntax match tolkOperator "\~/"
syntax match tolkOperator "\^/"
syntax match tolkOperator "+="
syntax match tolkOperator "-="
syntax match tolkOperator "\*="
syntax match tolkOperator "/="
syntax match tolkOperator "%="
syntax match tolkOperator "&="
syntax match tolkOperator "|="
syntax match tolkOperator "\^="
syntax match tolkOperator "->"
syntax match tolkOperator "<=>"
syntax match tolkOperator "\~>>"
syntax match tolkOperator "\^>>"
syntax match tolkOperator "<<="
syntax match tolkOperator ">>="
syntax match tolkOperator "=>"

" Single character operators
syntax match tolkOperator "[-+%?:,;()[\]{}=<>!&|^]"

" Individual / and * operators with careful matching to avoid comment conflicts
syntax match tolkOperator "\*\%(/\)\@!"
syntax match tolkOperator "/\%(\*\|/\)\@!"

" Keywords
syntax keyword tolkControl do if try else while break throw catch return assert repeat continue asm builtin match lazy

" Other keywords
syntax keyword tolkKeyword import export true false null redef mutate tolk as is
syntax match tolkKeyword "!is\>"

" Types
syntax keyword tolkType type enum int cell void bool slice tuple builder continuation never coins address
syntax match tolkType "\<int\d\+\>"
syntax match tolkType "\<uint\d\+\>"
" Builtin stdlib types
syntax keyword tolkType varint16 varuint16 varint32 varuint32
syntax match tolkType "\<bits\d\+\>"
syntax match tolkType "\<bytes\d\+\>"

" Storage modifiers
syntax keyword tolkModifier global const var val fun get struct

" Annotations
syntax match tolkAnnotation "@\w\+"

" Functions
syntax match tolkFunction "\(`[^`]\+`\|[a-zA-Z$_][a-zA-Z0-9$_]*\)\ze("

" Special variables
syntax keyword tolkSpecial self

" Regular variables
syntax match tolkVariable "\(`[^`]\+`\|[a-zA-Z$_][a-zA-Z0-9$_]*\)"

" Folding markers
syntax region tolkFold start="{" end="}" transparent fold

" Link to standard highlighting groups
highlight def link tolkComment Comment
highlight def link tolkCommentL Comment
highlight def link tolkCommentStart Comment
highlight def link tolkTodo Todo
highlight def link tolkString String
highlight def link tolkTripleString String
highlight def link tolkEscape SpecialChar
highlight def link tolkNumber Number
highlight def link tolkControl Statement
highlight def link tolkOperator Operator
highlight def link tolkKeyword Keyword
highlight def link tolkType Type
highlight def link tolkModifier StorageClass
highlight def link tolkAnnotation PreProc
highlight def link tolkFunction Function
highlight def link tolkSpecial Special
highlight def link tolkVariable Identifier

let b:current_syntax = "tolk"

" Folding settings
setlocal foldmethod=syntax
setlocal foldlevel=1
