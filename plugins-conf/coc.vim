" ================
" |  Coc config  |
" ================
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-g> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-g>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-h>'
nnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
nnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"
inoremap <silent><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" : "\<c-j>"
inoremap <silent><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" : "\<c-k>"
vnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1, 1) : "\<c-j>"
vnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0, 1) : "\<c-k>"

" Snippets
"imap <C-l> <Plug>(coc-snippets-expand)
