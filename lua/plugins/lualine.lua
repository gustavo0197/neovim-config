require('lualine').setup {
  options = {
    theme = 'auto',
    icons_enabled = true,
    always_divide_middle = true
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}
