local map = vim.api.nvim_set_keymap

options = { noremap = true }

map('n', '<Leader>b', ':TagbarToggle<CR>', options)
