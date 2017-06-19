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

syn match FilenameType 		"\v^[^:]+:(\w+:)(\d+:)*"	contains=EType,WType,IType,Lineno,Colon
syn match EType				"\v:@<=E"						contained
syn match WType				"\v:@<=W"						contained
syn match IType				"\v:@<=I"						contained
syn match Lineno 				"\v:@<=\d+" 					contained
syn match Colon 				":" 								contained

let b:current_syntax = "quickfix"

hi link FilenameType		PreProc
hi link EType 				Constant
hi link WType 				Statement
hi link IType 				Comment
hi link Lineno				Type
hi link Colon 				Comment
