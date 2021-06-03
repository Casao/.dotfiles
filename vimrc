set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'ap/vim-css-color'
Plugin 'moll/vim-node'
Plugin 'lambdalisue/suda.vim'
Plugin 'tssm/fairyfloss.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set termguicolors
color fairyfloss
set number
set laststatus=2
set mouse=a
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
