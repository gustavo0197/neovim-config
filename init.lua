map = vim.api.nvim_set_keymap

options = { noremap = true }

require('plugins')
require('basic')
require('plugins-config')

-- export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,build/*,dist/*,build-dev/*,.parcel-cache/*,.cache/*}"'
