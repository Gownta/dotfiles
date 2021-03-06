set autoindent
set backspace=indent,eol,start
set display=lastline
set expandtab
set hlsearch
set incsearch
set modelines=0
set mouse=a
set noerrorbells
set nolist
set number
set numberwidth=5
set ruler
set scrolljump=1
set scrolloff=1
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2
set tabstop=8
set undolevels=1000
set viminfo='50,"50

:highlight ExtraWhitespace ctermbg=red guibg=red
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/

:map Q <Nop>

syntax on
colorscheme desert
