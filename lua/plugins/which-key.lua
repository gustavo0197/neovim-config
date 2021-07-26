local map = vim.api.nvim_set_keymap

options = { noremap = true, silent = true }

map('n', '<leader>', ':WhichKey \'<Space>\'<CR>', options)
