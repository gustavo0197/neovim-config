local map = vim.api.nvim_set_keymap

vim.g.blamer_enabled = 0
vim.g.blamer_delay = 500
vim.g.blamer_prefix = ' > '

map('n', '<leader>gbt', ':BlamerToggle<CR>', { noremap = true })
