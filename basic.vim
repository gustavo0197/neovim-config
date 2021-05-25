" ==================
" |  Basic config  |
" ==================
set title
set number
set nobackup
set nowritebackup
set cursorline
set colorcolumn=120
set textwidth=120
set wrapmargin=2

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set noshowmode  " Don't show the current status
"set guifont=Hack

set ignorecase
set spelllang=en,es

set termguicolors
set background=dark
set updatetime=250
colorscheme vivid

" ==============
" |  Mappings  |
" ==============

let g:mapleader = ' ' " Use space as leader 

" Save using leader + s
nnoremap <leader>s :w<CR>
" Delete buffer
nnoremap <leader>q :bd<CR>
" Quit vim
nnoremap <leader>' :qa!<CR>
" Close file
nnoremap <leader>, :q<CR>
" New tab
nnoremap <leader>tn :tabnew<CR>
" Horizontal resize
nnoremap <leader>hr :resize 
" Vertical resize
nnoremap <leader>vr :vertical resize 
" Vertical split
nnoremap <leader>vs :vsplit<CR>
" Horizontal split
nnoremap <leader>hs :split<CR>
" Move tab
nnoremap <leader>tm :tabmove 
" Paste
inoremap <C-v> <ESC>"+pa
" Copy
vnoremap <C-c> "+y
" Cut
vnoremap <C-d> "+d
" Change shiftwidth
nnoremap <leader>csw :set shiftwidth=

" Vim yat theme development purposes
"nnoremap <leader>l :source /home/gustavo/develop/gensoft/vim-theme/colors/yat.vim<CR>
