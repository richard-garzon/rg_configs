set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/YouCompleteMe

" Never hit escape again!
" Some people prefer jj, but they're silly
imap jk <Esc>

colorscheme onedark


" Use 256 colors!
set t_Co=256


" utf-8 encoding baby!
set encoding=utf-8


" OMG it's powerline!
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:airline_theme = 'powerlineish'

" Bye, bye arrow keys (Do it your fingers will thank you)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Syntax Highlighting
syntax on


" Easy viewing of multiple files? Why not!
set hidden


" Line Numbers
set number


" What column am I in?
set ruler


" Highlight things found with search
set hlsearch
set incsearch


" Why make search case sensitive?
set ignorecase


" Highlight current line
set cursorline


" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


" Who wants an 8 character tab?  Not me!
" set shiftwidth=4
" set softtabstop=4


" Spaces are better than a tab character
" set expandtab
" set smarttab

" set autoindent and use hard tabs
set autoindent expandtab softtabstop=4 shiftwidth=4

" This shows what you are typing as a command.
set showcmd


" Show that filename in that bottom
set ls=2


" Set that backspace to work
set backspace=indent,eol,start


" Why backup when you can git?
set nobackup
set noswapfile


" Die annoying beep die!!!
set visualbell
set noerrorbells


" Get them 100 columns (Vim 7.3 and above)
" set colorcolumn=100
" Vim 7.2 and below
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/


" Map :w!! to allow writing file as sudo if opened normally
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work?answertab=active#tab-top
cmap w!! w !sudo tee > /dev/null %

" show invisible characters
set list
set listchars=eol:¬,tab:—→,trail:■
