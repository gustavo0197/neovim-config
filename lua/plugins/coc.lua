local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- ================
-- |  Coc config  |
-- ================
-- nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
-- nnoremap <nowait><expr> <C-g> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-g>"

-- GoTo code navigation.
map('n', 'gd', '<Plug>(coc-definition)', { silent = true })
map('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Symbol renaming.
map('n', '<leader>rn', '<Plug>(coc-rename)', {})

-- Use K to show documentation in preview window.
-- map('n', 'K', ':call CocActionAsync("doHover")<CR>', { silent = true, noremap = true })
map('n', 'K', ':lua showDocumentation()<CR>', { silent = true, noremap = true })
-- nnoremap <silent> K :call <SID>show_documentation()<CR>

function showDocumentation()
  local filetype = vim.bo.filetype

  if filetype == 'vim' or filetype == 'help' then
    vim.api.nvim_command('h ' .. filetype)
  elseif vim.fn["coc#rpc#ready"]() then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command(
      "!" .. vim.bo.keywordprg .. " " .. vim.fn.expand("<cword>")
    )
  end
end

--[[ function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction ]]

function scrollDown()
  if vim.fn["coc#float#has_scroll"]() then
    vim.fn["coc#float#scroll"](1, 1)
  else
    vim.api.nvim_command("<C-j>")
  end
end

function scrollUp()
  if vim.fn["coc#float#has_scroll"]() then
    vim.fn["coc#float#scroll"](0, 1)
  else
    vim.api.nvim_command("<C-k>")
  end
end

vim.g.coc_snippet_next = '<c-l>'
vim.g.coc_snippet_prev = '<c-h>'
-- map('n', '<C-j>', ':lua scrollDown()<CR>', { noremap = true, silent = true })
map('n', '<C-j>', 'coc#float#scroll(1, 1)', { noremap = true, silent = true, expr = true })
-- map('i', '<C-j>', ':lua scrollDown()<CR>', { noremap = false, silent = false, nowait = true })
-- map('v', '<C-j>', ':lua scrollDown()<CR>', { noremap = true, silent = true })
map('n', '<C-k>', 'coc#float#scroll(0, 1)', { noremap = true, silent = true, expr = true })
-- map('i', '<C-k>', ':lua scrollUp()<CR>', { noremap = false })
-- map('v', '<C-k>', ':lua scrollUp()<CR>', { noremap = true, silent = true })

-- map('n', '<C-j>', '[[coc#float#has_scroll() ? coc#float#scroll(1, 1) : "<C-j>"]]', { noremap = true, silent = true, expr = true })
-- map('n', '<C-k>', '[[coc#float#has_scroll() ? coc#float#scroll(0, 1) : "<C-k>"]]', { noremap = true, silent = true, expr = true })
-- nnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
-- nnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"
-- inoremap <silent><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" : "\<c-j>"
-- inoremap <silent><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" : "\<c-k>"
-- vnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
-- vnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"

-- Snippets
--imap <C-l> <Plug>(coc-snippets-expand)