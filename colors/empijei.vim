" Vim color file
" Maintainer:	Empijei <empijei@gmail.com>
" This is just a fork of vim's default desert colorscheme
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    highlight clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="empijei"

" Color definitions for terminal mode
highlight ColorColumn ctermbg=black
highlight Comment ctermfg=darkcyan
highlight Constant ctermfg=red
highlight CursorLine cterm=NONE ctermbg=0
highlight DiffAdd ctermbg=4
highlight DiffChange ctermbg=5
highlight DiffDelete cterm=bold ctermfg=4 ctermbg=6
highlight DiffText cterm=bold ctermbg=1
highlight Directory ctermfg=darkcyan
highlight Error cterm=bold ctermfg=7 ctermbg=1
highlight ErrorMsg cterm=bold ctermfg=7 ctermbg=1
highlight FoldColumn ctermfg=0 ctermbg=NONE
highlight Folded ctermfg=0 ctermbg=NONE
highlight Identifier ctermfg=6
highlight Ignore cterm=bold ctermfg=7
highlight Ignore ctermfg=0
highlight IncSearch cterm=NONE ctermfg=black ctermbg=yellow
highlight LineNr ctermfg=brown
highlight MatchParen cterm=NONE ctermfg=yellow ctermbg=black
highlight ModeMsg cterm=bold ctermfg=grey
highlight MoreMsg ctermfg=darkgreen
highlight NonText ctermfg=darkblue cterm=bold
highlight PreProc ctermfg=5
highlight Question ctermfg=green
highlight Search cterm=NONE ctermfg=black ctermbg=green
highlight Special ctermfg=5
highlight SpecialKey ctermfg=darkblue
highlight SpellBad cterm=NONE ctermfg=white ctermbg=red
highlight SpellCap cterm=NONE ctermfg=white ctermbg=blue
highlight Statement ctermfg=brown
highlight StatusLine cterm=bold,reverse
highlight StatusLineNC cterm=reverse
highlight Title ctermfg=5
highlight Type ctermfg=2
highlight Underlined cterm=underline ctermfg=5
highlight VertSplit cterm=reverse
highlight Visual cterm=NONE ctermfg=black ctermbg=yellow
highlight VisualNOS cterm=bold,underline
highlight WarningMsg ctermfg=1
highlight WildMenu ctermfg=0 ctermbg=3

"0 darkgrey
"1 red
"2 green
"3 yellow
"4 blue
"5 purple
"6 cyan
"7 white
