set shell=/bin/bash


"Color Scheme
set background=dark " or light
"colorscheme elflord
colorscheme delek

set ttyfast
set lazyredraw

" Reduce timeout after <ESC> is recieved.
set ttimeout
set ttimeoutlen=20
set notimeout

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

set backspace=2		" Backspace deletes like most programs in insert mode
set nocompatible	" Use Vim settings, rather then Vi settings
set modeline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set showcmd			
set wildmenu
set showmatch
set incsearch
set hlsearch		" Highligth search
set foldenable
set laststatus=2	" Always display the status line

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


syntax on


let mapleader=","
"nnoremap <leader>u :GundoToggle<CR>


" Backup {[{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"}]}


" vim:foldmethod=marker:foldlevel=0
