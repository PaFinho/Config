" Paul Ritters .vimrc file
" https://dougblack.io/words/a-good-vimrc.html


" Gibt links die aktuelle und davon ausgehend relativen Zeilennummern aus.
set number
set relativenumber

" zeigt den letzten command unten in der Leiste an
set showcmd 

" Style-Zeugs aus dem Internet (...) 
execute pathogen#infect()

" Ein gewisses Level an highlighting 
syntax on
" highlight zusammengehörende Klammern
set showmatch


" Läd gewisse indentation files bei gewissen .xyz files.
filetype indent on
filetype plugin indent on

" visual autocomplete for command menu
set wildmenu

" redraw nur wenn es gebraucht wird
set lazyredraw


" Sucheinstellungen
set incsearch		" suche während Buchstaben eingegeben werden 
set hlsearch		" Übereinstimmungen highlighten
" wenn ich <Leertaste> drücke geht das highlighting der Suche aus
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable 		" enable folding
set foldlevelstart=10 	
set foldnestmax=10
set foldmethod=indent

" https://github.com/xuhdev/vim-latex-live-preview
" PDF viewer
set updatetime=1000
" skim funktioniert nicht
let g:livepreview_previewer = 'open -a skim'
" let g:livepreview_previewer = 'evince'
" let g:livepreview_previewer = 'open -a Preview'
" let g:livepreview_previewer = 'okular'
let g:livepreview_cursorhold_recompile = 0

" Plugins installieren
" (1) :so ~/.vimrc		
" (2) :PlugInstall
 
call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex'}
call plug#end()


" Tmux
" Erlaubt cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

