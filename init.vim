" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')

" Plugins to install here

Plug 'scrooloose/nerdtree' " Files explorer
Plug 'ryanoasis/vim-devicons' " Icons

Plug 'vim-airline/vim-airline' " Custom status bar
Plug 'vim-airline/vim-airline-themes'  " Themes for airline

Plug 'ervandew/supertab' " Suggestions

" Intellisense and syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
" TypeScript and tsx support
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'ctrlpvim/ctrlp.vim' " File searcher

Plug 'tpope/vim-surround'

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


" ctrl p config

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'

