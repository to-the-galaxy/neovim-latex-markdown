" ********** Initial settings **********

set nocompatible
filetype off
syntax enable
syntax on

set path+=**
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
  " Plug 'roxma/nvim-completion-manager'
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  Plug 'itchyny/lightline.vim'
  Plug 'lervag/vimtex'
  "Plug 'morhetz/gruvbox'
  "Plug 'tomasr/molokai'
  "Plug 'dracula/vim', { 'name': 'dracula' }
  "Plug 'https://github.com/altercation/vim-colors-solarized.git',
  "Plug 'arcticicestudio/nord-vim', { 'name': 'nord'}
  "Plug 'jnurmine/Zenburn',
  Plug 'https://github.com/cocopon/iceberg.vim.git'
call plug#end()

" ********** Plugins **********

set laststatus=2
set background=dark

colorscheme iceberg
