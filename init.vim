" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')

" Plugins to install here

Plug 'scrooloose/nerdtree' " Files explorer
Plug 'ryanoasis/vim-devicons' " Icons

" Some themes
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'

call plug#end()

set title
set number

set cursorline
set colorcolumn=120

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

set ignorecase
set spelllang=en,es

set termguicolors
set background=dark
colorscheme dracula


let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Open/Close NERDTree using F2
map <F3> :NERDTreeToggle<CR>
