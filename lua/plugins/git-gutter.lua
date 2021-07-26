local map = vim.api.nvim_set_keymap

options = { noremap = true }
vim.g.gitgutter_highlight_linenrs = 0

map('n', '<leader>hf', ':GitGutterFold<CR>', options)
map('n', '<leader>hlh', ':GitGutterLineHighlightsToggle<CR>', options)
map('n', '<leader>hlnh', ':GitGutterLineNrHighlightsToggle<CR>', options)