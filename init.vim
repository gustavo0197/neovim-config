" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')
" Plugins to install here

Plug 'scrooloose/nerdtree' " File explorer
Plug 'xuyuanp/nerdtree-git-plugin' " Git plugin for nerdtree 
Plug 'vim-airline/vim-airline' " Custom status bar
Plug 'vim-airline/vim-airline-themes'  " Themes for airline
Plug 'ervandew/supertab' " Suggestions

" Intellisense and syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-angular', 'coc-eslint', 'coc-graphql']
" Syntax hightlight
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'joukevandermaas/vim-ember-hbs' " Plugin for HBS files
Plug 'jparise/vim-graphql' " GraphQL plugin

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs' " Complete '', (), {} or []
Plug 'preservim/nerdcommenter' " Create comments
Plug 'haya14busa/incsearch.vim' " A better searcher
Plug 'airblade/vim-gitgutter' " Git plugin
Plug 'tpope/vim-fugitive' " Git plugin
Plug 'mattn/emmet-vim' " Emmet for html
Plug 'matze/vim-move' " Move block of code
Plug 'APZelos/blamer.nvim'
Plug 'preservim/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

" Some themes
Plug 'ayu-theme/ayu-vim'
Plug 'humanoid-colors/vim-humanoid-colorscheme'
Plug 'ghifarit53/tokyonight-vim'
Plug 'gustavo0197/vim-theme'

call plug#end()

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
set guifont=Hack\ Nerd\ Font\ Regular

set ignorecase
set spelllang=en,es

set termguicolors
set background=dark
set updatetime=250
colorscheme yat

" ==============
" |  Mappings  |
" ==============
let g:mapleader = ' ' " Use space as leader 

"Save using leader + s
nnoremap <leader>s :w<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>' :qa!<CR>
nnoremap <leader>, :q<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>hr :resize 
nnoremap <leader>vr :vertical resize 
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nnoremap <leader>tm :tabmove 
nnoremap <leader>sb :Buffers<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
nnoremap <C-p> :Files<CR>
nnoremap <A-S-p> :Ag<CR> 
" Searcher 
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" Vim yat theme development purposes
"nnoremap <leader>l :source /home/gustavo/develop/gensoft/vim-theme/colors/yat.vim<CR>

" ======================
" |  Nerd tree config  |
" ======================
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let g:NERDTreeGitStatusUseNerdFonts = 1

" Open/Close NERDTree using F3
map <F3> :NERDTreeToggle<CR>

" ====================
" |  Airline config  |
" ====================
let g:airline#extensions#tabline#enabled = 1 " Only show opened buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show the name of the file
let g:airline_theme = "molokai"

" =========================
" |  Load powerline font  |
" =========================
let g:airline_powerline_fonts = 1

" =====================
" |  Supertab config  |
" =====================
let g:SuperTabDefaultCompletionType = '<c-n>'

" ============
" |  Tagbar  |
" ============
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" ==============
" |  Vim move  |
" ==============
let g:move_map_keys = 0
map <C-Down> <Plug>MoveBlockDown
map <C-Up> <Plug>MoveBlockUp
"map <C-Left> <Plug>MoveBlockLeft
"map <C-Right> <Plug>MoveBlockRight

" ================
" |  Git Gutter  |
" ================
let g:gitgutter_highlight_linenrs = 1
nnoremap <leader>hf :GitGutterFold<CR>
nnoremap <leader>hlh :GitGutterLineHighlightsToggle<CR>
nnoremap <leader>hlnh :GitGutterLineNrHighlightsToggle<CR>

" emmet config
" let g:user_emmet_leader_key='<C-Z>'

" ===================
" |  Blamer config  |
" ===================
let g:blamer_enabled = 0
let g:blamer_delay = 500
let g:blamer_prefix = ' > '
nnoremap <leader>gbt :BlamerToggle<CR>

" ================
" |  IndentLine  |
" ================
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_enabled = 1
"let g:indentLine_fileType = ['html', 'ts', 'js']
"let g:indentLine_setConceal = 0
"let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_fileTypeExclude = ['json']
let g:indentLine_char = '┊'
"let g:indentLine_leadingSpaceChar = ' '
"let g:indentLine_leadingSpaceChar = '·'

" ================
" |  Coc config  |
" ================
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-g> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-g>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
