local map = vim.api.nvim_set_keymap

--==================
--|  Basic config  |
--==================
vim.cmd('set title')
vim.cmd('set number')
vim.cmd('set nobackup')
vim.cmd('set nowritebackup')
vim.cmd('set cursorline')
vim.cmd('set colorcolumn=120')
vim.cmd('set textwidth=120')
vim.cmd('set wrapmargin=2')

vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftround')
vim.cmd('set expandtab')
vim.cmd('set noshowmode')  -- Don't show the current status
vim.cmd('set guifont=Hack')
vim.cmd('set autoread')

vim.cmd('set ignorecase')
vim.cmd('set spelllang=en,es')

vim.cmd('set termguicolors')
vim.cmd('set background=dark')
vim.cmd('set updatetime=250')
vim.cmd('colorscheme jellybeans')

--==============
--|  Mappings  |
--==============

options = { noremap = true }

map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

-- Save using leader + s
map('n', '<leader>s', ':w<CR>', options)
-- Delete buffer
map('n', '<leader>q', ':bd<CR>', options)
-- Quit vim
map('n', '<leader>\'', ':qa!<CR>', options)
-- Close file
map('n', '<leader>,', ':q<CR>', options)
-- New tab
map('n', '<leader>tn', ':tabnew<CR>', options)
-- Horizontal resize
map('n', '<leader>hr', ':resize ', options)
-- Vertical resize
map('n', '<leader>vr', ':vertical resize ', options)
-- Vertical split
map('n', '<leader>vs', ':vsplit<CR>', options)
-- Horizontal split
map('n', '<leader>hs', ':split<CR>', options)
-- Move tab
map('n', '<leader>tm', ':tabmove ', options)
-- Paste
map('i', '<C-v>', '<ESC>"+pa>', options)
-- Copy
map('v', '<C-c>', '"+y', options)
-- Cut
map('v', '<C-d>', '"+d', options)
-- Change shiftwidth
map('n', '<leader>csw', ':set shiftwidth=', options)

-- nnoremap <leader>l :source ~/development/vim-theme/colors/vivid.vim<CR>
map('n', '<leader>ob', ':Buffers<CR>', options)
map('n', '<C-p>', ':Files<CR>', options)
map('n', '<C-i>', ':Ag<CR>', options)
-- Searcher
-- map('', '/ ', '<Plug>(incsearch-forward)', options)
map('', '? ', '<Plug>(incsearch-backward)', options)
map('n', '<Esc><Esc>', ':<C-u>nohlsearch<CR>', options)

-- Buffer
map('n', '≤', ':BufferPrevious<CR>', { noremap = true, silent = true })
map('n', '≥', ':BufferNext<CR>', { noremap = true, silent = true })
map('n', '¯', ':BufferMovePrevious<CR>', { noremap = true, silent = true })
map('n', '˘', ':BufferMoveNext<CR>', { noremap = true, silent = true })

-- Vim yat theme development purposes
-- map('n', '<leader>l', ':source /home/gustavo/develop/gensoft/vim-theme/colors/yat.vim<CR>', options)
-- nnoremap <leader>l :source /home/gustavo/develop/gensoft/vim-theme/colors/yat.vim<CR>
