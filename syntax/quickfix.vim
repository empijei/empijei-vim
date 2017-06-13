" Vim syntax file
" Language:	Quickfix, grep -nlR output
" Maintainer:	Empijei <empijei@gmail.com>
" Last Change:  13/06/2017	
" Usage:
"   To highlight a file: 
"   set ft=quickfix
"   syn on
"
" Used headers.vim as a template 

if exists("b:current_syntax")
	finish
endif

syn match Filename "^[^:]*:\d*:" contains=Lineno
syn match Lineno "\d*:" contained

let b:current_syntax = "quickfix"

hi link Filename	PreProc
hi link Lineno	Type
