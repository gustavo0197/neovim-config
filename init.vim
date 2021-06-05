source ~/.config/nvim/plugins.vim
source ~/.config/nvim/basic.vim
" Plugins config
source ~/.config/nvim/plugins-conf/coc.vim
source ~/.config/nvim/plugins-conf/rnvimr.vim
source ~/.config/nvim/plugins-conf/float-term.vim

" ==============
" |  Mappings  |
" ==============
nnoremap <leader>ob :Buffers<CR>
nnoremap <C-p> :Files<CR>
nnoremap <A-S-p> :Ag<CR> 
" Searcher 
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,build/*,dist/*,build-dev/*,.parcel-cache/*,.cache/*}"'

" ======================
" |  Nerd tree config  |
" ======================
"let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
"let g:NERDTreeGitStatusUseNerdFonts = 1

" Open/Close NERDTree using F3
"map <F3> :NERDTreeToggle<CR>

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
let g:indentLine_fileTypeExclude = ['json']
let g:indentLine_char = '┊'

" =====================
" |   Vim which key   |
" =====================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
