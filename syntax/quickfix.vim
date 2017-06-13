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

" Remove any old syntax stuff hanging around
if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

" Generic
syn match Filename "\v^[^:]*:"
syn match Lineno "\v:^[:]*:"

if version >= 508 || !exists("did_hs_syntax_inits")
  if version < 508
    let did_hs_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  hi link Filename			  Statement
  hi link Lineno			  Function

  delcommand HiLink
endif

let b:current_syntax = "quickfix"

" Options for vi: ts=8 sw=2 sts=2 nowrap noexpandtab ft=vim

