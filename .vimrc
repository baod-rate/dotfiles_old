" ==============================================================================
" .vimrc
" ==============================================================================
set nocompatible

" ==============================================================================
" plugins
" ==============================================================================
" ================
" vim-plug grabber
" ================
let firstrun=0
if !filereadable(expand("~/.vim/autoload/plug.vim"))
    let firstrun=1
    silent !mkdir -p ~/.vim/{autoload,undo,backups}
    silent !curl -fLo ~/.vim/autoload/plug.vim
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" =======
" plugins
" =======
call plug#begin('~/.vim/plugged')

" syntax
" Plug 'benekastah/neomake'

" interface
Plug 'junegunn/rainbow_parentheses.vim'

" colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'
Plug 'w0ng/vim-hybrid'

call plug#end()

" ====================
" vim-plug initializer
" ====================
if 1 == firstrun
    :PlugInstall
endif


" ==============================================================================
" options
" ==============================================================================
filetype plugin indent on
syntax on

" ===========
" indentation
" ===========
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" =========
" interface
" =========
set showcmd         " Show (partial) command in status line
set relativenumber
set number
set ruler
set background=dark
" colorscheme solarized
" colorscheme seoul256
let g:hybrid_use_Xresources = 1
colorscheme hybrid
" set mouse=a

" ======
" search
" ======
set showmatch       " jump to matching brace
set hlsearch        " highlight search matches
set incsearch       " jump to search result while typing
set ignorecase
set smartcase

" ==========
" long-line 
" ==========
set autoindent
set textwidth=79
set formatoptions=c,q,r

" ======
" syntax
" ======
" autocmd! BufWritePost *.c++,*.c,*.cpp,*.py,*.js Neomake
