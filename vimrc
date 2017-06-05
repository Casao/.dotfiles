set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'ap/vim-css-color'
Plugin 'moll/vim-node'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
color dracula
set number
