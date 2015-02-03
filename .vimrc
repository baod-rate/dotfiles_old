"Plugins
let firstrun=0
if !filereadable(expand("~/.vim/autoload/plug.vim"))

    let firstrun=1
    silent !mkdir -p ~/.vim/{autoload,undo,backups}
    silent !curl -fLo ~/.vim/autoload/plug.vim
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

call plug#end()
if 1 == firstrun
    :PlugInstall
endif

" indentation options
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" UI options
set showcmd         " Show (partial) command in status line
set relativenumber
set number
set ruler
set background=dark
set mouse=a

" search options
set showmatch       " jump to matching brace
set hlsearch        " highlight search matches
set incsearch       " jump to search result while typing
set ignorecase
set smartcase

" long line options
set autoindent
set textwidth=79
set formatoptions=c,q,r

filetype plugin indent on
syntax on
