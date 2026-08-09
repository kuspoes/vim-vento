" Vim syntax file
" Language: vento 
" Maintainer: poes 
" Latest Revision: 2026

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
unlet! b:current_syntax

syntax region ventoTag start="{{" end="}}" contains=ventoKeyword,ventoString,ventoNumber,ventoOperator,ventoPipe

syntax keyword ventoKeyword if else elif for in set include layout echo export async contained
syntax keyword ventoBoolean true false contained

syntax match ventoString /"[^"]*"|'[^']*'/ contained
syntax match ventoNumber /\b\d\+\b/ contained
syntax match ventoOperator /==\|!=\|<\|>\|<=\|>=\|&&\|||\|=/ contained
syntax match ventoPipe /|>/ contained

syntax region ventoComment start="{#" end="#}"

highlight default link ventoTag Special
highlight default link ventoKeyword Keyword
highlight default link ventoBoolean Boolean
highlight default link ventoString String
highlight default link ventoNumber Number
highlight default link ventoOperator Operator
highlight default link ventoPipe Operator
highlight default link ventoComment Comment

let b:current_syntax = "vento"
