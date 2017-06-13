" Vim syntax file
" Language:	Internet Headers (HTTP, SMTP, etc)
" Maintainer:	Empijei <empijei@gmail.com>
" Original Maintainer:	Simon Brown <simon12021@bigpond.com>
" Last Change:	13/06/2017	
"

if exists("b:current_syntax")
  finish
endif

" For email
syn match FromHdr '^From: ' 
syn match ToHdr '^To: '
" Generic
syn match XHeader '\v^[Xx]-[^:]{1,20}:'
syn match Header '\v^[^Xx \t][^:]{1,30}:'
syn match Date '\v(\a{3}, )?\d{1,2} \a{3} \d{2,4}'
syn match shortDate '\v<\d{1,2}[-/]\d{1,2}([-/]\d{2,4})?>'
syn match Time '\v<\d{1,2}:\d{1,2}:\d{1,2}(.\d{1,4})?( [+-]\d{4})?( [(]?\u{3,5}[)]?)?'
syn match host '\v<\w+\.(\w+\.)*\a\w+>'
syn match email '\v<[A-Za-z0-9.]*\@[A-Za-z0-9]*\.[A-Za-z0-9.]*>'
syn match contentType '\v<\a{1,20}/\a{1,20}>'
" IP Addresses
syn match IPAddr '\v<\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}>'

let b:current_syntax = "headers"

hi link XHeader		  Comment
hi link Header			  Statement
hi link FromHdr		  Identifier
hi link ToHdr			  Identifier
hi link email			  Type
hi link IPAddr			  Function
hi link Date			  Constant
hi link shortDate		  Constant
hi link Time			  Constant
hi link contentType	  PreProc
hi link host			  Special
