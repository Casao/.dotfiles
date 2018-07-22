set nocompatible              " be iMproved, required
filetype off                  " required

silent! python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'fatih/vim-go'
Plugin 'ap/vim-css-color'
Plugin 'moll/vim-node'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
color dracula
set number
set laststatus=2
set mouse=a
set backspace=indent,eol,start
