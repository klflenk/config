" make sure bash is used
set shell=/bin/bash
filetype off                  " required for vundle
let mapleader=","
syntax on

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

" use System clipboard
set clipboard=unnamed

"Color Scheme {{{
set background=dark " or light
colorscheme elflord
"colorscheme delek
"}}}

" ttyfast & lazydraw {{{
set ttyfast
set lazyredraw
" }}}

" Reduce timeout after <ESC> is recieved. {{{
set ttimeout
set ttimeoutlen=20
set notimeout
"}}}

" misc {{{
set backspace=2		" Backspace deletes like most programs in insert mode
set nocompatible	" Use Vim settings, rather then Vi settings
set modeline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number			" show line number
set showcmd			
set wildmenu
set showmatch
set incsearch
set hlsearch		" Highligth search
set foldenable
set laststatus=2	" Always display the status line
" }}}

" Split settings {{{
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
"}}}

" Backup {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"}}}

" Vumble {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/Vundle.vim')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" more plugins ...
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'

Plugin 'ryanoasis/vim-devicons'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"}}}

" Plugin configuration {{{
let g:ycm_python_binary_path = '/usr/bin/python3'

" auto start for NERDTree
"autocmd vimenter * NERDTree

" keybind for NERDTree
map <leader>n :NERDTreeToggle<CR>

" status bar. For more themes check:
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep='>'
let g:airline_detect_paste=1

" Airline support for tux
set noshowmode
set encoding=utf-8
set term=xterm-256color

" Set vim font to a Nerd Font
set guifont=DroidSansMono\ Nerd\ Font\ 11

" vim-devicons for airline
let g:airline_powerline_fonts = 1

" Enable folding
set foldmethod=indent
"set foldlevel=99
nnoremap <space> za

" ycm teak
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}}}

" vim:foldmethod=marker:foldlevel=0
