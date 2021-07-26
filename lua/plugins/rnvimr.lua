local map = vim.api.nvim_set_keymap
-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1

map('n', '<space>rr', ':RnvimrToggle<CR>', {})
