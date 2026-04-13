nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Telescope
nnoremap ff :Telescope find_files<CR>
nnoremap fg :Telescope live_grep<CR>
nnoremap fb :Telescope buffers<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Confirm completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" LSP-like mappings
nmap <silent> de <Plug>(coc-definition)
nmap <silent> td <Plug>(coc-type-definition)
nmap <silent> im <Plug>(coc-implementation)
nmap <silent> re <Plug>(coc-references)

nmap <silent> K :call CocActionAsync('doHover')<CR>
nmap <leader> rn <Plug>(coc-rename)
nmap <leader> ca <Plug>(coc-codeaction)

" Diagnostics
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)


