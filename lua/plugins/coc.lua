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
-- map('n', '<silent> K', ':call <SID>show_documentation()<CR>', { silent = true })
-- nnoremap <silent> K :call <SID>show_documentation()<CR>

--[[ function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction ]]

vim.g.coc_snippet_next = '<c-l>'
vim.g.coc_snippet_prev = '<c-h>'
-- nnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
-- nnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"
-- inoremap <silent><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" : "\<c-j>"
-- inoremap <silent><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" : "\<c-k>"
-- vnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
-- vnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"

-- Snippets
--imap <C-l> <Plug>(coc-snippets-expand)
