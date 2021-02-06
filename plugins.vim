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
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-angular', 'coc-eslint', 'coc-snippets']
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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Some themes
Plug 'ayu-theme/ayu-vim'
Plug 'humanoid-colors/vim-humanoid-colorscheme'
Plug 'ghifarit53/tokyonight-vim'
Plug 'gustavo0197/vim-theme'

call plug#end()
