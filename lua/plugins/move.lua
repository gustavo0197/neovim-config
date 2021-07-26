local map = vim.api.nvim_set_keymap

options = { noremap = true }
vim.g.move_map_keys = 0

map('n', '<C-Down>', '<Plug>MoveBlockDown', options)
map('n', '<C-Up>', '<Plug>MoveBlockUp', options)
-- map <C-Left> <Plug>MoveBlockLeft
-- map <C-Right> <Plug>MoveBlockRight