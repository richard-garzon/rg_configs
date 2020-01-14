set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set autoindent noexpandtab tabstop=2 shiftwidth=2

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
