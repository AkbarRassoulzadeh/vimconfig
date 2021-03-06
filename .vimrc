set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'wincent/command-t'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Color scheme settings
"colorscheme dracula
syntax on
set t_Co=256
set cursorline
colorscheme onehalflight

"Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Some options that just make things better
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

"Changing the <leader> key
let mapleader = ","

"Taming searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Makes Vim handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"Makes Vim to show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

"Make ';' do the same thing as ':' one less key to hit when to save a file
nnoremap ; :

"Save on losing focus
au FocusLost * :wa

"Some leader commands

"Quickly open up my ~/.vimrc file in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"Quicker eskaping by hh
inoremap hh <ESC>

"Working with split windows
"Open a new vertical split and switch over to it.
nnoremap <leader>w <C-w>v<C-w>l

"Commands to move around our splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Nerdtree commands
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
