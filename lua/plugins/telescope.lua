require('telescope').setup{
  file_ignore_patterns = { ".git" }
}

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
