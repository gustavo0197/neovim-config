-- Plugins installed
vf = require('vfuncs')
vf.plug.begin(vf.stdpath('data') .. '/plugged')

-- Plugins to install here
vim.cmd("Plug 'vim-airline/vim-airline'") -- Custom status bar
vim.cmd("Plug 'vim-airline/vim-airline-themes'")  -- Themes for airline
vim.cmd("Plug 'ervandew/supertab'") -- Suggestions

-- Intellisense and syntax highlighting
vim.cmd("Plug 'neoclide/coc.nvim', {'branch': 'release'}")
vim.g.coc_global_extensions = {'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-angular', 'coc-eslint', 'coc-snippets'}
-- Syntax hightlight
vim.cmd("Plug 'leafgarland/typescript-vim'")
vim.cmd("Plug 'maxmellon/vim-jsx-pretty'")
--Plug 'peitalin/vim-jsx-typescript'
vim.cmd("Plug 'pangloss/vim-javascript'")
vim.cmd("Plug 'joukevandermaas/vim-ember-hbs'") -- Plugin for HBS files
vim.cmd("Plug 'jparise/vim-graphql'") -- GraphQL plugin

vim.cmd("Plug 'tpope/vim-surround'")
vim.cmd("Plug 'jiangmiao/auto-pairs'") -- Complete '', (), {} or []
vim.cmd("Plug 'preservim/nerdcommenter'") -- Create comments
vim.cmd("Plug 'haya14busa/incsearch.vim'") -- A better searcher
vim.cmd("Plug 'airblade/vim-gitgutter'") -- Git plugin
vim.cmd("Plug 'tpope/vim-fugitive'") -- Git plugin
vim.cmd("Plug 'mattn/emmet-vim'") -- Emmet for html
vim.cmd("Plug 'matze/vim-move'") -- Move block of code
vim.cmd("Plug 'APZelos/blamer.nvim'")
vim.cmd("Plug 'preservim/tagbar'")
vim.cmd("Plug 'Yggdroot/indentLine'")
vim.cmd("Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }")
vim.cmd("Plug 'junegunn/fzf.vim'")
vim.cmd("Plug 'ryanoasis/vim-devicons'")
vim.cmd("Plug 'SirVer/ultisnips'")
vim.cmd("Plug 'honza/vim-snippets'")
vim.cmd("Plug 'liuchengxu/vim-which-key'")
vim.cmd("Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }")
vim.cmd("Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}")
vim.cmd("Plug 'voldikss/vim-floaterm'")
vim.cmd("Plug 'derekwyatt/vim-scala'")
vim.cmd("Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }")

-- Some themes
vim.cmd("Plug 'ayu-theme/ayu-vim'")
vim.cmd("Plug 'humanoid-colors/vim-humanoid-colorscheme'")
vim.cmd("Plug 'ghifarit53/tokyonight-vim'")
vim.cmd("Plug 'gustavo0197/vim-theme'")
vim.cmd("Plug 'sonph/onehalf', { 'rtp': 'vim' }")

vf.plug['end']()

-- TODO require config files here
require('plugins.coc')