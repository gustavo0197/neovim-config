" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')
" Plugins to install here

Plug 'scrooloose/nerdtree' " File explorer
Plug 'xuyuanp/nerdtree-git-plugin' " Git plugin for nerdtree 
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
Plug 'jiangmiao/auto-pairs' " Complete '', (), {} or []
Plug 'preservim/nerdcommenter' " Create comments
Plug 'haya14busa/incsearch.vim' " A better searcher
Plug 'airblade/vim-gitgutter' " Git plugin
Plug 'mattn/emmet-vim' " Emmet for html
Plug 'ludovicchabant/vim-gutentags'
Plug 'joukevandermaas/vim-ember-hbs'

" Some themes
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'

call plug#end()

let g:mapleader = ' ' " Use space as leader 

"Mappings

"Save using leader + s
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>' :qa!<CR>
nnoremap <leader>tn :tabnew<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

" Searcher mappings 
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

set title
set number
set nobackup
set nowritebackup
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
let g:one_allow_italics = 1
colorscheme ayu
set updatetime=250

" Nerd tree config
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Open/Close NERDTree using F3
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

" emmet config
" let g:user_emmet_leader_key='<C-Z>'


