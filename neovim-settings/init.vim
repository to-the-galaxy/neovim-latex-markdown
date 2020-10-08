" ********** Initial settings **********

set nocompatible
filetype off
syntax enable
syntax on

" let path+=**
set wildmenu

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set relativenumber

set splitbelow splitright

" ********** Plugins **********

call plug#begin()
  Plug 'itchyny/lightline.vim'
  Plug 'lervag/vimtex'
  Plug 'https://github.com/cocopon/iceberg.vim.git'
call plug#end()

" ********** Plugins **********

set laststatus=2
set background=dark

colorscheme iceberg

let g:mapleader = "\<Space>"

let g:tex_flavor = 'latex'

let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
