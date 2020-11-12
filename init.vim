" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')

" Plugins to install here

Plug 'scrooloose/nerdtree' " Files explorer
Plug 'ryanoasis/vim-devicons' " Icons

Plug 'vim-airline/vim-airline' " Custom status bar
Plug 'vim-airline/vim-airline-themes'  " Themes for airline

Plug 'ervandew/supertab' " Suggestions

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
set noshowmode  " Don't show the current status

set ignorecase
set spelllang=en,es

set termguicolors
set background=dark
colorscheme dracula


" Nerd tree config
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Open/Close NERDTree using F2
map <F3> :NERDTreeToggle<CR>

" Airline config

let g:airline#extensions#tabline#enabled = 1 " Only show opened buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show the name of the file

" Load powerline font 
let g:airline_powerline_fonts = 1


" Supertab config

let g:SuperTabDefaultCompletionType = '<c-n>'
